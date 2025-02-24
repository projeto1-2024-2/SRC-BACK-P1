import { Injectable } from '@nestjs/common';
import axios from 'axios';

@Injectable()
export class SearchService {
  async searchProducts(keywords: string[]) {
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
