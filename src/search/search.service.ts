import { Injectable } from '@nestjs/common';
import { ProductEntity } from '../product/entities/product.entity';
import axios from 'axios';
import { NlpService } from '../nlp/nlp.service';
import { ProductService } from '../product/product.service';
import { UserEntity } from 'src/user/entities/user.entity';
import { CreateConversationInput } from 'src/nlp/dto/create-conversation.input';
import { Role } from 'src/user/user.types';
import { randomUUID } from 'crypto';
import { ElasticsearchService } from '@nestjs/elasticsearch';
import { SearchProductsResponse } from './dto/SearchProductsResponse';
import { ChatOutput } from 'src/nlp/dto/chat.output';
@Injectable()
export class SearchService {
  constructor(
    private nlpService: NlpService,
    private readonly elasticsearchService: ElasticsearchService,
  ) {}

  async searchProductsPipeline(
    userConversation: string,
    user?: UserEntity,
  ): Promise<SearchProductsResponse> {
    try {
      // REGISTRAR ESSA CONVERSA NO BD E RETORNAR NO SERVIÇO DE NLP O ID DA CONVERSATION;
      let conversation_id = randomUUID() as string;
      if (user) {
        const conversationInput: CreateConversationInput = {
          title: userConversation,
          user_id: user.id,
          user_type: Role.CONSUMER,
        };

        conversation_id =
          await this.nlpService.registerConversation(conversationInput);
        await this.nlpService.createSession(conversation_id);
      }

      const conversation: ChatOutput = await this.nlpService.chatMessage(
        conversation_id,
        userConversation,
      );

      const products: ProductEntity[] = await this.searchProducts(
        conversation.keywords,
      );

      const result = {
        products: products,
        chatResponse: conversation.conversation,
      };

      return result;
    } catch (error) {
      console.log(error);
    }
  }

  async searchProducts(searchKeywords: string[]): Promise<ProductEntity[]> {
    try {
      const response = await this.elasticsearchService.search({
        index: 'product',
        body: {
          query: {
            bool: {
              should: [
                {
                  terms: { keywords: searchKeywords },
                },
                {
                  multi_match: {
                    query: searchKeywords.join(' '),
                    fields: ['title', 'description'],
                    type: 'best_fields',
                  },
                },
              ],
              minimum_should_match: 1,
            },
          },
        },
      });

      const hits = response.body;

      console.log(hits);

      const products: ProductEntity[] = hits.map((hit: any) => ({
        id: hit._source.id,
      }));

      return products;
    } catch (error) {
      console.error('Error searching products:', error);
      throw new Error('Failed to search products');
    }
  }

  async deleteProduct(id: string): Promise<string | void> {
    try {
      await this.elasticsearchService.deleteByQuery({
        index: 'product',
        body: {
          query: {
            match: { id },
          },
        },
      });
      return id;
    } catch (error) {
      console.error('Error deleting product from Elasticsearch:', error);
    }
  }

  async updateDocumentByQuery(
    id: string,
    newTitle: string,
    newBrand: string,
    newDescription: string,
    newKeywords: string[],
  ): Promise<string | void> {
    try {
      await this.elasticsearchService.updateByQuery({
        index: 'product',
        body: {
          query: {
            match: {
              id,
            },
          },
          script: {
            source: `
              ctx._source.title = params.newTitle;
              ctx._source.brand = params.newBrand;
              ctx._source.description = params.newDescription;
              ctx._source.keywords = params.newKeywords;
            `,
            lang: 'painless',
            params: {
              newTitle,
              newBrand,
              newDescription,
              newKeywords,
            },
          },
        },
      });
      return id;
    } catch (error) {
      console.error('Error updating product in Elasticsearch:', error);
    }
  }
}
