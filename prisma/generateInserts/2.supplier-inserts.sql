-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c93ab260-4943-4a56-8e84-8cdb20e906d9', 'Lago de Gonçalves, 4, Liberdade, 72811-474 Novaes da Prata / AC', 992, 'casa', 'Fernandes', '81776-761', 'da Costa', 'Mato Grosso');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c93ab260-4943-4a56-8e84-8cdb20e906d9', 847887181, -285772681, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('ab9f1b6c-c8e1-4b8b-81ca-ad89ec407f34', 'Manuela Caldeira', 'otto58@example.com', 'h@)1E&aQtw', '(021) 7915 5470', NULL, NOW(), NOW(), 'Man', 'c93ab260-4943-4a56-8e84-8cdb20e906d9');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('9a12803c-1ce5-4c5a-b4bd-a7c284ac2ed2', 'Viela Maria da Rocha, 61, Vila Suzana Segunda Seção, 71592096 Martins / PB', 94, 'comercial', 'Nogueira', '30247-836', 'Siqueira', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('9a12803c-1ce5-4c5a-b4bd-a7c284ac2ed2', -51794725, 198221030, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Montenegro S/A', '9:00-18:00', '+55 (081) 0453-1738', '03765918202', '9a12803c-1ce5-4c5a-b4bd-a7c284ac2ed2');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('a5b22677-4b09-43ad-9eec-394ac75571d0', 'ab9f1b6c-c8e1-4b8b-81ca-ad89ec407f34', '70459123661', NOW(), 'c6e076b1-5598-4245-af7d-a9d3ed87e66c');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1f3ce8da-6259-4813-8533-0196e323f45f', 'Perfume Flor de Laranjeira & Girassol 100ml Masculino - Blend de Óleo Essencial Natural + Perfume de presente', 'Perfume Flor de Laranjeira & Girassol 100ml Masculino - Blend de Óleo Essencial Natural + Perfume de presente', 'brand 79', TRUE, 38, 0.0, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1f3ce8da-6259-4813-8533-0196e323f45f', 48.59, 84.41, 27.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6a72e231-4e53-486f-803a-db6ae2dc1009', 'El Archivo de las Tormentas (Flash Relatos): Una guía de bolsillo para El camino de los reyes y Palabras radiantes (Spanish Edition)', 'El Archivo de las Tormentas (Flash Relatos): Una guía de bolsillo para El camino de los reyes y Palabras radiantes (Spanish Edition)', 'brand 43', TRUE, 99, 0.0, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6a72e231-4e53-486f-803a-db6ae2dc1009', 85.32, 78.03, 78.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('371f2687-e17c-45ea-8755-3383647bfa2e', 'Sapatos de lazer infantis para meninos e meninas de malha macia respirável sem cadarço sapatos esportivos meias infantis para meninos sapatos sem cadarço (azul marinho, 6 a 9 meses)', 'Sapatos de lazer infantis para meninos e meninas de malha macia respirável sem cadarço sapatos esportivos meias infantis para meninos sapatos sem cadarço (azul marinho, 6 a 9 meses)', 'brand 38', TRUE, 96, 29.92, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('371f2687-e17c-45ea-8755-3383647bfa2e', 59.34, 12.34, 85.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bf4109d5-a4eb-4558-a52d-fe3949df7aed', 'Pzhoais Tubo de ferramentas impermeável universal para motocicleta off-road caixa de armazenamento de capa de chuva para motocicleta', 'Pzhoais Tubo de ferramentas impermeável universal para motocicleta off-road caixa de armazenamento de capa de chuva para motocicleta', 'brand 80', TRUE, 13, 0.0, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Equipamento de Proteção para Pilotar Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bf4109d5-a4eb-4558-a52d-fe3949df7aed', 30.95, 45.98, 25.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a711f55a-e467-4a78-846c-ea993009fba8', 'ifundom 3 Pçs Estátua De Gatinho Decoração De Mesa Decoração De Casa Decoração Para Mesa Cabeça Balançando Cabeça Balançando Para Carro Cabeça Balançando Figura Artesanato De Resina', 'ifundom 3 Pçs Estátua De Gatinho Decoração De Mesa Decoração De Casa Decoração Para Mesa Cabeça Balançando Cabeça Balançando Para Carro Cabeça Balançando Figura Artesanato De Resina', 'brand 5', TRUE, 13, 164.34, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Colecionáveis e Miniaturas para Hobby', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a711f55a-e467-4a78-846c-ea993009fba8', 60.71, 37.48, 79.73);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0a2f7e76-c54b-4ce9-add8-cad6559b4984', 'WHAMVOX 2 Pçs Caixas Caixa De Ferramentas Caixa De Ferramentas Portátil Essencial Portátil Ferramentas De Mecânica De Carro Organizador Ferramentas De Armazenamento Recipiente De Ferro', 'WHAMVOX 2 Pçs Caixas Caixa De Ferramentas Caixa De Ferramentas Portátil Essencial Portátil Ferramentas De Mecânica De Carro Organizador Ferramentas De Armazenamento Recipiente De Ferro', 'brand 88', TRUE, 36, 0.0, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Organizadores de Ferramentas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0a2f7e76-c54b-4ce9-add8-cad6559b4984', 52.74, 68.11, 40.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('58d7a220-e916-4e97-8550-9cd0a946820a', 'Base do suporte da máquina de lavar Geladeira Base da máquina de lavar Suporte Suporte de pedestal antivibração para lavadora e secadora Comprimento/largura telescópico 48-66 cm Su', 'Base do suporte da máquina de lavar Geladeira Base da máquina de lavar Suporte Suporte de pedestal antivibração para lavadora e secadora Comprimento/largura telescópico 48-66 cm Su', 'brand 18', TRUE, 39, 669.99, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Eletrodomésticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('58d7a220-e916-4e97-8550-9cd0a946820a', 61.29, 92.78, 51.37);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('133d81c5-7e48-4d85-8fd0-5a33b715eeda', 'Lineco Cantos para foto Marfim sem ácido 252 peças, 1/2, 1', 'Lineco Cantos para foto Marfim sem ácido 252 peças, 1/2, 1', 'brand 76', TRUE, 88, 124.42, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Produtos para Câmeras e Foto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('133d81c5-7e48-4d85-8fd0-5a33b715eeda', 18.51, 83.8, 80.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fc4e406e-351f-4c3d-bbd4-684d12a9f58b', 'TEHAUX 44 Peças Fivela De Fichário Placa Magnética Anel De Pressão De Folhas Soltas Mini Discos De Planejador Discos De Fichário Redondo Anéis De Fichário De Volta Às Aulas Discos Abs', 'TEHAUX 44 Peças Fivela De Fichário Placa Magnética Anel De Pressão De Folhas Soltas Mini Discos De Planejador Discos De Fichário Redondo Anéis De Fichário De Volta Às Aulas Discos Abs', 'brand 87', TRUE, 53, 70.96, 'c6e076b1-5598-4245-af7d-a9d3ed87e66c', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fc4e406e-351f-4c3d-bbd4-684d12a9f58b', 96.99, 12.0, 92.06);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('58a2c7df-afc6-4532-a836-cd6a68b2fe83', 'Vila Melo, 73, Centro, 08381-870 Santos de Cunha / DF', 399, 'casa', 'Garcia da Mata', '96714-374', 'Barros Grande', 'Maranhão');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('58a2c7df-afc6-4532-a836-cd6a68b2fe83', 116027420, 1482839920, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('280e5a33-98e6-404d-8740-179777d27dbe', 'Olivia Leão', 'da-motasamuel@example.org', 'c+G(e1Pa5u', '(051) 9629 6395', NULL, NOW(), NOW(), 'Oli', '58a2c7df-afc6-4532-a836-cd6a68b2fe83');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('093a165a-35d8-4364-9b4d-71394ad5f57c', 'Setor de Montenegro, Vila Bandeirantes, 58151187 Rios / MS', 736, 'comercial', 'Caldeira', '66935-717', 'Campos do Oeste', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('093a165a-35d8-4364-9b4d-71394ad5f57c', 346347913, -1449341895, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('08da5c21-1320-4f95-af11-5bad2895db3d', 'Aragão Araújo - ME', '9:00-18:00', '41 4363 6581', '97263485109', '093a165a-35d8-4364-9b4d-71394ad5f57c');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('002ec37b-f853-4887-a2a1-26db9c0909b9', '280e5a33-98e6-404d-8740-179777d27dbe', '50981423698', NOW(), '08da5c21-1320-4f95-af11-5bad2895db3d');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('314f5f2e-644a-4c59-becb-b1352c1d253e', 'FUNOMOCYA Estojo De Armazenamento De Ferramentas Pequenas Estojo Organizador Transparente Máscara Facial 7 Peças', 'FUNOMOCYA Estojo De Armazenamento De Ferramentas Pequenas Estojo Organizador Transparente Máscara Facial 7 Peças', 'brand 71', TRUE, 99, 63.65, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('314f5f2e-644a-4c59-becb-b1352c1d253e', 22.11, 58.75, 79.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c0062af2-5f6b-43b1-af39-7e16f49d343a', 'Brinquedo sensorial para prancha de ansiedade, brinquedo de relaxamento, para autismo', 'Brinquedo sensorial para prancha de ansiedade, brinquedo de relaxamento, para autismo', 'brand 87', TRUE, 24, 0.0, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c0062af2-5f6b-43b1-af39-7e16f49d343a', 28.58, 92.21, 99.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('33eb24a2-a9f8-4f45-8bd5-ae7b5694370a', 'Grelha Churrasco Parrilla Argentina Inox e Cabo Metálico 30x40cm', 'Grelha Churrasco Parrilla Argentina Inox e Cabo Metálico 30x40cm', 'brand 75', TRUE, 98, 135.0, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Jardim e Piscina', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('33eb24a2-a9f8-4f45-8bd5-ae7b5694370a', 21.2, 81.54, 47.72);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4aad8450-dee3-4bc1-8cba-16b5fd203074', 'ＫＬＫＣＭＳ Estacas de Jardim com Pinos de Paisagem de 50 Peças para Paisagismo de de Tecido', 'ＫＬＫＣＭＳ Estacas de Jardim com Pinos de Paisagem de 50 Peças para Paisagismo de de Tecido', 'brand 63', TRUE, 94, 164.99, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4aad8450-dee3-4bc1-8cba-16b5fd203074', 30.28, 67.4, 69.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6c040969-e5a5-4f66-a8ae-ab24bb2a83c5', 'Relógio Infantil Borboleta Relógios De Brinquedo Para Crianças Adoráveis Relógio Infantil Relógio Ao Ar Livre Relógio Digital Infantil Relógio 3D De Desenho Animado Relógio', 'Relógio Infantil Borboleta Relógios De Brinquedo Para Crianças Adoráveis Relógio Infantil Relógio Ao Ar Livre Relógio Digital Infantil Relógio 3D De Desenho Animado Relógio', 'brand 78', TRUE, 59, 0.0, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6c040969-e5a5-4f66-a8ae-ab24bb2a83c5', 67.66, 96.87, 33.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('46556d46-4365-4365-8989-b087b0941b1e', 'Laptops de Tela Dupla para Win11, 16 Polegadas + 14 Polegadas 1920x1200 HD Display, para Intel para CPU Core I7, 8G RAM 1TB SSD, WiFi, BT, Bateria de 13600mAh, Modelo 2023 (Plugue dos EUA)', 'Laptops de Tela Dupla para Win11, 16 Polegadas + 14 Polegadas 1920x1200 HD Display, para Intel para CPU Core I7, 8G RAM 1TB SSD, WiFi, BT, Bateria de 13600mAh, Modelo 2023 (Plugue dos EUA)', 'brand 38', TRUE, 17, 4435.9, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Notebooks', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('46556d46-4365-4365-8989-b087b0941b1e', 41.42, 34.53, 56.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0e663a2-cda4-43df-99ca-bf2e7731e875', 'Óculos De Leitura, Masculino Feminino Anti-azul Claro Moda Retangular, Semi-sem Moldura Leitor Multi-foco Lente Hd Longe E Perto Leitor De Computador óculos De Sol,Silver,+2.00', 'Óculos De Leitura, Masculino Feminino Anti-azul Claro Moda Retangular, Semi-sem Moldura Leitor Multi-foco Lente Hd Longe E Perto Leitor De Computador óculos De Sol,Silver,+2.00', 'brand 38', TRUE, 36, 187.99, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0e663a2-cda4-43df-99ca-bf2e7731e875', 85.73, 12.24, 97.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6c29a106-2b12-4cd9-8615-3290a722df61', 'Máquina de café manual de viagem moinho de café manual moedor de café de aço inoxidável máquina de café de grande capacidade máquina de café perfeita para camping, viagens e escritório (preto 12,5 *', 'Máquina de café manual de viagem moinho de café manual moedor de café de aço inoxidável máquina de café de grande capacidade máquina de café perfeita para camping, viagens e escritório (preto 12,5 *', 'brand 54', TRUE, 40, 1259.99, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6c29a106-2b12-4cd9-8615-3290a722df61', 85.56, 12.09, 68.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bd6469c8-be99-45da-8f2b-c3694cfe1924', 'Batente Porta Pivotante Magnético Íma Prendedor Trava Porta Youtek cor:prata', 'Batente Porta Pivotante Magnético Íma Prendedor Trava Porta Youtek cor:prata', 'brand 16', TRUE, 36, 49.9, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Utensílios de Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bd6469c8-be99-45da-8f2b-c3694cfe1924', 88.61, 24.42, 42.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7ddeaf79-40d7-4aea-8d1e-162b44619b5f', 'Filtro de lente colorida, filtro de lente colorida SLR à prova de sujeira Multi Layer Nano revestimento Resistência à poeira à prova d'água para câmera(vermelho)', 'Filtro de lente colorida, filtro de lente colorida SLR à prova de sujeira Multi Layer Nano revestimento Resistência à poeira à prova d'água para câmera(vermelho)', 'brand 27', TRUE, 60, 43.17, '08da5c21-1320-4f95-af11-5bad2895db3d', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7ddeaf79-40d7-4aea-8d1e-162b44619b5f', 55.61, 72.07, 56.58);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('285deebf-67f9-4439-bb62-caaa98a68347', 'Feira de Lopes, 662, Santa Maria, 92635-141 Almeida Verde / DF', 930, 'casa', 'Cassiano', '39775-856', 'Pereira', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('285deebf-67f9-4439-bb62-caaa98a68347', -801915030, -839125126, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4a6ebb0d-1bf8-4c7d-bedb-8ecdd4139258', 'Bruno Silveira', 'joao-vitor93@example.org', '&6SMjvgZg6', '41 6542-1011', NULL, NOW(), NOW(), 'Bru', '285deebf-67f9-4439-bb62-caaa98a68347');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('189f10c4-e4e5-47ec-a8de-edbbe00f2555', 'Distrito de Guerra, 662, Estrela Do Oriente, 09780-805 Oliveira Verde / SP', 225, 'comercial', 'Costa do Norte', '39063-794', 'Ribeiro da Praia', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('189f10c4-e4e5-47ec-a8de-edbbe00f2555', 730923061, 511978817, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('65883ce5-2c15-4660-bef8-447ada7a71cf', 'Pereira', '9:00-18:00', '+55 (071) 4142 5374', '95148763264', '189f10c4-e4e5-47ec-a8de-edbbe00f2555');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('17f96566-12e7-4467-b0ad-1578973a5714', '4a6ebb0d-1bf8-4c7d-bedb-8ecdd4139258', '71859326021', NOW(), '65883ce5-2c15-4660-bef8-447ada7a71cf');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0ef42fc2-7e4a-485e-b48e-6391c2293d97', 'Football Cup 2019', 'Football Cup 2019', 'brand 64', TRUE, 67, 0.0, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0ef42fc2-7e4a-485e-b48e-6391c2293d97', 26.25, 41.7, 81.1);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('52415882-2c2f-4105-b601-10191c09c8a9', 'SECFOU 2 Pçs Raspador De Língua Escova De Dentes Limpador De Metal Raspador De Língua De Plástico Limpador De Raspador De Língua Oral Língua Limpa Limpador De Língua Adulto Escova De', 'SECFOU 2 Pçs Raspador De Língua Escova De Dentes Limpador De Metal Raspador De Língua De Plástico Limpador De Raspador De Língua Oral Língua Limpa Limpador De Língua Adulto Escova De', 'brand 5', TRUE, 93, 76.58, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Produtos de Higiene Bucal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('52415882-2c2f-4105-b601-10191c09c8a9', 98.07, 81.01, 73.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('61c66efe-b635-48cd-a63a-6e2c78bfd493', 'BETOOKY 4 Peças Porta Absorvente De Batom Bolsa De Almofada Bolsa De Absorvente Bolsa De Armazenamento De Absorventes Para Almofadas Sacos De Período Para Meninas Adolescentes Suporte De', 'BETOOKY 4 Peças Porta Absorvente De Batom Bolsa De Almofada Bolsa De Absorvente Bolsa De Armazenamento De Absorventes Para Almofadas Sacos De Período Para Meninas Adolescentes Suporte De', 'brand 65', TRUE, 77, 64.03, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('61c66efe-b635-48cd-a63a-6e2c78bfd493', 66.41, 29.33, 92.04);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c7ec7332-a00d-4945-bf10-6bef7cdcee34', 'Toddmomy 10 Pçs Conjunto De Utensílios De Cozinha Em Miniatura Para Comida E Brincadeiras Para Crianças Casas De Bonecas Para Crianças Conjunto De Pratos Para Crianças Mini Pratos', 'Toddmomy 10 Pçs Conjunto De Utensílios De Cozinha Em Miniatura Para Comida E Brincadeiras Para Crianças Casas De Bonecas Para Crianças Conjunto De Pratos Para Crianças Mini Pratos', 'brand 16', TRUE, 22, 60.79, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Bonecas e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c7ec7332-a00d-4945-bf10-6bef7cdcee34', 43.28, 95.79, 92.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e18598f4-025e-4e7b-9fbd-c1ebc24ede4c', 'Relógio Technos Masculino Riviera Prata - 2117LEN/1P', 'Relógio Technos Masculino Riviera Prata - 2117LEN/1P', 'brand 87', TRUE, 97, 499.0, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e18598f4-025e-4e7b-9fbd-c1ebc24ede4c', 88.95, 38.39, 75.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d671ad35-5775-4db6-8d42-dd3ca1aeb623', 'EVA Soft Shooting Ball Clip Dardos e Plástico Gun Toy Cartridge Holder Combo Pack para Nerf Elite Series', 'EVA Soft Shooting Ball Clip Dardos e Plástico Gun Toy Cartridge Holder Combo Pack para Nerf Elite Series', 'brand 85', TRUE, 78, 73.79, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Esportes e Brincadeiras ao Ar Livre', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d671ad35-5775-4db6-8d42-dd3ca1aeb623', 97.65, 60.61, 17.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bba419c5-9131-48e1-a311-251bc0e91e2c', 'Dispositivos de Maca Extensor Peniano para Homens Sistema de Alongamento de Aumento Masculino Suporte de Treinamento Ajustável Fácil de Remover Massagem Dispositivo de Tração', 'Dispositivos de Maca Extensor Peniano para Homens Sistema de Alongamento de Aumento Masculino Suporte de Treinamento Ajustável Fácil de Remover Massagem Dispositivo de Tração', 'brand 94', TRUE, 97, 68.36, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bba419c5-9131-48e1-a311-251bc0e91e2c', 59.41, 72.63, 25.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ea0e2d13-e428-45d5-8bb7-fa5da1383e69', 'Filtro de trem Traon e peças 4R44E 4R55E 5R55E 5R55E 5R44E 2 kit de solenoide de substituição para', 'Filtro de trem Traon e peças 4R44E 4R55E 5R55E 5R55E 5R44E 2 kit de solenoide de substituição para', 'brand 13', TRUE, 7, 661.23, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ea0e2d13-e428-45d5-8bb7-fa5da1383e69', 30.5, 14.12, 73.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1655f028-a4a0-4b6a-808e-e001ecedd3f1', 'CARREGADOR RÁPIDON2.1A C/ 1 USB SMARTFONE', 'CARREGADOR RÁPIDON2.1A C/ 1 USB SMARTFONE', 'brand 1', TRUE, 9, 14.99, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Carregadores de Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1655f028-a4a0-4b6a-808e-e001ecedd3f1', 23.65, 39.54, 30.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2b1a0917-81b8-4137-9046-db25ef8c1182', 'Simulation Hydroponic Pl, decorações de aquário de forma realista não tóxica, silicone seguro durável para aquário para decoração', 'Simulation Hydroponic Pl, decorações de aquário de forma realista não tóxica, silicone seguro durável para aquário para decoração', 'brand 40', TRUE, 54, 52.01, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2b1a0917-81b8-4137-9046-db25ef8c1182', 48.81, 45.3, 69.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ce089ed0-f4d2-4f3d-8d2c-d74e9adf9bc8', 'Óculos de sol redondos espelhados unissex com armação preta e lentes cinzas', 'Óculos de sol redondos espelhados unissex com armação preta e lentes cinzas', 'brand 41', TRUE, 64, 80.0, '65883ce5-2c15-4660-bef8-447ada7a71cf', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ce089ed0-f4d2-4f3d-8d2c-d74e9adf9bc8', 36.56, 27.15, 30.23);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b555be15-d65c-44c7-aae7-d46d6d8ea301', 'Pátio de Guerra, Bela Vitoria, 53730-124 Sales / PB', 494, 'casa', 'Cirino', '54556-272', 'da Cunha', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b555be15-d65c-44c7-aae7-d46d6d8ea301', -444689187, 1131307688, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('479f85e2-44ff-4484-a674-1d9d07bcdbad', 'Valentina Garcia', 'henriquerodrigues@example.org', 'D8DDNj#n#D', '(011) 2253-2830', NULL, NOW(), NOW(), 'Val', 'b555be15-d65c-44c7-aae7-d46d6d8ea301');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('765a548d-2819-4767-8e12-e58d86e2a47a', 'Aeroporto Pedro Henrique Mendonça, 15, Alto Caiçaras, 49861-055 Moura dos Dourados / AC', 729, 'comercial', 'Farias do Galho', '64483-884', 'da Cruz', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('765a548d-2819-4767-8e12-e58d86e2a47a', -824172153, -748263863, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Aparecida - ME', '9:00-18:00', '+55 71 2403-7432', '97681243500', '765a548d-2819-4767-8e12-e58d86e2a47a');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('9155bc7c-24e5-4591-8b35-cf877c5ca315', '479f85e2-44ff-4484-a674-1d9d07bcdbad', '49130728622', NOW(), 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c3524a33-b0db-4a4a-8273-91b6f14b2730', 'Conjunto Infantil Casaco e Calça Moletinho Nini & Bambini Dog Preto e Mescla', 'Conjunto Infantil Casaco e Calça Moletinho Nini & Bambini Dog Preto e Mescla', 'brand 55', TRUE, 38, 149.9, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c3524a33-b0db-4a4a-8273-91b6f14b2730', 30.84, 88.22, 15.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0100a0c2-1b8f-4294-a465-fb2e49527d24', 'Ventilador De Teto Lux 2008 Preto Texturizado Com 3 Pás MDF Potente Silencioso Luxo Infinity - 110v ou 220v (220v Branco Texturizado 3 Pás 6000k)', 'Ventilador De Teto Lux 2008 Preto Texturizado Com 3 Pás MDF Potente Silencioso Luxo Infinity - 110v ou 220v (220v Branco Texturizado 3 Pás 6000k)', 'brand 56', TRUE, 39, 599.0, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Ar e Ventilação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0100a0c2-1b8f-4294-a465-fb2e49527d24', 13.63, 62.03, 33.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0cdd8956-6ded-4fbc-8918-616dd21d18c1', 'Jiameajani 8 laranjas copo de pudim arte molde de bolo forma de bolo molde de silicone 3D mousse molde de silicone branco seguro para alimentos', 'Jiameajani 8 laranjas copo de pudim arte molde de bolo forma de bolo molde de silicone 3D mousse molde de silicone branco seguro para alimentos', 'brand 15', TRUE, 81, 0.0, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Assadeiras, Fôrmas e Recipientes de Forno', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0cdd8956-6ded-4fbc-8918-616dd21d18c1', 90.56, 19.89, 56.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b70beccb-1eb7-44e4-9038-e9fc1a813f0d', 'David Bowie - Metrobolist (Aka The Man Who Sold The World)', 'David Bowie - Metrobolist (Aka The Man Who Sold The World)', 'brand 14', TRUE, 50, 55.28, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'CD e Vinil', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b70beccb-1eb7-44e4-9038-e9fc1a813f0d', 80.97, 68.0, 14.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('99f5dbed-a058-4a2e-be54-15c334b939b0', 'JOYSTICK CONTROLE PC USB VIBRATION RASPBERRY TV BOX 01301 Cor:Preto', 'JOYSTICK CONTROLE PC USB VIBRATION RASPBERRY TV BOX 01301 Cor:Preto', 'brand 41', TRUE, 23, 35.9, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('99f5dbed-a058-4a2e-be54-15c334b939b0', 10.2, 34.58, 66.83);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('839ce34a-aacd-47b5-b49b-c823ccb44752', 'Bothyi 2 peças bases de proteção do capacete acessórios de proteção do capacete bases reparo do capacete esquerda e direita substitui', 'Bothyi 2 peças bases de proteção do capacete acessórios de proteção do capacete bases reparo do capacete esquerda e direita substitui', 'brand 52', TRUE, 34, 91.99, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Equipamento de Proteção para Pilotar Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('839ce34a-aacd-47b5-b49b-c823ccb44752', 65.09, 19.09, 35.29);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('364c0159-51c7-4eba-bc8d-ea807e30f0aa', 'Hidratação da Água,Sacos água potável para esportes ao ar livre à prova vazamentos - Mochila 2000ml para reservatórios água potável para caminhadas com escala ponta,', 'Hidratação da Água,Sacos água potável para esportes ao ar livre à prova vazamentos - Mochila 2000ml para reservatórios água potável para caminhadas com escala ponta,', 'brand 58', TRUE, 34, 0.0, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('364c0159-51c7-4eba-bc8d-ea807e30f0aa', 17.82, 53.17, 22.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8183ef9c-b0be-44d7-aa58-c5fad7637e4b', 'Oleo Ozonizado de Girassol Cosmético 30ml Estética da Pele', 'Oleo Ozonizado de Girassol Cosmético 30ml Estética da Pele', 'brand 96', TRUE, 1, 44.22, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8183ef9c-b0be-44d7-aa58-c5fad7637e4b', 77.58, 87.0, 31.32);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3ee8fe10-7aca-49c8-ae9a-9e2762a26482', 'Camiseta Ken de manga curta para meninos, gola redonda, para uso diário, Matt H Scarlet Sage 21, Medium', 'Camiseta Ken de manga curta para meninos, gola redonda, para uso diário, Matt H Scarlet Sage 21, Medium', 'brand 23', TRUE, 44, 209.0, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3ee8fe10-7aca-49c8-ae9a-9e2762a26482', 61.08, 33.8, 17.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b02ee6eb-4ff7-44e8-8b4a-afd97ec310ae', 'Marcador Permanente Ponta Dupla - Gramp Line - Preto', 'Marcador Permanente Ponta Dupla - Gramp Line - Preto', 'brand 54', TRUE, 92, 4.15, 'ab1e03b4-43c0-4e6f-89e1-86d31b5cad94', 'Materiais de Escrita e Correção', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b02ee6eb-4ff7-44e8-8b4a-afd97ec310ae', 10.25, 88.95, 84.6);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('6923ad15-d8e3-416d-a15a-8f74547007e2', 'Aeroporto Barros, 40, Conjunto Floramar, 56104512 Nogueira do Norte / PI', 531, 'casa', 'da Cruz', '70158-963', 'Aragão', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('6923ad15-d8e3-416d-a15a-8f74547007e2', -792759631, -1602761979, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('495fb211-6c61-48b5-b0c3-2e6fd3dc9583', 'Thomas Vieira', 'dda-cunha@example.org', '2655YZlQ%)', '+55 21 0672 4127', NULL, NOW(), NOW(), 'Tho', '6923ad15-d8e3-416d-a15a-8f74547007e2');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('29005483-1692-44b6-9291-3c62c51c0658', 'Chácara José Jesus, 57, Bernadete, 25624756 Sales Grande / PE', 288, 'comercial', 'Dias', '41872-524', 'Fonseca', 'Pernambuco');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('29005483-1692-44b6-9291-3c62c51c0658', -104046234, 1630947079, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('0917c00c-634a-4f07-af7c-fb489db0cb62', 'Novais Ferreira Ltda.', '9:00-18:00', '84 7299 9474', '06528174911', '29005483-1692-44b6-9291-3c62c51c0658');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('03369c1c-857d-4367-8403-77613a4a79e4', '495fb211-6c61-48b5-b0c3-2e6fd3dc9583', '13825749088', NOW(), '0917c00c-634a-4f07-af7c-fb489db0cb62');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4daac00f-1281-474d-84f5-b7858b470574', 'Ferramenta para marcenaria, 30 tipos de ferramentas para marcenaria, esquadria, parada, precisão do limite de comprimento, ferramentas de medição de esquadria', 'Ferramenta para marcenaria, 30 tipos de ferramentas para marcenaria, esquadria, parada, precisão do limite de comprimento, ferramentas de medição de esquadria', 'brand 23', TRUE, 9, 58.51, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Acessórios de Ferramentas Elétricas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4daac00f-1281-474d-84f5-b7858b470574', 61.66, 72.86, 32.33);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('18f761fe-2e7b-4156-91b2-1eee9d975441', 'Câmera infantil, câmera selfie multifuncional com tela IPS HD de 2,4 polegadas, câmera digital infantil com suporte, câmera portátil fofa para menino de 3 4 5 6 7 8 anos', 'Câmera infantil, câmera selfie multifuncional com tela IPS HD de 2,4 polegadas, câmera digital infantil com suporte, câmera portátil fofa para menino de 3 4 5 6 7 8 anos', 'brand 100', TRUE, 99, 0.0, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Câmeras Digitais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('18f761fe-2e7b-4156-91b2-1eee9d975441', 97.53, 24.72, 52.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('57f9f89d-05fc-4ff4-8508-4e3b43844bf9', 'Graco 4Ever DLX 4 em 1, assento de carro infantil para criança, com 10 anos de uso, Zagg', 'Graco 4Ever DLX 4 em 1, assento de carro infantil para criança, com 10 anos de uso, Zagg', 'brand 11', TRUE, 82, 2999.0, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Automotivo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('57f9f89d-05fc-4ff4-8508-4e3b43844bf9', 99.81, 50.11, 53.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6d8d0b8b-caf3-4892-9392-c0d2aba9a043', 'Shorts De Ciclismo Cal?as Curtas De Permeabilidade Ao Suor, Para Bicicletas De Passeio, Mountain Bikes (xl)', 'Shorts De Ciclismo Cal?as Curtas De Permeabilidade Ao Suor, Para Bicicletas De Passeio, Mountain Bikes (xl)', 'brand 93', TRUE, 64, 56.19, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6d8d0b8b-caf3-4892-9392-c0d2aba9a043', 96.44, 31.8, 86.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5722639b-f55a-4438-bf74-126d5e614bac', 'TOPBATHY 10 sacos lenços de papel doméstico 2 camadas lenços de clenaing rosto mão boca guardanapos extração papel higiênico (80 folhas), Branco, 80 Sheets', 'TOPBATHY 10 sacos lenços de papel doméstico 2 camadas lenços de clenaing rosto mão boca guardanapos extração papel higiênico (80 folhas), Branco, 80 Sheets', 'brand 5', TRUE, 60, 0.0, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Papel Higiênico e Lenços Umedecidos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5722639b-f55a-4438-bf74-126d5e614bac', 52.98, 24.28, 34.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e18397b0-1188-4684-a5d6-e747d212d84c', 'Rolos de cabelo flexíveis e macios, sem calor Rolos de cabelo leves para todos os tipos de cabelo para a maioria das pessoas', 'Rolos de cabelo flexíveis e macios, sem calor Rolos de cabelo leves para todos os tipos de cabelo para a maioria das pessoas', 'brand 56', TRUE, 81, 83.48, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e18397b0-1188-4684-a5d6-e747d212d84c', 74.0, 95.25, 73.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('94161687-045c-4d2b-bf8b-c2ba5f8bfdad', '1 Pcbag Tecido Frisado à Mão para Grânulos Cartões de Saco Feminino Dinheiro Bolsas Transparentes Cartão Dia Ombro Vertical Tecido à Mão Tecido Feito à Mão Pérola Crossbody Strass', '1 Pcbag Tecido Frisado à Mão para Grânulos Cartões de Saco Feminino Dinheiro Bolsas Transparentes Cartão Dia Ombro Vertical Tecido à Mão Tecido Feito à Mão Pérola Crossbody Strass', 'brand 57', TRUE, 82, 72.93, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Bolsas de Mão e Ombro Femininas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('94161687-045c-4d2b-bf8b-c2ba5f8bfdad', 21.31, 68.78, 59.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('050f1d80-1761-4c65-96d3-d5318b9cb97b', 'SWOOMEY Fita De Simulação U Disco Computador Unidade USB Computador Vara De Memória Ferramentas Hacker Gravador Portátil Pen Drive 16 Gb Disco Flash Transportar Pp Plástico Equipamentos', 'SWOOMEY Fita De Simulação U Disco Computador Unidade USB Computador Vara De Memória Ferramentas Hacker Gravador Portátil Pen Drive 16 Gb Disco Flash Transportar Pp Plástico Equipamentos', 'brand 12', TRUE, 47, 102.99, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Memória e Armazenamento de Dados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('050f1d80-1761-4c65-96d3-d5318b9cb97b', 95.3, 21.92, 71.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d54f1899-54fc-4b04-886d-d42fa4a9ce30', 'Língua inglesa II (Série Universitária)', 'Língua inglesa II (Série Universitária)', 'brand 43', TRUE, 86, 31.0, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Novidades da Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d54f1899-54fc-4b04-886d-d42fa4a9ce30', 22.53, 59.07, 48.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3112de34-cb34-44fc-87dc-bd4e0a79de1d', 'Rodrigo Rocha - Constelação Familiar', 'Rodrigo Rocha - Constelação Familiar', 'brand 7', TRUE, 16, 0.0, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Audiolivros Audible', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3112de34-cb34-44fc-87dc-bd4e0a79de1d', 56.63, 61.17, 50.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6c1cfb07-c2e8-449c-9446-7cd0bb67939f', 'OSALADI 4 Conjuntos De Lâmina De Limpeza Utilitária Raspador De Limpeza De Janela Raspador De Janela Raspador De Navalha Ferramentas De Limpeza Raspador De Vidro Rodo De Tinta Rodo', 'OSALADI 4 Conjuntos De Lâmina De Limpeza Utilitária Raspador De Limpeza De Janela Raspador De Janela Raspador De Navalha Ferramentas De Limpeza Raspador De Vidro Rodo De Tinta Rodo', 'brand 95', TRUE, 10, 90.87, '0917c00c-634a-4f07-af7c-fb489db0cb62', 'Utensílios de Limpeza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6c1cfb07-c2e8-449c-9446-7cd0bb67939f', 56.85, 44.85, 37.31);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b3f8726b-4822-4699-920d-8310eac7585c', 'Chácara de Pereira, 13, Cidade Nova, 31473056 da Paz de Camargo / RJ', 899, 'casa', 'Gonçalves', '62322-243', 'da Paz de Novaes', 'Rondônia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b3f8726b-4822-4699-920d-8310eac7585c', 225445776, -1012318652, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4c347c4f-ec8e-41ab-98ba-800087b15212', 'Cauã Pires', 'aurorada-conceicao@example.net', 'V^6djFZi&k', '(051) 7331 4443', NULL, NOW(), NOW(), 'Cau', 'b3f8726b-4822-4699-920d-8310eac7585c');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('a0d6952a-0bb2-4abe-90bd-f5522d081b97', 'Esplanada Pires, 911, Jardinópolis, 82366-138 das Neves / TO', 890, 'comercial', 'Novais de Vargas', '70892-412', 'Sousa', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('a0d6952a-0bb2-4abe-90bd-f5522d081b97', 491768094, -977207326, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Santos', '9:00-18:00', '+55 11 0841 1868', '58047692194', 'a0d6952a-0bb2-4abe-90bd-f5522d081b97');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('81f4da4c-cf03-4b62-a9d6-5023a582d5c9', '4c347c4f-ec8e-41ab-98ba-800087b15212', '38590726177', NOW(), 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cb6e86a6-9025-4848-bbde-2ee290d64e6f', 'Aspirador E Lavador Carro Portátil De Alta Potência 2 em 1', 'Aspirador E Lavador Carro Portátil De Alta Potência 2 em 1', 'brand 1', TRUE, 50, 198.7, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cb6e86a6-9025-4848-bbde-2ee290d64e6f', 34.75, 12.63, 69.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ae1e94e5-8ca2-4574-9327-75cba53f31e4', 'PDP 500-134-NA-CM05 Nintendo Switch Faceoff Deluxe+ Audio Wired Controller - Purple Camo', 'PDP 500-134-NA-CM05 Nintendo Switch Faceoff Deluxe+ Audio Wired Controller - Purple Camo', 'brand 78', TRUE, 80, 218.44, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Nintendo Switch, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ae1e94e5-8ca2-4574-9327-75cba53f31e4', 63.9, 90.23, 74.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ca7e0d91-272f-4c4b-a3c3-7ce4fb3aedb9', '2x Mix Magnésio + 2x Coenzima Q10 Coq10 - Nutrigenes', '2x Mix Magnésio + 2x Coenzima Q10 Coq10 - Nutrigenes', 'brand 88', TRUE, 82, 338.25, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Vitaminas, Minerais e Suplementos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ca7e0d91-272f-4c4b-a3c3-7ce4fb3aedb9', 14.07, 76.52, 11.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a81cb45c-a97e-4d18-bc58-5e89304fd0c7', 'painel de controle da escavadeira, 135 215 330 monitor da escavadeira display claro pc botão flexível para uso industrial', 'painel de controle da escavadeira, 135 215 330 monitor da escavadeira display claro pc botão flexível para uso industrial', 'brand 9', TRUE, 72, 0.0, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Monitores de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a81cb45c-a97e-4d18-bc58-5e89304fd0c7', 54.54, 31.16, 23.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d53b8da3-97ab-4057-a084-8049a1d4fcea', 'Boys' Logo Pullover Hoodie, Charcoal, 6', 'Boys' Logo Pullover Hoodie, Charcoal, 6', 'brand 73', TRUE, 89, 343.04, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d53b8da3-97ab-4057-a084-8049a1d4fcea', 72.04, 15.91, 68.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('25e63baf-5670-4250-94ce-9a14f0f8b30f', 'DDDHL Star Suit Conjunto masculino de verão, respirável, antirrugas, duas peças, respirável, com volume, Vermelho, XXG', 'DDDHL Star Suit Conjunto masculino de verão, respirável, antirrugas, duas peças, respirável, com volume, Vermelho, XXG', 'brand 87', TRUE, 81, 0.0, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Material de Futebol', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('25e63baf-5670-4250-94ce-9a14f0f8b30f', 69.26, 41.49, 76.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3b84b98d-6c94-420f-9991-96abc960475c', 'Carrinho de bebê para gatos Carrinho de bebê para animais de estimação Carrinho de viagem Carrinho de bebê para cães pequenos Liberação, Carrinho de estimação destacável Carrinhos de be', 'Carrinho de bebê para gatos Carrinho de bebê para animais de estimação Carrinho de viagem Carrinho de bebê para cães pequenos Liberação, Carrinho de estimação destacável Carrinhos de be', 'brand 58', TRUE, 25, 1374.74, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Produtos de Passeio e Viagem para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3b84b98d-6c94-420f-9991-96abc960475c', 56.66, 99.44, 92.18);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('af5bef86-9128-4a24-aa74-bc4286aff62e', 'Fantasia Mulher Maravilha Bebê Sulamericana 911062-P', 'Fantasia Mulher Maravilha Bebê Sulamericana 911062-P', 'brand 31', TRUE, 55, 104.2, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Brinquedos para Faz de Conta e Casinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('af5bef86-9128-4a24-aa74-bc4286aff62e', 26.97, 38.14, 76.73);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('95e18bc1-771c-46c9-b6d1-5126c2b96dc1', 'Tênis New Balance Evoz v2, Masculino', 'Tênis New Balance Evoz v2, Masculino', 'brand 7', TRUE, 79, 464.45, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('95e18bc1-771c-46c9-b6d1-5126c2b96dc1', 83.69, 72.09, 71.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7ab759ed-59b5-4ead-aab9-916e9427e1fd', 'Moletom com capuz Armour Fleece 1/2 Zip, Under Armour, Masculino', 'Moletom com capuz Armour Fleece 1/2 Zip, Under Armour, Masculino', 'brand 6', TRUE, 48, 517.3, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Material de Futebol', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7ab759ed-59b5-4ead-aab9-916e9427e1fd', 13.79, 25.56, 36.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8f47f121-a4d0-4416-a2fa-d19742086057', 'Saltwater Boot Rain, Blue, 7 US Unisex Little Kid', 'Saltwater Boot Rain, Blue, 7 US Unisex Little Kid', 'brand 90', TRUE, 2, 431.82, 'f03fd1b4-f2c2-4f72-9d58-29aca155db1a', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8f47f121-a4d0-4416-a2fa-d19742086057', 36.47, 57.46, 76.74);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b9c7efed-347e-494b-aa69-f00a626c674e', 'Distrito Sales, Jatobá, 44680-574 da Cruz / RS', 610, 'casa', 'Nascimento das Flores', '82350-993', 'Barros das Flores', 'Minas Gerais');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b9c7efed-347e-494b-aa69-f00a626c674e', 276851503, 462790742, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4a234f73-c465-4bbe-baef-a57f303d4785', 'Ravi Lucca Aragão', 'da-matalorena@example.com', '_Ut341Obfx', '+55 61 1080 2752', NULL, NOW(), NOW(), 'Rav', 'b9c7efed-347e-494b-aa69-f00a626c674e');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1cb2a2d6-5183-466d-ada5-ca0ec66a24a8', 'Parque Fonseca, 16, Maravilha, 83296-261 Andrade da Praia / SE', 36, 'comercial', 'Pacheco', '75196-523', 'da Luz de Leão', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1cb2a2d6-5183-466d-ada5-ca0ec66a24a8', 844840833, -1332771587, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Vieira Garcia - ME', '9:00-18:00', '(011) 1998-6162', '27061943599', '1cb2a2d6-5183-466d-ada5-ca0ec66a24a8');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('b1bdd86b-577f-460e-91e4-01c79acbe019', '4a234f73-c465-4bbe-baef-a57f303d4785', '87206145949', NOW(), 'fc05c982-78ce-428b-8f00-c6eebad8fc73');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bcdab8f7-ba9a-4e5e-892d-63c4817db04b', '3 pcs Acrílico Máscara Chains Multi- função Óculos Óculos (Leopardo Roxo Azul)', '3 pcs Acrílico Máscara Chains Multi- função Óculos Óculos (Leopardo Roxo Azul)', 'brand 61', TRUE, 39, 92.82, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bcdab8f7-ba9a-4e5e-892d-63c4817db04b', 53.35, 66.11, 89.39);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('714089b7-32fc-4316-a500-1f4d89e39200', 'Zerodeko Guarda-Chuva De Banana Sombra De Sol Sombrillas Para Pátio Exterior Guarda-Chuvas Capa Com Zíper Capa De Guarda-Sol Para Jardim Capa De Guarda-Sol Ao Ar Livre Para Girar Capa', 'Zerodeko Guarda-Chuva De Banana Sombra De Sol Sombrillas Para Pátio Exterior Guarda-Chuvas Capa Com Zíper Capa De Guarda-Sol Para Jardim Capa De Guarda-Sol Ao Ar Livre Para Girar Capa', 'brand 37', TRUE, 70, 59.58, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('714089b7-32fc-4316-a500-1f4d89e39200', 90.63, 16.07, 99.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a4823f3e-67c8-41d5-86e6-60bc6f039e57', 'KKcare Calculadora dobrável e tablet de escrita lcd de 6 polegadas almofada de desenho digital display de 12 dígitos com caneta stylus botão de apagar para crianças adultos escritório doméstico uso escolar', 'KKcare Calculadora dobrável e tablet de escrita lcd de 6 polegadas almofada de desenho digital display de 12 dígitos com caneta stylus botão de apagar para crianças adultos escritório doméstico uso escolar', 'brand 83', TRUE, 46, 87.14, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a4823f3e-67c8-41d5-86e6-60bc6f039e57', 53.86, 27.74, 69.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7356bb09-4321-4c5b-ba8b-19738f8e742e', 'Graffiti Street Barrel Guitar Hands Pattern Nail Nipper Ring Chaveiro Abridor de Garrafas Cortador', 'Graffiti Street Barrel Guitar Hands Pattern Nail Nipper Ring Chaveiro Abridor de Garrafas Cortador', 'brand 40', TRUE, 25, 0.0, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7356bb09-4321-4c5b-ba8b-19738f8e742e', 88.51, 66.57, 16.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('75075fc3-c69a-44e2-b358-4ea34b1717bd', 'Pacote de patins,Henniu Bolsa de transporte de skate respirável para patins infantis patins em linha patins de gelo almofadas protetoras', 'Pacote de patins,Henniu Bolsa de transporte de skate respirável para patins infantis patins em linha patins de gelo almofadas protetoras', 'brand 49', TRUE, 69, 81.56, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Esportes e Brincadeiras ao Ar Livre', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('75075fc3-c69a-44e2-b358-4ea34b1717bd', 80.27, 54.37, 50.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7e06633d-3e3d-4389-9d28-12174a028b61', 'Fate of a Faux (Lord of Rathe Duet Book 2) (English Edition)', 'Fate of a Faux (Lord of Rathe Duet Book 2) (English Edition)', 'brand 90', TRUE, 71, 0.0, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7e06633d-3e3d-4389-9d28-12174a028b61', 68.47, 38.75, 37.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('02e6a2e1-a4c8-4bbc-915a-205271b6e361', 'Toyvian Brinquedos Para Banheira De Spray Mini Bonecas Para Bebês Mini Decoração Boneca Em Miniatura Banheira Boneca Para Banheira Brinquedo Para Banheira Acessório Para Boneca', 'Toyvian Brinquedos Para Banheira De Spray Mini Bonecas Para Bebês Mini Decoração Boneca Em Miniatura Banheira Boneca Para Banheira Brinquedo Para Banheira Acessório Para Boneca', 'brand 82', TRUE, 79, 52.93, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Banho, Higiene e Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('02e6a2e1-a4c8-4bbc-915a-205271b6e361', 70.94, 27.13, 21.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('78646f92-c2b1-40a5-9e9b-241842b56da2', 'Bola de basquete, WILSON NBA DRV, tamanho 18-75 cm, marrom', 'Bola de basquete, WILSON NBA DRV, tamanho 18-75 cm, marrom', 'brand 82', TRUE, 47, 137.9, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Esportes e Aventura', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('78646f92-c2b1-40a5-9e9b-241842b56da2', 84.65, 90.29, 15.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('182c7127-f0b8-4de1-b847-a96662fb6604', 'Pc Completo Cpu I5 6500 / Ssd 512gb M2 / 32gb Ddr4 + Monitor 19P Led + Teclado + Mouse + Alto Falante + Windows 11 Pro', 'Pc Completo Cpu I5 6500 / Ssd 512gb M2 / 32gb Ddr4 + Monitor 19P Led + Teclado + Mouse + Alto Falante + Windows 11 Pro', 'brand 58', TRUE, 98, 2299.9, 'fc05c982-78ce-428b-8f00-c6eebad8fc73', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('182c7127-f0b8-4de1-b847-a96662fb6604', 64.65, 56.37, 35.39);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('72baf556-db91-4442-92fd-fb6b088b41b9', 'Passarela Maria Isis Santos, 22, Califórnia, 52074-292 Farias / PR', 890, 'casa', 'Rodrigues Paulista', '29941-848', 'Viana', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('72baf556-db91-4442-92fd-fb6b088b41b9', 463610947, 635605093, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('d9e78529-c4d1-40c9-a4a7-0aff9610ba47', 'Luiza Monteiro', 'mlopes@example.org', '%Vn)sNVpr1', '(011) 3619 2244', NULL, NOW(), NOW(), 'Lui', '72baf556-db91-4442-92fd-fb6b088b41b9');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c9534a60-6e0d-46f3-a796-1ae4f6b44121', 'Vila Ravi Farias, 76, Esplanada, 55659066 Leão / MG', 560, 'comercial', 'da Mata Paulista', '80185-573', 'Cavalcante', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c9534a60-6e0d-46f3-a796-1ae4f6b44121', -421880717, 1419193501, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Sousa Cassiano - EI', '9:00-18:00', '+55 (011) 3960-8424', '18069273577', 'c9534a60-6e0d-46f3-a796-1ae4f6b44121');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('83c05e17-b71d-4c76-b0e4-3e7771a2686f', 'd9e78529-c4d1-40c9-a4a7-0aff9610ba47', '09634817203', NOW(), '6872fa14-dc55-4ffb-a4ec-118b212a9071');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('10e44ce7-1343-42c5-9804-38ea3faabf25', '2GG Mouse pad grande para jogos e laptop, almofadas pretas para mesa com teclado de policarbonato, à prova d'água e antiderrapante de borracha na parte inferior de 30 x 30 cm, 3 mm, Kanagawa Surfing', '2GG Mouse pad grande para jogos e laptop, almofadas pretas para mesa com teclado de policarbonato, à prova d'água e antiderrapante de borracha na parte inferior de 30 x 30 cm, 3 mm, Kanagawa Surfing', 'brand 37', TRUE, 2, 189.66, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Acessórios para Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('10e44ce7-1343-42c5-9804-38ea3faabf25', 81.37, 65.03, 75.1);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('677da29a-1411-487c-923a-1b14faef8774', 'Switch de rede LAN,Roteador 4G LTE WiFi Roteador sem fio de alta velocidade 300 Mbps com slot para cartão SIM 2 antenas externas pretas (versão americana)', 'Switch de rede LAN,Roteador 4G LTE WiFi Roteador sem fio de alta velocidade 300 Mbps com slot para cartão SIM 2 antenas externas pretas (versão americana)', 'brand 59', TRUE, 38, 0.0, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Roteadores, Modems e Dispositivos de Rede', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('677da29a-1411-487c-923a-1b14faef8774', 14.34, 67.0, 62.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3696527c-df13-417c-bd38-8f5b38b9d899', 'VALICLUD 10 Pçs Yoga Bebê Saco Molhado Sacos Secos Pano Fralda Saco Molhado Pequeno Saco De Fraldas Molhado Seco Saco Fraldas De Pano Para Pendurar Saco Molhado Saco De Fraldas Organizador', 'VALICLUD 10 Pçs Yoga Bebê Saco Molhado Sacos Secos Pano Fralda Saco Molhado Pequeno Saco De Fraldas Molhado Seco Saco Fraldas De Pano Para Pendurar Saco Molhado Saco De Fraldas Organizador', 'brand 13', TRUE, 76, 0.0, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Chupetas e Mordedores', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3696527c-df13-417c-bd38-8f5b38b9d899', 33.68, 56.58, 17.73);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('71831046-7fe8-41e0-a293-9d5d8c353519', 'JINWEN Aspirador de pó portátil sem fio com filtragem HEPA forte sucção 5200 Pa para carro e escritório (cor: B)', 'JINWEN Aspirador de pó portátil sem fio com filtragem HEPA forte sucção 5200 Pa para carro e escritório (cor: B)', 'brand 46', TRUE, 78, 0.0, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('71831046-7fe8-41e0-a293-9d5d8c353519', 57.02, 29.16, 11.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2d2a9150-b906-4d34-a5b3-57d5d0855e27', 'SECFOU Bebedouro De Vaca Cavalo Bebedouro Automático Bebedouro De Gado Verde Bebedouro Para Animais De Estimação Alimentador De Água Alimentador De Metal Bebedouro De Ovelhas Suprimentos', 'SECFOU Bebedouro De Vaca Cavalo Bebedouro Automático Bebedouro De Gado Verde Bebedouro Para Animais De Estimação Alimentador De Água Alimentador De Metal Bebedouro De Ovelhas Suprimentos', 'brand 46', TRUE, 14, 98.5, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2d2a9150-b906-4d34-a5b3-57d5d0855e27', 34.8, 94.97, 62.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5a24e11f-10eb-4c1c-81bd-bfd6de593454', 'Domary Conjunto de tinta acrílica para derramamento de 4 frascos (2 onças / 60 ml) Frascos Tinta acrílica líquida de alto fluxo para tela, madeira, pedra, vidro, papel, azulejo', 'Domary Conjunto de tinta acrílica para derramamento de 4 frascos (2 onças / 60 ml) Frascos Tinta acrílica líquida de alto fluxo para tela, madeira, pedra, vidro, papel, azulejo', 'brand 25', TRUE, 59, 121.79, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5a24e11f-10eb-4c1c-81bd-bfd6de593454', 99.13, 67.85, 71.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a72c71df-4e10-4d22-80d7-e1063079d295', 'MINI JOGOS BINGO, Dican, Colorido', 'MINI JOGOS BINGO, Dican, Colorido', 'brand 8', TRUE, 78, 25.77, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a72c71df-4e10-4d22-80d7-e1063079d295', 12.08, 48.43, 79.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8852bf25-10bf-4807-8c27-df6b87983e09', 'FOMIYES 3 Pçs Navalha Para Homens Barbeador Para Homens Lâminas De Barbear Para Barbear Dobrável Navalha Dobrável Navalha Reta Vintage Navalha Segura Manual Navalha De Madeira Cabo Reto', 'FOMIYES 3 Pçs Navalha Para Homens Barbeador Para Homens Lâminas De Barbear Para Barbear Dobrável Navalha Dobrável Navalha Reta Vintage Navalha Segura Manual Navalha De Madeira Cabo Reto', 'brand 13', TRUE, 39, 0.0, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8852bf25-10bf-4807-8c27-df6b87983e09', 63.72, 94.92, 80.56);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('75954c7c-0e6c-4b31-8965-a210ecd8f262', 'POPETPOP Acessórios Para Aquário Aquário Decoração da caverna caver Decoração De Aquário De Peixes', 'POPETPOP Acessórios Para Aquário Aquário Decoração da caverna caver Decoração De Aquário De Peixes', 'brand 1', TRUE, 67, 81.51, '6872fa14-dc55-4ffb-a4ec-118b212a9071', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('75954c7c-0e6c-4b31-8965-a210ecd8f262', 74.37, 40.49, 62.71);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('9b904950-95a7-4c15-81ee-4723008f2695', 'Rodovia de Abreu, 99, Estrela, 41018-495 Cirino / MG', 202, 'casa', 'Barros', '41060-629', 'Nascimento das Pedras', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('9b904950-95a7-4c15-81ee-4723008f2695', -98281489, -1480049577, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('c625264b-a9cb-49f6-a33f-0141ef12931c', 'Noah Costela', 'tfreitas@example.org', '^^8cg+Xl9C', '+55 31 1807-6040', NULL, NOW(), NOW(), 'Noa', '9b904950-95a7-4c15-81ee-4723008f2695');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('6bb33f0e-0117-4e9c-adc1-5a812e288e81', 'Residencial Rezende, 64, Confisco, 36606348 Teixeira de Guerra / CE', 181, 'comercial', 'Carvalho de Goiás', '32673-597', 'Rios', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('6bb33f0e-0117-4e9c-adc1-5a812e288e81', -201863329, -1185215408, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Ribeiro', '9:00-18:00', '+55 21 5703 3817', '83596741246', '6bb33f0e-0117-4e9c-adc1-5a812e288e81');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('117f9df6-856c-4160-b486-5d1bdd2f5a9d', 'c625264b-a9cb-49f6-a33f-0141ef12931c', '91072584611', NOW(), '76a8d817-88d9-4ed2-9bab-88fc4b495c2b');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dec64bc6-9c90-47f0-be9e-299b18e7452c', 'Adesivo de decalque de unhas bonito adesivo de arte de unhas com 12 folhas/conjunto, acessório de manicure para decoração de casa e salão', 'Adesivo de decalque de unhas bonito adesivo de arte de unhas com 12 folhas/conjunto, acessório de manicure para decoração de casa e salão', 'brand 37', TRUE, 16, 0.0, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dec64bc6-9c90-47f0-be9e-299b18e7452c', 88.29, 54.09, 71.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7395601f-35d7-4202-ac79-c76c9ed74985', 'Tramontina Regador Plástico, Azul, 2 L', 'Tramontina Regador Plástico, Azul, 2 L', 'brand 64', TRUE, 39, 65.71, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Jardim e Piscina', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7395601f-35d7-4202-ac79-c76c9ed74985', 78.4, 88.47, 76.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('30f3ff9a-eed7-4a64-950c-4675d827f78f', 'Troy Lee Designs Womens Gambit Tie Dye Black Gloves Size X-Large', 'Troy Lee Designs Womens Gambit Tie Dye Black Gloves Size X-Large', 'brand 24', TRUE, 16, 389.69, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Acessórios e Peças para Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('30f3ff9a-eed7-4a64-950c-4675d827f78f', 39.66, 54.34, 59.18);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('114a9a02-3ac8-4f3b-9423-4d00cce2edda', 'Mala de Viagem Média com Rodas 360 Zafira 2t - Pink', 'Mala de Viagem Média com Rodas 360 Zafira 2t - Pink', 'brand 57', TRUE, 19, 499.9, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Malas de Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('114a9a02-3ac8-4f3b-9423-4d00cce2edda', 15.51, 36.77, 37.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9cf687c3-33f2-4c31-b633-cb6772261d16', 'Bothyi dor vertical para peru, de ferro, suporte para churrasco, para fritadeira, suporte para, suporte para de,', 'Bothyi dor vertical para peru, de ferro, suporte para churrasco, para fritadeira, suporte para, suporte para de,', 'brand 27', TRUE, 99, 0.0, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9cf687c3-33f2-4c31-b633-cb6772261d16', 37.74, 12.73, 39.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d88cc612-4279-4062-a832-5298a28e0f9e', 'PartyKindom 70 Pçs Tampões De Ouvido Com Cancelamento De Ruído Fones De Ouvido Com Cancelamento De Ruído Fones De Ouvido Over-Ear Acessórios Para Fones De Ouvido Fones De Ouvido Fones De', 'PartyKindom 70 Pçs Tampões De Ouvido Com Cancelamento De Ruído Fones De Ouvido Com Cancelamento De Ruído Fones De Ouvido Over-Ear Acessórios Para Fones De Ouvido Fones De Ouvido Fones De', 'brand 81', TRUE, 7, 0.0, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Áudio', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d88cc612-4279-4062-a832-5298a28e0f9e', 63.51, 89.94, 84.32);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('00773211-4ab0-46ec-af41-7c53c8e262ef', 'Qianly Cama para gatos, espreguiçadeira para gatos, cama elevada para animais de estimação, para cães pequenos, filhotes, animais pequenos, Tapete de vime marrom', 'Qianly Cama para gatos, espreguiçadeira para gatos, cama elevada para animais de estimação, para cães pequenos, filhotes, animais pequenos, Tapete de vime marrom', 'brand 52', TRUE, 46, 132.59, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('00773211-4ab0-46ec-af41-7c53c8e262ef', 33.35, 40.16, 69.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('faba2c9d-c107-4aad-aa2c-907395406a08', 'Peças Da Impressora 3D,12 / 24V Heatbed Heat Bed Placa de Expansão Módulo de Alimentação de Aquecimento Acessórios de Cama High Power Expansion Module para CR-10 / CR-10S Série Mosfet Board 3D', 'Peças Da Impressora 3D,12 / 24V Heatbed Heat Bed Placa de Expansão Módulo de Alimentação de Aquecimento Acessórios de Cama High Power Expansion Module para CR-10 / CR-10S Série Mosfet Board 3D', 'brand 43', TRUE, 59, 0.0, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('faba2c9d-c107-4aad-aa2c-907395406a08', 80.5, 92.62, 35.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('382ad557-1dd4-4a9f-9385-86a1baafddb7', 'UKCOCO Bolsa Para Câmera Instantânea Alça Para Câmera De Couro Mini Câmera Bolsa De Ombro De Couro Bolsa De Ombro Ajustável Para Câmera Câmera Fotográfica Instantânea Bolsa De Viagem', 'UKCOCO Bolsa Para Câmera Instantânea Alça Para Câmera De Couro Mini Câmera Bolsa De Ombro De Couro Bolsa De Ombro Ajustável Para Câmera Câmera Fotográfica Instantânea Bolsa De Viagem', 'brand 83', TRUE, 65, 68.1, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('382ad557-1dd4-4a9f-9385-86a1baafddb7', 86.28, 22.74, 15.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c8741167-d1f9-4e48-a082-52d7145a9ea4', 'MINI FONTE K-MEX PD-200RNG 200W 20+4P C/CABO E CX, 7898426849579', 'MINI FONTE K-MEX PD-200RNG 200W 20+4P C/CABO E CX, 7898426849579', 'brand 50', TRUE, 80, 153.3, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c8741167-d1f9-4e48-a082-52d7145a9ea4', 52.58, 79.62, 14.93);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('06d92586-5eac-47fe-99dc-c8e576402413', 'OSALADI 2Pcs Lanterna Mini Lanterna LED Lanternas Holofote De Emergência Ao Ar Livre Lanternas De Bolso Liga De Alumínio Lanterna Preta Para Lanterna Pequena Ao Ar Livre Lanterna', 'OSALADI 2Pcs Lanterna Mini Lanterna LED Lanternas Holofote De Emergência Ao Ar Livre Lanternas De Bolso Liga De Alumínio Lanterna Preta Para Lanterna Pequena Ao Ar Livre Lanterna', 'brand 74', TRUE, 56, 50.63, '76a8d817-88d9-4ed2-9bab-88fc4b495c2b', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('06d92586-5eac-47fe-99dc-c8e576402413', 29.66, 82.18, 51.14);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1f3b5453-3562-4de3-88f8-40b1c3d5688f', 'Rodovia de Carvalho, 68, Santa Branca, 95820643 Pires / AM', 920, 'casa', 'Nunes', '79604-629', 'Pinto do Galho', 'Ceará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1f3b5453-3562-4de3-88f8-40b1c3d5688f', -757480250, 833184546, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('e4772e1b-5c40-4903-94df-7cc4334ed6df', 'Arthur Miguel Almeida', 'aparecidamaria-helena@example.net', 'TC_y92NqGm', '+55 81 2864-3150', NULL, NOW(), NOW(), 'Art', '1f3b5453-3562-4de3-88f8-40b1c3d5688f');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('9b586388-6412-409f-a009-632ff312e761', 'Via Pereira, 83, Vila Copacabana, 69488771 Cirino do Amparo / AC', 337, 'comercial', 'Pinto da Mata', '97061-871', 'da Luz da Prata', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('9b586388-6412-409f-a009-632ff312e761', -53675393, 1368040493, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Novais Teixeira - ME', '9:00-18:00', '+55 31 1707-5354', '58640731217', '9b586388-6412-409f-a009-632ff312e761');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('d6c063f6-a29d-4e12-ae47-1a5cbb79c686', 'e4772e1b-5c40-4903-94df-7cc4334ed6df', '34680192704', NOW(), '37a019dc-8b3d-450d-ab99-4fa4a3dc0485');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('482b0e11-9239-48b0-afe4-0fbc55c68b5b', 'Desktop Computers, 3 USB3.0 Ports 2.16GHz To 2.58GHz 4GB RAM Mini?PC 1920x1080 for Office for Windows11 for Home(#1)', 'Desktop Computers, 3 USB3.0 Ports 2.16GHz To 2.58GHz 4GB RAM Mini?PC 1920x1080 for Office for Windows11 for Home(#1)', 'brand 98', TRUE, 100, 820.99, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Computadores Desktop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('482b0e11-9239-48b0-afe4-0fbc55c68b5b', 79.95, 18.59, 89.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d18c974a-34a0-4035-82e8-1ecb25315952', 'Colete Modelador Iônico - Tummy Control Compression Tank Top Men Body Slimming Sleeveless Shirts,Camisa modeladora apertada que não agride a pele para ciclismo Ruliyeefu', 'Colete Modelador Iônico - Tummy Control Compression Tank Top Men Body Slimming Sleeveless Shirts,Camisa modeladora apertada que não agride a pele para ciclismo Ruliyeefu', 'brand 62', TRUE, 91, 0.0, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Luta e Artes Marciais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d18c974a-34a0-4035-82e8-1ecb25315952', 30.52, 53.43, 21.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('597e1e69-aa2c-4841-b76a-6f594fa8c0e8', 'Hohopeti Vestidos Femininos Para Casamento 5 Peças Vestidos Envoltórios Para Convidados De Casamento Conjunto De Bonecas De Princesa De Casamento Roupas De Bebê Placa Combinada Tons', 'Hohopeti Vestidos Femininos Para Casamento 5 Peças Vestidos Envoltórios Para Convidados De Casamento Conjunto De Bonecas De Princesa De Casamento Roupas De Bebê Placa Combinada Tons', 'brand 34', TRUE, 1, 83.37, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Colecionáveis e Miniaturas para Hobby', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('597e1e69-aa2c-4841-b76a-6f594fa8c0e8', 64.07, 22.81, 57.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cd8d0b2a-4c94-47b2-b022-c70ee3db7736', 'BESPORTBLE 3 Conjuntos De Engrenagens Protetoras Ajustáveis Para Crianças Erblading Equitação Ciclismo Cotovelo Bicicleta Esportes Ao Ar Livre Skate Acessório De Bicicleta Protetor De', 'BESPORTBLE 3 Conjuntos De Engrenagens Protetoras Ajustáveis Para Crianças Erblading Equitação Ciclismo Cotovelo Bicicleta Esportes Ao Ar Livre Skate Acessório De Bicicleta Protetor De', 'brand 61', TRUE, 50, 211.3, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Skates, Patins, Patinetes e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cd8d0b2a-4c94-47b2-b022-c70ee3db7736', 73.49, 89.25, 18.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fb09409c-7943-407b-8576-6a56a6271a19', 'Valores e Virtudes: O Arrependimento', 'Valores e Virtudes: O Arrependimento', 'brand 27', TRUE, 54, 2.49, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fb09409c-7943-407b-8576-6a56a6271a19', 74.18, 23.99, 30.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ba134124-1a96-45c9-96d1-f8d94c2e85eb', 'PAPAPI 9 peças capa de assento de carro couro PU protetor de assento universal conjunto completo acessórios interiores de automóveis para veículo SUV', 'PAPAPI 9 peças capa de assento de carro couro PU protetor de assento universal conjunto completo acessórios interiores de automóveis para veículo SUV', 'brand 50', TRUE, 98, 446.31, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Peças e Acessórios para Automóveis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ba134124-1a96-45c9-96d1-f8d94c2e85eb', 42.23, 22.98, 42.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('71dd418c-af3b-402e-bba6-e38e5bf2a5b7', 'Mingzhe BM-12/V2 UHF Profissional Sistema de Microfone de Instrumento Sem Fio Receptor e Transmissor 16 Canais para Sax Saxofone Trompa Francesa Trompete Trumbone', 'Mingzhe BM-12/V2 UHF Profissional Sistema de Microfone de Instrumento Sem Fio Receptor e Transmissor 16 Canais para Sax Saxofone Trompa Francesa Trompete Trumbone', 'brand 50', TRUE, 23, 678.99, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('71dd418c-af3b-402e-bba6-e38e5bf2a5b7', 36.04, 72.21, 78.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cbc9cc33-0665-4a65-ae8c-7251d288904d', 'TOYANDONA 4 Pçs Brinquedos De Dentição Do Bebê Brinquedo De Mastigação Pulseira De Silicone Mordedor Brinquedo Infantil Brinquedo Sensorial Do Bebê Nunca Deixe Cair Brinquedo De Dentição Do', 'TOYANDONA 4 Pçs Brinquedos De Dentição Do Bebê Brinquedo De Mastigação Pulseira De Silicone Mordedor Brinquedo Infantil Brinquedo Sensorial Do Bebê Nunca Deixe Cair Brinquedo De Dentição Do', 'brand 99', TRUE, 52, 90.74, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Chupetas e Mordedores', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cbc9cc33-0665-4a65-ae8c-7251d288904d', 80.13, 46.52, 59.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('85996106-709e-49de-9b73-8d50045b6325', 'Bolsa Noelle Girlfriend Satchel', 'Bolsa Noelle Girlfriend Satchel', 'brand 74', TRUE, 73, 904.0, '37a019dc-8b3d-450d-ab99-4fa4a3dc0485', 'Compras Internacionais em Moda', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('85996106-709e-49de-9b73-8d50045b6325', 25.01, 83.86, 79.07);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
