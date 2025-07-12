import { Injectable } from '@nestjs/common';
import axios from 'axios';
import { PrismaService } from 'src/prisma/prisma.service';
import { UserService } from 'src/user/user.service';
import { CreateConversationInput } from './dto/create-conversation.input';
import { ChatOutput } from './dto/chat.output';

interface KeywordsData {
  keywords: string[];
  response: string;
}

interface GraphQLResponse {
  data: {
    keywords: KeywordsData;
  };
}

@Injectable()
export class NlpService {
  constructor(
    private userService: UserService,
    private readonly prismaService: PrismaService,
  ) {}

  async registerConversation(data: CreateConversationInput): Promise<string> {
    // Como o usuário pode utilizar o chat mesmo deslogado. Só vai salvar a conversa
    // se estiver logado.
    try {
      await this.userService.existsById(data.user_id);
      const conversation = await this.prismaService.conversation.create({
        data: {
          title: data.title,
          chat_history: undefined,
          keywords: undefined,
          userId: data.user_id,
          userType: data.user_type,
        },
      });
      await this.createSession(conversation.id);
      return conversation.id;
    } catch (error) {
      console.log(error);
    }
  }
  async chatMessage(
    conversation_id: string,
    conversation: string,
  ): Promise<ChatOutput> {
    try {
      const query = `
        query GetKeywords($conversation: String!, $sessionId: String!) {
          keywords(conversation: $conversation, sessionId: $sessionId) { 
            keywords
            response
          }
        }
      `;

      const variables = {
        conversation,
        sessionId: conversation_id,
      };

      const response = await axios.post<GraphQLResponse>(process.env.NLP_URL, {
        query,
        variables,
      });

      const chat: ChatOutput = {
        keywords: response.data.data.keywords.keywords || [],
        response: response.data.data.keywords.response || '',
      };

      return chat;
    } catch (error) {
      console.error('Error when trying to get chat', error);
      return {
        keywords: [],
        response: '',
      };
    }
  }

  // método: Buscar todas as conversations do usuário
  // o método recebe o id do usuário e retorna todas as conversations dele
  async searchUserConversations(userId: string) {
    try {
      await this.userService.existsById(userId);
      return await this.prismaService.conversation.findMany({
        where: { userId: userId },
      });
    } catch (error) {
      console.log(error);
    }
  }

  // método: Buscar uma conversation (especifica) existente
  // o método recebe o id do usuário e o titulo da busca
  async searchConversationByTitle(userId: string, conversationTitle: string) {
    try {
      await this.userService.existsById(userId);
      return await this.prismaService.conversation.findFirst({
        where: { userId: userId, title: conversationTitle },
      });
    } catch (error) {
      console.log(error);
    }
  }

  async createSession(sessionId: string) {
    try {
      const query = `
        mutation {
          createSession(sessionId: "${sessionId}"){
            success
            errors
            sessionId
          }
        }
      `;
      const response = await axios.post(process.env.NLP_URL, {
        query,
      });
      return response;
    } catch (error) {
      console.log(`Failed when create session: ${error}`);
    }
  }
}
