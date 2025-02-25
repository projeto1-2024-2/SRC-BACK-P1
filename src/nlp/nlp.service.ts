import { Injectable } from '@nestjs/common';
import { Conversation } from '@prisma/client';
import axios from 'axios';

@Injectable()
export class NlpService {
  async getKeywordsByConversation(conversation: string) {
    try {
      const query = `
        query {
            keywords(conversation: ${JSON.stringify(conversation)}) { 
              keywords
            }
        }
      `;
      const response = await axios.post(process.env.NLP_URL, {
        query,
      });
      return response.data.data.keywords;
    } catch (error) {
      console.log(error);
    }
  }
}
