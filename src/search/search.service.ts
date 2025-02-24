import { forwardRef, Inject, Injectable } from '@nestjs/common';
import { ProductEntity } from '../product/entities/product.entity';
import axios from 'axios';
import { NlpService } from 'src/nlp/nlp.service';
import { ProductService } from 'src/product/product.service';

@Injectable()
export class SearchService {
  constructor(
    private nplService: NlpService,
    @Inject(forwardRef(() => ProductService))
    private productService: ProductService,
  ) {}

  async searchProductsPipeline(conversation: string) {
    try {
      // FIXME: estou utilizando as keywords chumbadas pq meu pc quase fritou com 6 containers rodando + o modelo de pln
      //const keywords =
      //  await this.nplService.getKeywordsByConversation(conversation);
      const keywords = ['Mouse'];

      const products_id: { id: string }[] =
        await this.searchProductsElasticSearch(keywords);

      const result: ProductEntity[] = await Promise.all(
        products_id.map(async (p) => await this.productService.findById(p.id)),
      );

      return result;
    } catch (error) {
      console.log(error);
    }
  }

  async searchProductsElasticSearch(keywords: string[]) {
    try {
      const query = `
          query {
            searchProducts(keywords: ${JSON.stringify(keywords)}) { 
              id
            }
          }
        `;
      const response = await axios.post(process.env.ELASTIC_SEARCH_URL, {
        query,
      });
      return response.data.data.searchProducts;
    } catch (error) {
      console.log(error);
    }
  }

  async updateDocumentByQuery(
    id: string,
    title: string,
    brand: string,
    description: string,
  ) {
    try {
      const query = `
          mutation {
            updateProduct(
              id: ${JSON.stringify(id)},
              newBrand: ${JSON.stringify(brand)}, 
              newTitle: ${JSON.stringify(title)}, 
              newDescription: ${JSON.stringify(description)}
            )
          }
        `;
      const response = await axios.post(process.env.ELASTIC_SEARCH_URL, {
        query,
      });
      return response.data.data.updateProduct;
    } catch (error) {
      console.log(error);
    }
  }

  async deleteProduct(id: string) {
    try {
      const query = `
        mutation {
          deleteProduct(id: ${JSON.stringify(id)})
        }
        `;
      const response = await axios.post(process.env.ELASTIC_SEARCH_URL, {
        query,
      });
      return response.data.data.deleteProduct;
    } catch (error) {
      console.log(error);
    }
  }
}
