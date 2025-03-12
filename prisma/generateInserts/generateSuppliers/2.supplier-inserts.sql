-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8983f149-153a-4b82-9120-33405552bad4', 'Viela Henrique Carvalho, 35, Cardoso, 46247478 Lopes do Sul / RR', 264, 'casa', 'Brito do Amparo', '38748-919', 'Abreu', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8983f149-153a-4b82-9120-33405552bad4', 226730585, -672134595, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('a27b9caa-af74-4ba0-9617-386e9bf6cb7c', 'Davi Costa', 'rhavi86@example.org', '^H$2KnZ#PT', '(041) 7121-7009', NULL, NOW(), NOW(), 'Dav', '8983f149-153a-4b82-9120-33405552bad4');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('9bcffed7-60ca-4d24-a91f-f90c1113a5e4', 'Praia de Costa, 80, Casa Branca, 62674-952 Pacheco Alegre / MG', 115, 'comercial', 'Aparecida de Guerra', '91541-764', 'da Cruz', 'São Paulo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('9bcffed7-60ca-4d24-a91f-f90c1113a5e4', -180712014, 1187159470, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('cb0369bf-9d06-4814-8321-88b80996594b', 'Borges', '9:00-18:00', '+55 81 4571-2522', '12364709580', '9bcffed7-60ca-4d24-a91f-f90c1113a5e4');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('536dab7e-c676-4845-b2de-90e1afd52a85', 'a27b9caa-af74-4ba0-9617-386e9bf6cb7c', '96508437283', NOW(), 'cb0369bf-9d06-4814-8321-88b80996594b');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('80908fa7-093b-4f63-b57d-36c51f0d567a', 'SIM CARD LEITOR DO LEITOR DO XIAOMI Black Shark 3', 'SIM CARD LEITOR DO LEITOR DO XIAOMI Black Shark 3', 'brand 83', TRUE, 41, 76.19, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('80908fa7-093b-4f63-b57d-36c51f0d567a', 64.13, 81.01, 15.13);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2c26e9f5-013e-4f9a-b31d-2d1d887d649f', 'Chopard Mille Miglia Eau De Toilette Spray for Men 2.8 Ounce', 'Chopard Mille Miglia Eau De Toilette Spray for Men 2.8 Ounce', 'brand 99', TRUE, 15, 855.95, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2c26e9f5-013e-4f9a-b31d-2d1d887d649f', 22.66, 18.41, 32.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c6e84a55-a76b-4c77-b282-64841531ae07', 'Biquíni de 2 peças Mulheres traje de natação push up acolchoado sutiã bathing plissado fralar um ombro swimwear biquíni monokini uma peça bandagem (Color : 542A, Size : M)', 'Biquíni de 2 peças Mulheres traje de natação push up acolchoado sutiã bathing plissado fralar um ombro swimwear biquíni monokini uma peça bandagem (Color : 542A, Size : M)', 'brand 25', TRUE, 63, 120.8, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Equipamento de Natação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c6e84a55-a76b-4c77-b282-64841531ae07', 21.05, 79.4, 53.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ab540b1c-008d-4adc-9ecd-953b4743b5dc', 'Sacred Sapces (Gold Vinyl) [Disco de Vinil]', 'Sacred Sapces (Gold Vinyl) [Disco de Vinil]', 'brand 59', TRUE, 3, 230.47, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Vinil', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ab540b1c-008d-4adc-9ecd-953b4743b5dc', 39.78, 69.11, 55.66);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2a253eab-42a5-4756-ac1e-bc9a2d72da61', 'Baby and Toddler Girl Cotton Dress and Cardigan Set, Forest, 9-12 Months', 'Baby and Toddler Girl Cotton Dress and Cardigan Set, Forest, 9-12 Months', 'brand 12', TRUE, 24, 208.0, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2a253eab-42a5-4756-ac1e-bc9a2d72da61', 68.22, 97.74, 48.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8f408a35-61af-4012-a5b7-6be8fc2a2551', 'CADEADO DE SEGREDO 3F 40MM PRETO', 'CADEADO DE SEGREDO 3F 40MM PRETO', 'brand 39', TRUE, 98, 31.9, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Proteção e Segurança', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8f408a35-61af-4012-a5b7-6be8fc2a2551', 85.05, 42.57, 76.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8fa01656-e72a-47ed-96d0-4e4500d9a214', 'Ordenador De Formas Organizadora, Metaltru, Branco', 'Ordenador De Formas Organizadora, Metaltru, Branco', 'brand 46', TRUE, 91, 27.09, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Organização e Armazenamento para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8fa01656-e72a-47ed-96d0-4e4500d9a214', 11.3, 75.01, 89.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('944b26f4-bb49-48f5-af21-bb66e848c586', 'Newlink Cooler Dobrável Suporte Base Mouse Copo, Preto, 70.0105', 'Newlink Cooler Dobrável Suporte Base Mouse Copo, Preto, 70.0105', 'brand 42', TRUE, 17, 49.98, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Peças e Componentes de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('944b26f4-bb49-48f5-af21-bb66e848c586', 97.68, 83.36, 58.83);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3c01eb0d-2c57-4f77-8598-d154af71190f', 'Cortador de cabelo corporal, aço fino, carregador USB, aparador de corpo de cabeça dupla com base de carregamento para viagem em casa para homens', 'Cortador de cabelo corporal, aço fino, carregador USB, aparador de corpo de cabeça dupla com base de carregamento para viagem em casa para homens', 'brand 70', TRUE, 33, 146.99, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3c01eb0d-2c57-4f77-8598-d154af71190f', 18.78, 90.11, 97.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('84b2a0b9-1e47-4fb4-9281-57b8f3f848eb', 'Capa i-Blason Ares Mag para iPhone 15 Pro Max com protetor de tela, [compatível com MagSafe] Capa transparente fina de corpo inteiro à prova de choque e resistente (Cinza)', 'Capa i-Blason Ares Mag para iPhone 15 Pro Max com protetor de tela, [compatível com MagSafe] Capa transparente fina de corpo inteiro à prova de choque e resistente (Cinza)', 'brand 81', TRUE, 77, 179.99, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('84b2a0b9-1e47-4fb4-9281-57b8f3f848eb', 28.42, 75.45, 27.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3e1a8bab-da86-4a61-a74e-9003e649ebb4', 'CIYODO Máscara De Halloween Máscara De De Halloween Máscara Assustadora De Halloween Máscara De Carnaval De Para Adultos De Halloween Para Adultos', 'CIYODO Máscara De Halloween Máscara De De Halloween Máscara Assustadora De Halloween Máscara De Carnaval De Para Adultos De Halloween Para Adultos', 'brand 22', TRUE, 11, 78.5, 'cb0369bf-9d06-4814-8321-88b80996594b', 'Brinquedos para Faz de Conta e Casinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3e1a8bab-da86-4a61-a74e-9003e649ebb4', 17.81, 29.93, 31.78);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c4644a2d-9bca-479e-a490-c641e848d2de', 'Distrito de Ramos, Jardim Montanhês, 49345580 Viana / RN', 758, 'casa', 'Oliveira de Rodrigues', '63802-841', 'Monteiro', 'Roraima');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c4644a2d-9bca-479e-a490-c641e848d2de', -147564286, 1060385812, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('46201544-0519-44b7-ab28-8c671beb85cb', 'Lívia Novaes', 'elisa63@example.net', '&&6T5^Aj)o', '+55 31 1457-4788', NULL, NOW(), NOW(), 'Lív', 'c4644a2d-9bca-479e-a490-c641e848d2de');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('28d9be25-2b84-4338-a62c-36d8018255b7', 'Distrito Maysa Santos, 6, Coqueiros, 51068488 Macedo / SC', 620, 'comercial', 'Cavalcante Verde', '72272-673', 'Santos do Sul', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('28d9be25-2b84-4338-a62c-36d8018255b7', -150598673, -501044988, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('191c9769-a935-47b6-8e2d-8c4111157a53', 'Moraes Ltda.', '9:00-18:00', '61 8734-2218', '71962085449', '28d9be25-2b84-4338-a62c-36d8018255b7');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('734b7d0b-d232-4f5b-8baa-94607942ad42', '46201544-0519-44b7-ab28-8c671beb85cb', '85136790202', NOW(), '191c9769-a935-47b6-8e2d-8c4111157a53');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b5b40484-b044-48ea-91ca-e550f1c4d3bd', 'Termômetro Piscina Flutuante - Piscina Termômetro Flamingo Design | Fornecimento de piscina termômetro de temperatura da água para piscina Aferzov', 'Termômetro Piscina Flutuante - Piscina Termômetro Flamingo Design | Fornecimento de piscina termômetro de temperatura da água para piscina Aferzov', 'brand 38', TRUE, 50, 36.55, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Piscinas, Ofurôs e Materiais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b5b40484-b044-48ea-91ca-e550f1c4d3bd', 99.16, 76.31, 12.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fb1495a8-af24-4c82-b52e-2c17b5fce676', 'Calça de moletom cargo masculina de lã pesada, larga, esportiva, para treino', 'Calça de moletom cargo masculina de lã pesada, larga, esportiva, para treino', 'brand 39', TRUE, 31, 49.91, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fb1495a8-af24-4c82-b52e-2c17b5fce676', 90.84, 57.96, 73.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0782c5b6-cb4c-4518-8ea0-b98a69a069d2', 'Toddmomy 1 Conjunto De Pulseira Chupeta Corrente Brinquedo Infantil Chupeta Bebê Brinquedos De Madeira Faia Azul Silicone Mordedor Brinquedo Massagem Do Bebê Chupeta Brinquedo De Dentição', 'Toddmomy 1 Conjunto De Pulseira Chupeta Corrente Brinquedo Infantil Chupeta Bebê Brinquedos De Madeira Faia Azul Silicone Mordedor Brinquedo Massagem Do Bebê Chupeta Brinquedo De Dentição', 'brand 76', TRUE, 25, 51.07, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Chupetas e Mordedores', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0782c5b6-cb4c-4518-8ea0-b98a69a069d2', 38.85, 95.15, 83.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a8addbb6-f9c3-42e6-b87f-83cb1e411cf7', 'Cueca Slip Algodão, Mash, Masculino', 'Cueca Slip Algodão, Mash, Masculino', 'brand 12', TRUE, 85, 21.32, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a8addbb6-f9c3-42e6-b87f-83cb1e411cf7', 45.75, 75.86, 76.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9f0f0428-e0ad-4f5c-a886-dcb8dad8d373', 'Vifaleno Kit de acessórios para câmera instantânea 12-em-1 para Fujifilm Instax Mini 11', 'Vifaleno Kit de acessórios para câmera instantânea 12-em-1 para Fujifilm Instax Mini 11', 'brand 13', TRUE, 93, 139.81, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9f0f0428-e0ad-4f5c-a886-dcb8dad8d373', 89.45, 31.91, 46.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d0de2a77-474b-4c46-9f1f-b7c360a3fd54', 'Película de Nano Vidro para Samsung Galaxy Note 10 Lite - Gshield', 'Película de Nano Vidro para Samsung Galaxy Note 10 Lite - Gshield', 'brand 35', TRUE, 83, 49.97, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d0de2a77-474b-4c46-9f1f-b7c360a3fd54', 46.73, 33.83, 20.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b00295ed-528c-4a04-bc5b-36b3cd30c139', 'Óculos de sol com borboleta sem aro olho de gato, óculos grandes com armação de metal, óculos de sol sem moldura para mulheres, homens, lembrancinha de festa', 'Óculos de sol com borboleta sem aro olho de gato, óculos grandes com armação de metal, óculos de sol sem moldura para mulheres, homens, lembrancinha de festa', 'brand 72', TRUE, 4, 49.13, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b00295ed-528c-4a04-bc5b-36b3cd30c139', 63.86, 35.98, 26.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4b24cf35-fe7d-44c7-bf54-cd07b4e2b389', 'FJYDBTWJ Lupas educativas para hobby, lupa portátil de LED ao ar livre + espelho de ampliação de leitura de iluminação', 'FJYDBTWJ Lupas educativas para hobby, lupa portátil de LED ao ar livre + espelho de ampliação de leitura de iluminação', 'brand 60', TRUE, 65, 159.63, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4b24cf35-fe7d-44c7-bf54-cd07b4e2b389', 97.1, 58.29, 30.77);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9fef5a7d-8d45-42c9-bcf8-7d04055fb9d4', 'Mesa de acampamento dobrável, estrutura robusta de liga de alumínio preta portátil bordas polidas pequena mesa externa para churrasco para acampamento', 'Mesa de acampamento dobrável, estrutura robusta de liga de alumínio preta portátil bordas polidas pequena mesa externa para churrasco para acampamento', 'brand 85', TRUE, 99, 126.99, '191c9769-a935-47b6-8e2d-8c4111157a53', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9fef5a7d-8d45-42c9-bcf8-7d04055fb9d4', 62.0, 50.87, 44.42);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('be6808bd-e0ca-4092-9e96-31f9d4901933', 'Parque Câmara, 94, Nova Pampulha, 62251632 da Cunha dos Dourados / AM', 416, 'casa', 'Mendonça', '59742-951', 'Camargo da Serra', 'Rondônia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('be6808bd-e0ca-4092-9e96-31f9d4901933', -142036000, 1145812054, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('86545035-39f3-4f5f-b78a-7cc26f7912fb', 'Ana Vitória Costa', 'luisa80@example.com', '*_8wXBj3$v', '81 1130-3998', NULL, NOW(), NOW(), 'Ana', 'be6808bd-e0ca-4092-9e96-31f9d4901933');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('eb66b1b8-a5d3-439e-91a1-032dd4937bc5', 'Colônia de da Costa, 906, Nova Vista, 96665576 Ferreira / TO', 87, 'comercial', 'Montenegro Grande', '99942-438', 'Araújo', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('eb66b1b8-a5d3-439e-91a1-032dd4937bc5', -151705828, -1500411229, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Sá - EI', '9:00-18:00', '+55 31 7980-6490', '73041286580', 'eb66b1b8-a5d3-439e-91a1-032dd4937bc5');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('71ceabf5-cf1a-4eaa-82df-7215c32dd7e1', '86545035-39f3-4f5f-b78a-7cc26f7912fb', '80915723603', NOW(), '9984db39-3dd4-414a-9b6d-b9e77764a0aa');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1c6d93c6-a2ea-43f9-9fc3-5bf42ff7467d', 'CIYODO Coleiras De Cachorro Elizabeth Circle Para Cachorros Coleira De Cachorro Coleira De Gatinho Pequena Coleira De Feltro Para Recuperação Coleira Elizabetana Decorativa Cone De', 'CIYODO Coleiras De Cachorro Elizabeth Circle Para Cachorros Coleira De Cachorro Coleira De Gatinho Pequena Coleira De Feltro Para Recuperação Coleira Elizabetana Decorativa Cone De', 'brand 87', TRUE, 25, 46.99, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1c6d93c6-a2ea-43f9-9fc3-5bf42ff7467d', 23.15, 53.77, 15.9);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('17a96431-7be2-491f-aa0e-b17dce09e9c5', 'BESPORTBLE Acessórios De Patinação Acessórios De Patinação Rodas De Infantis Rodas Cruiser Skate Quatro Rodas Acessórios De Skate Branco 2 Pçs Rolo Patinação Portátil Patinação Portátil', 'BESPORTBLE Acessórios De Patinação Acessórios De Patinação Rodas De Infantis Rodas Cruiser Skate Quatro Rodas Acessórios De Skate Branco 2 Pçs Rolo Patinação Portátil Patinação Portátil', 'brand 28', TRUE, 6, 66.54, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Skates, Patins, Patinetes e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('17a96431-7be2-491f-aa0e-b17dce09e9c5', 63.05, 93.31, 65.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('14f76429-98ed-4d0f-84b2-434f255652b8', 'TOYANDONA 8 Peças Brinquedos De Banho De Bebê Brinquedos De Piscina Para Crianças Brinquedos Brilhantes Brinquedos De Banho De Vinil Brinquedos De Banho Brinquedos Educativos Para Banheira', 'TOYANDONA 8 Peças Brinquedos De Banho De Bebê Brinquedos De Piscina Para Crianças Brinquedos Brilhantes Brinquedos De Banho De Vinil Brinquedos De Banho Brinquedos Educativos Para Banheira', 'brand 19', TRUE, 78, 97.91, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Banho, Higiene e Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('14f76429-98ed-4d0f-84b2-434f255652b8', 94.54, 59.89, 85.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('016b34e1-55a6-4d56-b399-8e7c155ea783', 'SECFOU Calças De Treinamento Para Bebês 2 Peças Banheiro Para Meninos Roupas Íntimas Para Treinamento De Penico Calças Para Meninos Recém-Nascidos Fraldas De Algodão Para Bebês', 'SECFOU Calças De Treinamento Para Bebês 2 Peças Banheiro Para Meninos Roupas Íntimas Para Treinamento De Penico Calças Para Meninos Recém-Nascidos Fraldas De Algodão Para Bebês', 'brand 84', TRUE, 71, 51.97, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('016b34e1-55a6-4d56-b399-8e7c155ea783', 18.41, 48.51, 86.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('26616b7a-8ba4-4ccc-90aa-efd94e8be826', 'KONNWEI KW310 OBD2 Scanner completo OBDII Funções 10 Modos Mecanismo de carro Diagnóstico ferramenta para todos os carros de 1996 e mais recentes (Preto)', 'KONNWEI KW310 OBD2 Scanner completo OBDII Funções 10 Modos Mecanismo de carro Diagnóstico ferramenta para todos os carros de 1996 e mais recentes (Preto)', 'brand 78', TRUE, 13, 0.0, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Ferramentas e Equipamentos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('26616b7a-8ba4-4ccc-90aa-efd94e8be826', 92.06, 97.93, 36.33);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ac9aa54b-274b-4c95-8ac5-3dd1be19f380', 'Versace Eros Flame Bath and Shower Gel 8,4 onças', 'Versace Eros Flame Bath and Shower Gel 8,4 onças', 'brand 64', TRUE, 3, 944.9, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Beleza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ac9aa54b-274b-4c95-8ac5-3dd1be19f380', 93.36, 40.91, 70.93);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7ac269d9-8404-4d7e-b78f-15e0acfe39b4', 'Capacete Fechado Moto Bieffe B-40 Solid Azul Fosco/Vermelho 60', 'Capacete Fechado Moto Bieffe B-40 Solid Azul Fosco/Vermelho 60', 'brand 96', TRUE, 17, 649.9, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Acessórios e Peças para Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7ac269d9-8404-4d7e-b78f-15e0acfe39b4', 75.69, 14.61, 91.97);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('970c5ac2-071e-4040-83a5-9e717412cf19', 'Lipper International Tigela de salada de madeira de bambu com 2 utensílios para servir, grande, 35,5 cm de diâmetro x 10 cm de altura, conjunto de 3 peças', 'Lipper International Tigela de salada de madeira de bambu com 2 utensílios para servir, grande, 35,5 cm de diâmetro x 10 cm de altura, conjunto de 3 peças', 'brand 57', TRUE, 43, 0.0, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Talheres', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('970c5ac2-071e-4040-83a5-9e717412cf19', 63.6, 36.97, 21.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a2c18d85-e8cf-4e42-95e5-eb08bda5b3cc', 'Óculos de Grau Lacoste L2236 033/54 - Preto', 'Óculos de Grau Lacoste L2236 033/54 - Preto', 'brand 64', TRUE, 89, 0.0, '9984db39-3dd4-414a-9b6d-b9e77764a0aa', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a2c18d85-e8cf-4e42-95e5-eb08bda5b3cc', 17.87, 74.42, 16.61);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('dc397bfa-f245-43d3-9709-19d61b2089a0', 'Vila de Caldeira, 12, Bernadete, 19900813 Nascimento da Mata / RJ', 199, 'casa', 'da Rosa', '37643-520', 'da Rocha da Praia', 'Pará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('dc397bfa-f245-43d3-9709-19d61b2089a0', -423056779, 778235975, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('886f156d-207f-4493-9884-cac3c1841e65', 'Rhavi Novais', 'luara42@example.org', 'Z!3K3lXN%w', '(051) 8517 3630', NULL, NOW(), NOW(), 'Rha', 'dc397bfa-f245-43d3-9709-19d61b2089a0');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c2df72ba-9522-4b1a-9f1b-3dad55d178c3', 'Campo Rocha, 4, Nova Cintra, 73329176 da Rocha / PR', 647, 'comercial', 'Rezende de Minas', '80409-452', 'Viana da Praia', 'Mato Grosso');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c2df72ba-9522-4b1a-9f1b-3dad55d178c3', 374643902, -1608016966, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Ferreira', '9:00-18:00', '0900-502-2126', '02468579194', 'c2df72ba-9522-4b1a-9f1b-3dad55d178c3');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('1461d992-15f4-4f51-ba0d-2a723a8e6222', '886f156d-207f-4493-9884-cac3c1841e65', '57906238168', NOW(), '54fdbacf-65bd-4dbc-920c-fe536fbee0b7');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7b4cb733-c204-4a4c-9f0a-d28a254b68e0', 'UK Plug AC 220V-240V 100W Aquecedor de termostato de aquário com clipe de sucção', 'UK Plug AC 220V-240V 100W Aquecedor de termostato de aquário com clipe de sucção', 'brand 18', TRUE, 39, 165.82, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7b4cb733-c204-4a4c-9f0a-d28a254b68e0', 30.48, 70.45, 45.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('92d42579-908d-4c04-9984-a3f43f2431b1', 'Vassoura Original Concept Noviça Anis', 'Vassoura Original Concept Noviça Anis', 'brand 56', TRUE, 57, 18.9, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Produtos de Limpeza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('92d42579-908d-4c04-9984-a3f43f2431b1', 28.28, 46.08, 15.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('33db50ff-078e-4363-94e7-d4f02e650a88', 'Agulha Curva Miçanga Potinho Giratório Artesanato Arte Pulseira Colar Missanga', 'Agulha Curva Miçanga Potinho Giratório Artesanato Arte Pulseira Colar Missanga', 'brand 64', TRUE, 6, 19.99, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('33db50ff-078e-4363-94e7-d4f02e650a88', 73.14, 56.91, 41.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6a925de7-0179-4882-9f9b-8ba54db99edc', 'Fila Girls' Active Tracksuit - 2 Piece Performance Tricot Sweatshirt and Leggings - Activewear Clothing Set for Girls, 7-12, Size 78, Hot PinkAnimal Print', 'Fila Girls' Active Tracksuit - 2 Piece Performance Tricot Sweatshirt and Leggings - Activewear Clothing Set for Girls, 7-12, Size 78, Hot PinkAnimal Print', 'brand 60', TRUE, 94, 352.62, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Luta e Artes Marciais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6a925de7-0179-4882-9f9b-8ba54db99edc', 67.03, 33.49, 63.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cd788133-da8a-48de-8067-2cdf50ae4b3d', 'Óculos Polarizado Masculino + 6 Haste Estiloso', 'Óculos Polarizado Masculino + 6 Haste Estiloso', 'brand 37', TRUE, 57, 99.0, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cd788133-da8a-48de-8067-2cdf50ae4b3d', 58.39, 14.01, 38.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('75613e70-9b66-420d-a3f7-dacbadebb1c1', 'M·A·C Matte Lipstick D for Danger - Batom 3g', 'M·A·C Matte Lipstick D for Danger - Batom 3g', 'brand 95', TRUE, 44, 93.9, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('75613e70-9b66-420d-a3f7-dacbadebb1c1', 80.16, 59.04, 54.97);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('236580ec-72e1-4644-9db8-552c8fe9de22', 'Cadeira Executiva Madrid Giratória Regulagem de Altura a Gas Telada Preta', 'Cadeira Executiva Madrid Giratória Regulagem de Altura a Gas Telada Preta', 'brand 14', TRUE, 71, 249.9, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Móveis e Decoração', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('236580ec-72e1-4644-9db8-552c8fe9de22', 33.54, 44.38, 95.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e7dcc030-2b62-4365-82b2-36cfb3d48190', 'Bolsa de ombro de couro PU macio bolsa feminina de grande capacidade, presente simples para mãe', 'Bolsa de ombro de couro PU macio bolsa feminina de grande capacidade, presente simples para mãe', 'brand 96', TRUE, 27, 77.79, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Bolsas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e7dcc030-2b62-4365-82b2-36cfb3d48190', 64.11, 79.57, 58.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5921b77b-4ff7-4a4f-9a41-3f64d5644ba8', 'Fantasia Gorila Adulto,Chapelaria Animal Engraçado - Animal Chimpanzé Preto para Halloween Fantasia Cosplay Adulto Látex Maxten', 'Fantasia Gorila Adulto,Chapelaria Animal Engraçado - Animal Chimpanzé Preto para Halloween Fantasia Cosplay Adulto Látex Maxten', 'brand 66', TRUE, 94, 112.19, '54fdbacf-65bd-4dbc-920c-fe536fbee0b7', 'Brinquedos para Faz de Conta e Casinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5921b77b-4ff7-4a4f-9a41-3f64d5644ba8', 56.88, 57.52, 29.48);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4d39bd38-5e25-47b9-a0b5-2c461e77b660', 'Esplanada Luiz Otávio Machado, Vila Antena, 85597550 Vargas / SP', 377, 'casa', 'da Costa', '99191-938', 'Costela', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4d39bd38-5e25-47b9-a0b5-2c461e77b660', 715294574, -853046004, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('c2a622d9-2064-4dd5-b430-5052e17bb1a5', 'Eduardo da Costa', 'theo97@example.org', '!3HDzkJ&91', '0300-414-8193', NULL, NOW(), NOW(), 'Edu', '4d39bd38-5e25-47b9-a0b5-2c461e77b660');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3f9eb11d-e564-4af8-9747-9b75ca10800f', 'Passarela Agatha Lima, São João, 67311446 Vieira / PR', 220, 'comercial', 'Santos do Amparo', '10095-568', 'Mendes', 'Minas Gerais');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3f9eb11d-e564-4af8-9747-9b75ca10800f', 180454921, 1369079424, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Pereira', '9:00-18:00', '+55 (061) 7573-0772', '95487603120', '3f9eb11d-e564-4af8-9747-9b75ca10800f');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('766ea21f-7660-44d2-ac42-715876a0537a', 'c2a622d9-2064-4dd5-b430-5052e17bb1a5', '41683705939', NOW(), '6cc0ec4d-0b22-498e-b28c-0b54364b1a47');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9c3176e0-0f62-4034-bee4-52649da12352', 'Mini PC 128 GB SSD Dual Band Gaming Mini PC para computador desktop Plugue UE', 'Mini PC 128 GB SSD Dual Band Gaming Mini PC para computador desktop Plugue UE', 'brand 65', TRUE, 46, 0.0, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Computadores Desktop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9c3176e0-0f62-4034-bee4-52649da12352', 53.2, 63.54, 40.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5a3b1b3d-a849-48f2-aab7-58e656fe01d9', 'Abafador de orelhas de lã para ambientes externos com estampa de vitória e símbolo azul', 'Abafador de orelhas de lã para ambientes externos com estampa de vitória e símbolo azul', 'brand 84', TRUE, 1, 152.17, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5a3b1b3d-a849-48f2-aab7-58e656fe01d9', 87.24, 23.31, 52.3);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f6773d69-35b1-46f3-9bed-c7c51e4abc29', 'Scooby-Doo Where Are You? Seasons One & Two (Rpkgd/DVD)', 'Scooby-Doo Where Are You? Seasons One & Two (Rpkgd/DVD)', 'brand 93', TRUE, 77, 185.44, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Programas de TV', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f6773d69-35b1-46f3-9bed-c7c51e4abc29', 60.31, 52.52, 31.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f589884b-5e4b-4602-a40c-f6aad3303861', 'Esponja giratória para pente de cabelo, esponja giratória ergonômica portátil profissional para cabeleireiros', 'Esponja giratória para pente de cabelo, esponja giratória ergonômica portátil profissional para cabeleireiros', 'brand 32', TRUE, 100, 45.36, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f589884b-5e4b-4602-a40c-f6aad3303861', 42.43, 52.61, 30.88);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b8d20ff6-9490-42b7-b368-3c57b2cef060', 'SECFOU Churrasqueira Churrasqueira Ao Ar Livre Grelha Bife Bife Grelha Ao Ar Livre Para Churrasco Costela Rack Acessórios Para Fumante Suporte De Costela Para Churrasco Churrasqueira', 'SECFOU Churrasqueira Churrasqueira Ao Ar Livre Grelha Bife Bife Grelha Ao Ar Livre Para Churrasco Costela Rack Acessórios Para Fumante Suporte De Costela Para Churrasco Churrasqueira', 'brand 66', TRUE, 50, 124.95, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b8d20ff6-9490-42b7-b368-3c57b2cef060', 42.66, 76.14, 34.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2e7228dc-524e-498b-aa6c-d4c6b6264478', 'Bebê Conforto La Newborn Cotiplás Rosa', 'Bebê Conforto La Newborn Cotiplás Rosa', 'brand 7', TRUE, 70, 93.67, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Bonecas e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2e7228dc-524e-498b-aa6c-d4c6b6264478', 98.91, 39.29, 98.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f1718440-9e72-4b06-8322-a8e9413dfce9', 'Modelo de guitarra com suporte, modelo de guitarra Belo acabamento fino e durável para estantes de livros para escrivaninhas', 'Modelo de guitarra com suporte, modelo de guitarra Belo acabamento fino e durável para estantes de livros para escrivaninhas', 'brand 67', TRUE, 20, 68.73, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Nintendo Switch, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f1718440-9e72-4b06-8322-a8e9413dfce9', 67.68, 62.31, 27.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('89c58b33-f04a-40e5-93e2-a616387a9f38', 'Henniu MD03 BT5.0 Fones de ouvido sem fio Gancho para orelha Controle de toque IPX5 À prova d'água Elétrico Exibição de quantidade', 'Henniu MD03 BT5.0 Fones de ouvido sem fio Gancho para orelha Controle de toque IPX5 À prova d'água Elétrico Exibição de quantidade', 'brand 73', TRUE, 85, 119.55, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Áudio', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('89c58b33-f04a-40e5-93e2-a616387a9f38', 64.62, 45.74, 66.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5e907ebb-d2b3-439e-ac58-ac3557f0e8eb', 'Saída Maternidade Bebê Manta Rosa Coelha - Curioso', 'Saída Maternidade Bebê Manta Rosa Coelha - Curioso', 'brand 45', TRUE, 82, 121.99, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5e907ebb-d2b3-439e-ac58-ac3557f0e8eb', 50.94, 58.37, 85.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3bf8019f-8e0f-4702-9d85-19b583962dfd', 'Para Vivo X70 Pro V2134A V2105 Câmera de Volta Principal', 'Para Vivo X70 Pro V2134A V2105 Câmera de Volta Principal', 'brand 34', TRUE, 36, 101.08, '6cc0ec4d-0b22-498e-b28c-0b54364b1a47', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3bf8019f-8e0f-4702-9d85-19b583962dfd', 77.65, 23.01, 36.24);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('832e198a-e1bb-4674-acd2-51c4b753a4f2', 'Alameda Guilherme Rios, 532, São Damião, 97643369 Rios do Galho / MS', 515, 'casa', 'Vasconcelos do Sul', '75780-786', 'Cavalcante', 'Minas Gerais');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('832e198a-e1bb-4674-acd2-51c4b753a4f2', 422556843, 1153527996, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('9918e2d4-ebfb-41b0-a248-2913f161a791', 'Cauã Sampaio', 'ravyda-mata@example.net', '9^Q_sE4e&x', '84 6327 2145', NULL, NOW(), NOW(), 'Cau', '832e198a-e1bb-4674-acd2-51c4b753a4f2');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('e827aa43-70dd-458c-b367-8d7d81c21ffe', 'Pátio Nicole Novaes, 40, Corumbiara, 74544-335 Fonseca da Serra / MA', 854, 'comercial', 'Camargo do Campo', '64525-279', 'Cavalcanti Alegre', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('e827aa43-70dd-458c-b367-8d7d81c21ffe', 378245484, 1459360376, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('05730fa8-168b-4f42-9388-83ed7322a4df', 'Rios', '9:00-18:00', '(061) 9088-1844', '06975812330', 'e827aa43-70dd-458c-b367-8d7d81c21ffe');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('a18bc620-8460-4cae-be0a-c3daff9264a1', '9918e2d4-ebfb-41b0-a248-2913f161a791', '17203984613', NOW(), '05730fa8-168b-4f42-9388-83ed7322a4df');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bd212af5-5a3e-4682-b142-aff5452dfb7f', 'BESTOYARD 5 Conjuntos Divisor De Índice A4 Portapotty Morphie Portátil Um Divisor De Fichário Divisor De Arquivos Pastas De Escritório Bloco De Notas Digital Divisores De Página Divisórias', 'BESTOYARD 5 Conjuntos Divisor De Índice A4 Portapotty Morphie Portátil Um Divisor De Fichário Divisor De Arquivos Pastas De Escritório Bloco De Notas Digital Divisores De Página Divisórias', 'brand 84', TRUE, 94, 231.32, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bd212af5-5a3e-4682-b142-aff5452dfb7f', 85.87, 17.91, 90.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('55b7bd55-4f71-4ac3-ae94-020623481d38', 'Perfume Acácia & Lima-Limão 100ml Feminino - Blend de Óleo Essencial Natural + Perfume de presente', 'Perfume Acácia & Lima-Limão 100ml Feminino - Blend de Óleo Essencial Natural + Perfume de presente', 'brand 63', TRUE, 35, 0.0, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('55b7bd55-4f71-4ac3-ae94-020623481d38', 51.74, 36.11, 88.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4a105823-84d6-4c96-bbc3-d7eafc3e8532', 'HONMEET 3 Pçs Brinquedo De Corda Brinquedos De Plástico Playes Animais Brinquedos De Banho Brinquedos De Banho Para Crianças Relógio Brinquedos De Primavera Para Crianças Coruja Relógio', 'HONMEET 3 Pçs Brinquedo De Corda Brinquedos De Plástico Playes Animais Brinquedos De Banho Brinquedos De Banho Para Crianças Relógio Brinquedos De Primavera Para Crianças Coruja Relógio', 'brand 52', TRUE, 55, 45.7, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4a105823-84d6-4c96-bbc3-d7eafc3e8532', 74.67, 37.3, 97.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b13359e3-1cc0-48cf-bd3a-44ea0680bcf3', 'Hohopeti Comprimidos De Desodorante Para Gatos Caixa De Areia Autolimpante Caixa De Areia Com Capuz Eliminador De 9Pcs Filtros De Carvão Ativado Filtros De Caixa De Areia Para Gatos', 'Hohopeti Comprimidos De Desodorante Para Gatos Caixa De Areia Autolimpante Caixa De Areia Com Capuz Eliminador De 9Pcs Filtros De Carvão Ativado Filtros De Caixa De Areia Para Gatos', 'brand 77', TRUE, 21, 39.1, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b13359e3-1cc0-48cf-bd3a-44ea0680bcf3', 12.76, 65.73, 70.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1815848b-ffb0-40d7-ba94-fdcd6359f4eb', 'Inteligência emocional: As melhores práticas para você desenvolver as habilidades centrais para seu sucesso no trabalho e em seus relacionamentos (10 leituras essenciais - HBR)', 'Inteligência emocional: As melhores práticas para você desenvolver as habilidades centrais para seu sucesso no trabalho e em seus relacionamentos (10 leituras essenciais - HBR)', 'brand 89', TRUE, 42, 16.62, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1815848b-ffb0-40d7-ba94-fdcd6359f4eb', 94.69, 61.74, 43.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9edd0f36-ecee-4d7e-bd04-1e4b0b7b5c99', 'Gatuida Fone De Ouvido Fone De Ouvido Fone De Ouvido Gamer Fone De Ouvido Gamer Fone De Ouvido Gamer Fone De Ouvido Com Cancelamento De Ruído Heaphones Fones De Ouvido N5 Abs Preto', 'Gatuida Fone De Ouvido Fone De Ouvido Fone De Ouvido Gamer Fone De Ouvido Gamer Fone De Ouvido Gamer Fone De Ouvido Com Cancelamento De Ruído Heaphones Fones De Ouvido N5 Abs Preto', 'brand 83', TRUE, 1, 0.0, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Áudio', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9edd0f36-ecee-4d7e-bd04-1e4b0b7b5c99', 22.32, 93.39, 37.77);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0ebf76d1-db77-4048-a375-676cf97e08eb', 'Escovas de cabelo duráveis, escova de cabelo, escova de cabelo, salão para cabeleireiros barbeiros', 'Escovas de cabelo duráveis, escova de cabelo, escova de cabelo, salão para cabeleireiros barbeiros', 'brand 62', TRUE, 24, 44.65, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0ebf76d1-db77-4048-a375-676cf97e08eb', 20.18, 51.09, 54.32);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2f944e3e-293f-4eb8-b409-3dfbfebac98c', 'Modelo de barba modelo de barba estilo seguro modelo de barba preenchimento de barba portátil modelador de barba', 'Modelo de barba modelo de barba estilo seguro modelo de barba preenchimento de barba portátil modelador de barba', 'brand 39', TRUE, 96, 38.16, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2f944e3e-293f-4eb8-b409-3dfbfebac98c', 94.57, 49.75, 85.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a234a14d-4beb-48ed-ba46-01df65bf0cbf', 'Greensen Filtro de substituição para purificador de ar, 4 peças de filtro de substituição universal de esponja de carbono para purificador de ar compatível Holmes Total AER1 Series', 'Greensen Filtro de substituição para purificador de ar, 4 peças de filtro de substituição universal de esponja de carbono para purificador de ar compatível Holmes Total AER1 Series', 'brand 71', TRUE, 45, 54.94, '05730fa8-168b-4f42-9388-83ed7322a4df', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a234a14d-4beb-48ed-ba46-01df65bf0cbf', 88.79, 33.0, 60.92);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b5525aa7-bc0f-4bee-861f-1ef5e6103d24', 'Recanto Viana, 3, Antonio Ribeiro De Abreu 1ª Seção, 69309-798 Barbosa / RJ', 165, 'casa', 'Borges', '21205-779', 'Silveira', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b5525aa7-bc0f-4bee-861f-1ef5e6103d24', -166035808, 208657050, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2e146820-d301-4efe-af3d-94c2c0003b31', 'João Gabriel Alves', 'cunhavicente@example.org', 'Q+1_&D(o!v', '11 1862 9410', NULL, NOW(), NOW(), 'Joã', 'b5525aa7-bc0f-4bee-861f-1ef5e6103d24');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('7d4833be-a48f-4087-a802-f3d03934d466', 'Praça Ryan Pires, 63, Vila Das Oliveiras, 61999817 Câmara / PR', 258, 'comercial', 'Peixoto das Pedras', '78013-470', 'Nogueira', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('7d4833be-a48f-4087-a802-f3d03934d466', -345208497, -151354821, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('63821403-b695-41b2-8600-2880d9c1edec', 'Martins Pastor e Filhos', '9:00-18:00', '11 3797-8474', '42875369083', '7d4833be-a48f-4087-a802-f3d03934d466');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('42f9d9e4-b09b-4362-87ac-71e64d34dcf1', '2e146820-d301-4efe-af3d-94c2c0003b31', '36705891203', NOW(), '63821403-b695-41b2-8600-2880d9c1edec');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7b506375-e2c5-4c59-a5c3-ce769784bd37', 'Organizador multifuncional de chave de fenda, organizadores de ferramentas de madeira de bambu e armazenamento de telefone de mesa para reparo de pinças, suporte de peças de telefone, organizador de bancada', 'Organizador multifuncional de chave de fenda, organizadores de ferramentas de madeira de bambu e armazenamento de telefone de mesa para reparo de pinças, suporte de peças de telefone, organizador de bancada', 'brand 27', TRUE, 19, 138.37, '63821403-b695-41b2-8600-2880d9c1edec', 'Organizadores de Ferramentas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7b506375-e2c5-4c59-a5c3-ce769784bd37', 88.55, 97.64, 75.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('80bcb55d-d967-4da2-8c59-640cd3d310c6', 'Kodak Câmera digital PIXPRO Astro Zoom AZ252-WH de 16 MP com zoom óptico de 25 x e LCD de 3 polegadas (branca)', 'Kodak Câmera digital PIXPRO Astro Zoom AZ252-WH de 16 MP com zoom óptico de 25 x e LCD de 3 polegadas (branca)', 'brand 16', TRUE, 34, 0.0, '63821403-b695-41b2-8600-2880d9c1edec', 'Câmeras Digitais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('80bcb55d-d967-4da2-8c59-640cd3d310c6', 30.55, 14.4, 10.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d00e6fb7-e32d-4673-afed-f04e8df1b797', 'Mochila,Lianai 50L Resistente à água desporto ao ar livre Caminhadas Camping Viagem Mochila Pacote de Montanhismo Escalada Mochila Trekking saco mochila com capa de chuva', 'Mochila,Lianai 50L Resistente à água desporto ao ar livre Caminhadas Camping Viagem Mochila Pacote de Montanhismo Escalada Mochila Trekking saco mochila com capa de chuva', 'brand 100', TRUE, 86, 187.57, '63821403-b695-41b2-8600-2880d9c1edec', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d00e6fb7-e32d-4673-afed-f04e8df1b797', 58.73, 19.66, 87.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('41413503-d057-437f-939d-60b521fd7519', 'Pintura em uma foto', 'Pintura em uma foto', 'brand 9', TRUE, 67, 0.0, '63821403-b695-41b2-8600-2880d9c1edec', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('41413503-d057-437f-939d-60b521fd7519', 13.53, 37.23, 93.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('299988fd-348a-4e2c-9b20-82206347b428', 'O ESPELHO - ( ZERKALO ) [ BLU-RAY ] Andrei Tarkovsky', 'O ESPELHO - ( ZERKALO ) [ BLU-RAY ] Andrei Tarkovsky', 'brand 93', TRUE, 21, 74.9, '63821403-b695-41b2-8600-2880d9c1edec', 'DVD e Blu-Ray', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('299988fd-348a-4e2c-9b20-82206347b428', 13.29, 49.32, 44.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('142c6701-86c4-4949-9461-de820da908a9', 'HAPINARY 2 Peças De Aço Inoxidável Mais Talheres Alimentador De Pássaros Colher Para Gaiola Alimentador De Casa De Pássaros Colher Pá De Alimentos Para Pássaros Acessórios Para Pássaros', 'HAPINARY 2 Peças De Aço Inoxidável Mais Talheres Alimentador De Pássaros Colher Para Gaiola Alimentador De Casa De Pássaros Colher Pá De Alimentos Para Pássaros Acessórios Para Pássaros', 'brand 56', TRUE, 74, 37.17, '63821403-b695-41b2-8600-2880d9c1edec', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('142c6701-86c4-4949-9461-de820da908a9', 25.37, 10.29, 10.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7c2fb7e9-2c90-4485-a84c-420c3e9f1e98', 'Abbott Elementary: The Complete First Season (DVD) [DVD]', 'Abbott Elementary: The Complete First Season (DVD) [DVD]', 'brand 10', TRUE, 47, 392.0, '63821403-b695-41b2-8600-2880d9c1edec', 'Programas de TV', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7c2fb7e9-2c90-4485-a84c-420c3e9f1e98', 61.15, 65.07, 26.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d5e20655-3934-4810-8827-2a048306a2b4', 'Mini fogão elétrico, fogão elétrico portátil peso leve para cozinha', 'Mini fogão elétrico, fogão elétrico portátil peso leve para cozinha', 'brand 55', TRUE, 17, 112.49, '63821403-b695-41b2-8600-2880d9c1edec', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d5e20655-3934-4810-8827-2a048306a2b4', 21.91, 79.17, 40.78);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('38b9a976-54db-4f53-a972-8a0f67aa09e1', '2 Pçs Gancho De Aço Inoxidável Ganchos Externos Para Pendurar Ganchos De Metal Relógio Esportivo Relógio Lagosta Data Semana Relógio Clipe Mochila Relógio De Bolso Luminoso', '2 Pçs Gancho De Aço Inoxidável Ganchos Externos Para Pendurar Ganchos De Metal Relógio Esportivo Relógio Lagosta Data Semana Relógio Clipe Mochila Relógio De Bolso Luminoso', 'brand 39', TRUE, 52, 135.77, '63821403-b695-41b2-8600-2880d9c1edec', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('38b9a976-54db-4f53-a972-8a0f67aa09e1', 11.32, 61.76, 30.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2cc2e2ae-39a5-4f56-89d6-45a26ce9ee85', 'UPERSONIC SC-5710BDL Rockchip 1GB de memória 8GB Flash Storage 10" 1024 x 600 10" Quad Core Android 8.1 Tablet Plus capa para teclado Android 8.1 (Oreo)', 'UPERSONIC SC-5710BDL Rockchip 1GB de memória 8GB Flash Storage 10" 1024 x 600 10" Quad Core Android 8.1 Tablet Plus capa para teclado Android 8.1 (Oreo)', 'brand 3', TRUE, 29, 0.0, '63821403-b695-41b2-8600-2880d9c1edec', 'Tablets', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2cc2e2ae-39a5-4f56-89d6-45a26ce9ee85', 72.45, 64.38, 15.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3e247b8b-dabd-42a9-94e8-430e08150eb2', 'Corda Raquete Tênis Hyper-G 17 1.20mm 200M', 'Corda Raquete Tênis Hyper-G 17 1.20mm 200M', 'brand 82', TRUE, 65, 1266.06, '63821403-b695-41b2-8600-2880d9c1edec', 'Esportes com Raquete', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3e247b8b-dabd-42a9-94e8-430e08150eb2', 47.15, 23.83, 43.32);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8196cd71-19d2-426c-a234-23ef404e4f53', 'Estação Valentim Ramos, 22, Vista Alegre, 68849-128 Gomes / MA', 282, 'casa', 'Brito do Campo', '19315-402', 'das Neves', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8196cd71-19d2-426c-a234-23ef404e4f53', 224213184, -1321394653, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('1db12e9f-b89c-4b84-b764-c5aba8cfadb6', 'Alexia Caldeira', 'samuel47@example.net', '(6AOD2HylV', '+55 (051) 7395-5748', NULL, NOW(), NOW(), 'Ale', '8196cd71-19d2-426c-a234-23ef404e4f53');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4e9249d5-dcbe-4087-86fb-96f77d027ee7', 'Aeroporto Rocha, 91, Vila Cloris, 11468793 da Rosa / ES', 572, 'comercial', 'Correia do Norte', '85638-777', 'Borges do Galho', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4e9249d5-dcbe-4087-86fb-96f77d027ee7', -650279798, 29170338, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Mendonça', '9:00-18:00', '+55 (061) 9793 9993', '91048563766', '4e9249d5-dcbe-4087-86fb-96f77d027ee7');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('81a09df6-c6e8-4cea-86d5-613bda3e2e40', '1db12e9f-b89c-4b84-b764-c5aba8cfadb6', '64785213035', NOW(), '198c8db8-0f05-4aec-802d-d7707c6b93fb');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ec07b8c0-7791-4d06-a7f7-c238d8235e77', '1 Peça Relógio De Pulso Feminino Relógios Femininos Relógios Infantis Relógios Luminosos Relógio Clássico Feminino Adorável Relógio De Pulso Elegante Pulseira De Couro Preto Vidro', '1 Peça Relógio De Pulso Feminino Relógios Femininos Relógios Infantis Relógios Luminosos Relógio Clássico Feminino Adorável Relógio De Pulso Elegante Pulseira De Couro Preto Vidro', 'brand 20', TRUE, 88, 0.0, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ec07b8c0-7791-4d06-a7f7-c238d8235e77', 35.62, 63.62, 81.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('67971372-d8d8-4c1b-84f9-62b4b109b5a9', 'Bolsa feminina de lona durável com grande capacidade para compras e árvores florestais verde primavera', 'Bolsa feminina de lona durável com grande capacidade para compras e árvores florestais verde primavera', 'brand 47', TRUE, 82, 100.97, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Bolsas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('67971372-d8d8-4c1b-84f9-62b4b109b5a9', 93.4, 57.09, 54.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2280309c-65db-4d1f-bc59-fd3f8034340f', 'SHOWERORO Cobertura De Bife De Aço Inoxidável Para Grelha Cobertura Para Comida Cobertura Para Barraca Cobertura Redonda Para Grelha Grelha Cobertura Para Micro-Ondas Para Alimentos', 'SHOWERORO Cobertura De Bife De Aço Inoxidável Para Grelha Cobertura Para Comida Cobertura Para Barraca Cobertura Redonda Para Grelha Grelha Cobertura Para Micro-Ondas Para Alimentos', 'brand 19', TRUE, 49, 0.0, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2280309c-65db-4d1f-bc59-fd3f8034340f', 45.03, 85.26, 82.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('309a3e9d-57f9-4608-b85b-c5573e2dfbca', 'IKAXIYO Aparador manual delicado para remoção de pelos do nariz, dispositivo lavável de pelos do nariz, dispositivo', 'IKAXIYO Aparador manual delicado para remoção de pelos do nariz, dispositivo lavável de pelos do nariz, dispositivo', 'brand 31', TRUE, 65, 52.48, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('309a3e9d-57f9-4608-b85b-c5573e2dfbca', 31.02, 73.77, 41.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a8f3ffa9-7d63-4556-8970-3f5f60d6d118', 'ERINGOGO Carregador De Telefone Modificado 3 Peças Suprimentos De Celular Para Motocicleta Carregadores De Peças De Carro Adaptador De Carregamento USB USB Um Carregador', 'ERINGOGO Carregador De Telefone Modificado 3 Peças Suprimentos De Celular Para Motocicleta Carregadores De Peças De Carro Adaptador De Carregamento USB USB Um Carregador', 'brand 72', TRUE, 9, 169.37, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Carregadores de Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a8f3ffa9-7d63-4556-8970-3f5f60d6d118', 62.73, 12.23, 70.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('462fd1e3-1bb6-43f7-8c1a-f9be877082e5', 'Carros 3 3D', 'Carros 3 3D', 'brand 76', TRUE, 27, 39.9, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Filmes', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('462fd1e3-1bb6-43f7-8c1a-f9be877082e5', 12.9, 73.99, 64.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('01c55269-9691-4727-a280-00fd2c227da8', 'Trem Musical Bate e Volta com Luzes Som Trenzinho que solta Bolhas de Sabão Infantil', 'Trem Musical Bate e Volta com Luzes Som Trenzinho que solta Bolhas de Sabão Infantil', 'brand 43', TRUE, 77, 105.36, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('01c55269-9691-4727-a280-00fd2c227da8', 88.84, 83.78, 55.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d098116a-6e73-4af1-9c09-c21fda6ccc68', 'DAUERHAFT Suporte de telefone buffer, à prova de calor, suporte para celular antivibração, antiqueda, resistente para UTV', 'DAUERHAFT Suporte de telefone buffer, à prova de calor, suporte para celular antivibração, antiqueda, resistente para UTV', 'brand 9', TRUE, 14, 87.59, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Equipamento de Proteção para Pilotar Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d098116a-6e73-4af1-9c09-c21fda6ccc68', 50.11, 72.18, 31.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dc246df3-111a-4c88-8219-66c038319973', 'Bone New Era 59FIFTY WSL Aba Reta Preto', 'Bone New Era 59FIFTY WSL Aba Reta Preto', 'brand 85', TRUE, 36, 212.9, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Esportes com Raquete', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dc246df3-111a-4c88-8219-66c038319973', 34.15, 14.16, 76.61);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ae993170-4f2b-4436-9165-a7f25172aee8', 'Suplemento Alimentar Vetnil Glicopan Gold para Cães - 125ml', 'Suplemento Alimentar Vetnil Glicopan Gold para Cães - 125ml', 'brand 18', TRUE, 56, 51.9, '198c8db8-0f05-4aec-802d-d7707c6b93fb', 'Produtos para Cães', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ae993170-4f2b-4436-9165-a7f25172aee8', 48.63, 89.43, 88.54);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('a86f4b99-5e9e-4e8b-8a31-fdd5c102c583', 'Condomínio de Almeida, 97, Penha, 99557-664 Machado do Oeste / ES', 442, 'casa', 'Martins das Pedras', '85800-682', 'da Conceição', 'Minas Gerais');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('a86f4b99-5e9e-4e8b-8a31-fdd5c102c583', 164774250, 200103727, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('0bce421f-0a36-40d2-bdf2-06db7424e9ae', 'Bernardo Garcia', 'jda-rocha@example.com', '%K3L0aQy4*', '+55 51 1544 5445', NULL, NOW(), NOW(), 'Ber', 'a86f4b99-5e9e-4e8b-8a31-fdd5c102c583');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8a95e68e-00d5-470a-a612-d1d269c3b424', 'Estação Caldeira, 64, Atila De Paiva, 70072-021 Barros / GO', 394, 'comercial', 'Gomes', '27723-717', 'Sousa', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8a95e68e-00d5-470a-a612-d1d269c3b424', -433389143, -777047362, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Pires Leão - ME', '9:00-18:00', '+55 (084) 7272 5459', '78209315404', '8a95e68e-00d5-470a-a612-d1d269c3b424');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('80a695c3-c7cb-4788-897f-f59ba4984082', '0bce421f-0a36-40d2-bdf2-06db7424e9ae', '35049872197', NOW(), '98a280a7-2820-484e-9dd8-b2a1d3219ffb');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b0a14e96-5371-4c96-a97f-58267e196b2a', 'Chaveiro De São Bento Mosquetão Redondo Prateado', 'Chaveiro De São Bento Mosquetão Redondo Prateado', 'brand 34', TRUE, 38, 41.9, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b0a14e96-5371-4c96-a97f-58267e196b2a', 69.53, 35.9, 83.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d41eecbc-b37a-48d0-9611-622b196bfcb5', 'Angoily Mini Garrafas Squeeze Garrafas Aplicadoras De Ponta De Precisão 17 Peças Garrafas Squeeze Funis Para Pintura Quilling Artesanato Tinta Líquida Pintura Acrílica', 'Angoily Mini Garrafas Squeeze Garrafas Aplicadoras De Ponta De Precisão 17 Peças Garrafas Squeeze Funis Para Pintura Quilling Artesanato Tinta Líquida Pintura Acrílica', 'brand 95', TRUE, 95, 67.73, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d41eecbc-b37a-48d0-9611-622b196bfcb5', 68.56, 89.53, 26.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6dffb0f5-d795-461d-9e36-e157423ce1dc', 'ERINGOGO 16 Peças De Purificadores De Carro De Papel Para Mulheres Acessórios De Carro Fofos Purificadores De Carro Para Homens Decoração De Escritório Para Homens Espelho Retrovisor', 'ERINGOGO 16 Peças De Purificadores De Carro De Papel Para Mulheres Acessórios De Carro Fofos Purificadores De Carro Para Homens Decoração De Escritório Para Homens Espelho Retrovisor', 'brand 68', TRUE, 21, 63.05, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Peças e Acessórios para Automóveis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6dffb0f5-d795-461d-9e36-e157423ce1dc', 45.87, 31.61, 90.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a3783395-cc94-46c9-98e7-74e73eb6ebe0', 'Luvas de pesca femininas masculinas luvas esportivas para ciclismo motocicleta pesca equitação', 'Luvas de pesca femininas masculinas luvas esportivas para ciclismo motocicleta pesca equitação', 'brand 80', TRUE, 12, 49.99, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a3783395-cc94-46c9-98e7-74e73eb6ebe0', 95.0, 71.9, 10.21);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('33743420-fcd2-496a-867d-1b45569fbc64', 'Pneu 235/50 R18 97V Run Flat Ecsta Ps71 Kumho 235/50 R18', 'Pneu 235/50 R18 97V Run Flat Ecsta Ps71 Kumho 235/50 R18', 'brand 54', TRUE, 43, 1049.0, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Automotivo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('33743420-fcd2-496a-867d-1b45569fbc64', 18.32, 60.78, 46.73);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3dd00a48-4f7e-4714-a4c5-84df9b29b60f', 'Organizador de Pia Basic, 32,2 x 8,6 x 9,1 cm, Sobre Pia, Preto, Coza', 'Organizador de Pia Basic, 32,2 x 8,6 x 9,1 cm, Sobre Pia, Preto, Coza', 'brand 29', TRUE, 14, 39.99, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Organização e Armazenamento para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3dd00a48-4f7e-4714-a4c5-84df9b29b60f', 98.27, 63.84, 90.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f820967a-0b9c-4c9a-90a1-794986e9273e', 'Tecido Tricoline 100% alg. 5 paninhos medindo 50x75 cada. Kit Puppies', 'Tecido Tricoline 100% alg. 5 paninhos medindo 50x75 cada. Kit Puppies', 'brand 24', TRUE, 13, 78.0, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f820967a-0b9c-4c9a-90a1-794986e9273e', 37.37, 26.35, 98.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('43a61b79-a0d6-46c8-a500-0454cacdf9a8', 'Antena Walkie Talkie GT-3 21 cm 136-174/400-520 MHz de alto ganho antena portátil SMA fêmea para UV-82 UV-B5 BF-F8HP UV-5RA UV-5RE UV-5R', 'Antena Walkie Talkie GT-3 21 cm 136-174/400-520 MHz de alto ganho antena portátil SMA fêmea para UV-82 UV-B5 BF-F8HP UV-5RA UV-5RE UV-5R', 'brand 96', TRUE, 72, 109.0, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Acessórios para Home Theater', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('43a61b79-a0d6-46c8-a500-0454cacdf9a8', 55.28, 80.51, 85.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8c258bfb-dc82-44f9-af0d-2bbb60c1c017', 'Marca Texto Lux - Pastel - Cart C/6 Cores - Tris', 'Marca Texto Lux - Pastel - Cart C/6 Cores - Tris', 'brand 57', TRUE, 89, 23.6, '98a280a7-2820-484e-9dd8-b2a1d3219ffb', 'Materiais de Escrita e Correção', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8c258bfb-dc82-44f9-af0d-2bbb60c1c017', 59.95, 29.13, 50.58);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1f96d8cc-4ef3-4560-ad20-8484cc08a56a', 'Via Davi Luiz da Mata, 52, Carlos Prates, 70843047 Peixoto / MS', 403, 'casa', 'Araújo', '28916-200', 'Nunes do Oeste', 'Mato Grosso');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1f96d8cc-4ef3-4560-ad20-8484cc08a56a', -731969287, -146435182, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('d777e9a3-15ff-4c06-a7c1-7152640388f9', 'Caroline Caldeira', 'hadassamacedo@example.net', 'Dess6KIax%', '(071) 4649 4575', NULL, NOW(), NOW(), 'Car', '1f96d8cc-4ef3-4560-ad20-8484cc08a56a');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('15cd9a7c-8e14-4801-b77e-97801ea2c15b', 'Viela Vitor Hugo Caldeira, 49, Miramar, 42939-772 Macedo / ES', 975, 'comercial', 'Nunes', '74067-692', 'Camargo de Pastor', 'Minas Gerais');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('15cd9a7c-8e14-4801-b77e-97801ea2c15b', -292734136, -5764498, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('d1328095-a8ef-4009-b716-10b456ba0521', 'Albuquerque', '9:00-18:00', '+55 (031) 0185 1092', '92137854619', '15cd9a7c-8e14-4801-b77e-97801ea2c15b');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('060f9283-4369-4d82-8339-db129ada1554', 'd777e9a3-15ff-4c06-a7c1-7152640388f9', '30569824729', NOW(), 'd1328095-a8ef-4009-b716-10b456ba0521');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eafdcb4a-d188-4473-b3f7-3068e6145400', 'Molde de bolo, ferramentas de decoração de bolos, molde de silicone para alimentos, artesanato caseiro para chocolate', 'Molde de bolo, ferramentas de decoração de bolos, molde de silicone para alimentos, artesanato caseiro para chocolate', 'brand 49', TRUE, 30, 0.0, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Assadeiras, Fôrmas e Recipientes de Forno', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eafdcb4a-d188-4473-b3f7-3068e6145400', 31.08, 58.0, 29.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('378dfbba-8755-4b0f-a6ec-8ce46e2a50e8', 'Vibrador Sem Fio Com Controle Remoto Bullet Wireless Ponto G Super Luxo (Verde Claro)', 'Vibrador Sem Fio Com Controle Remoto Bullet Wireless Ponto G Super Luxo (Verde Claro)', 'brand 94', TRUE, 82, 59.89, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('378dfbba-8755-4b0f-a6ec-8ce46e2a50e8', 91.86, 71.65, 49.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f13e82ab-54a4-4fe7-9017-2f034d086247', 'CONTROL BIO MÁSCARA DE ARGILA 150g - ADCOS', 'CONTROL BIO MÁSCARA DE ARGILA 150g - ADCOS', 'brand 48', TRUE, 42, 138.6, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f13e82ab-54a4-4fe7-9017-2f034d086247', 54.86, 62.71, 23.29);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('abf0cce0-4ba0-4f5b-92f6-a62fbeb34b70', 'Tênis PUMA Karmen L BDP feminino', 'Tênis PUMA Karmen L BDP feminino', 'brand 55', TRUE, 79, 479.99, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('abf0cce0-4ba0-4f5b-92f6-a62fbeb34b70', 55.04, 63.48, 22.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('de76f48a-865e-4d86-b58a-ca66cf5c3da3', 'Traje de banho de verão para meninas com estampa floral de vaca cruzada nas costas', 'Traje de banho de verão para meninas com estampa floral de vaca cruzada nas costas', 'brand 87', TRUE, 72, 53.81, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('de76f48a-865e-4d86-b58a-ca66cf5c3da3', 22.26, 80.66, 68.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('da68e8ba-d6fe-4d03-a3b5-6cdceeb694de', 'Cabo de TV AV A/V para Sony CCD-TRV68 CCD-TV98 CCD-TRV108 e CCD-TRV218 e', 'Cabo de TV AV A/V para Sony CCD-TRV68 CCD-TV98 CCD-TRV108 e CCD-TRV218 e', 'brand 47', TRUE, 74, 216.57, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Acessórios para Home Theater', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('da68e8ba-d6fe-4d03-a3b5-6cdceeb694de', 17.19, 85.2, 42.96);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e0a3b14d-045a-46d6-a411-d45a0bab35a3', 'Toyvian 1Pc Geometria Brinquedo De Reconhecimento Aprendizagem Precoce Brinquedo Geometria Quebra-Cabeça Geometria Placa Geometria Jigsaw Brinquedo Blocos Bambu', 'Toyvian 1Pc Geometria Brinquedo De Reconhecimento Aprendizagem Precoce Brinquedo Geometria Quebra-Cabeça Geometria Placa Geometria Jigsaw Brinquedo Blocos Bambu', 'brand 76', TRUE, 92, 155.29, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Brinquedos de Construir e de Montar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e0a3b14d-045a-46d6-a411-d45a0bab35a3', 54.12, 42.15, 34.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('89227853-4bdb-468d-8017-d8ca3ba5d6a7', 'Holibanna 20 pares de brincos infantis de pressão para meninas, brincos de princesa, brincos, joias de festa, para meninas, crianças', 'Holibanna 20 pares de brincos infantis de pressão para meninas, brincos de princesa, brincos, joias de festa, para meninas, crianças', 'brand 35', TRUE, 91, 85.08, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Brinquedos para Faz de Conta e Casinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('89227853-4bdb-468d-8017-d8ca3ba5d6a7', 80.5, 39.32, 96.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('28a7d6cf-8bb7-4744-8e49-4dfc94c032d1', 'Escova traseira de cabo longo para chuveiro, escova de limpeza corporal, banho de lavagem de corpo, escova de limpeza de pele traseira massageador com cabo longo, lavador de costas para chuveiro', 'Escova traseira de cabo longo para chuveiro, escova de limpeza corporal, banho de lavagem de corpo, escova de limpeza de pele traseira massageador com cabo longo, lavador de costas para chuveiro', 'brand 41', TRUE, 60, 51.19, 'd1328095-a8ef-4009-b716-10b456ba0521', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('28a7d6cf-8bb7-4744-8e49-4dfc94c032d1', 99.17, 82.47, 88.41);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('48ec654d-8612-4e91-a5cc-8f871d560c2a', 'Setor Fernandes, 74, Oeste, 39524345 Montenegro de Minas / PE', 60, 'casa', 'Costa de Goiás', '89513-411', 'Siqueira', 'Rio Grande do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('48ec654d-8612-4e91-a5cc-8f871d560c2a', -647969918, 1522175140, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('9a234ccb-32cf-4ad5-a99a-66c2d04fd5f0', 'Sr. Yuri Viana', 'hmartins@example.org', '6AK1dw2+!Y', '+55 (084) 6434-5695', NULL, NOW(), NOW(), 'Sr.', '48ec654d-8612-4e91-a5cc-8f871d560c2a');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4ade657e-455e-4061-a5ec-12635d16ebbc', 'Praia de Rios, 79, Funcionários, 89021898 Farias das Flores / SE', 230, 'comercial', 'Caldeira dos Dourados', '72905-823', 'Casa Grande do Oeste', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4ade657e-455e-4061-a5ec-12635d16ebbc', 581051036, 1083608650, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('a3e90519-4b5e-4364-9025-b7871bdce151', 'Cavalcanti', '9:00-18:00', '71 5235-2319', '98360751277', '4ade657e-455e-4061-a5ec-12635d16ebbc');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('1ae9681f-6eff-41ae-ad29-bba00f5158f0', '9a234ccb-32cf-4ad5-a99a-66c2d04fd5f0', '89064173222', NOW(), 'a3e90519-4b5e-4364-9025-b7871bdce151');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ccbb1d87-f293-4b3b-b67f-f5252f27edfb', 'Sapatilha Sapatinho Menina Infantil Batizado Confort 02.201J', 'Sapatilha Sapatinho Menina Infantil Batizado Confort 02.201J', 'brand 48', TRUE, 94, 69.9, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ccbb1d87-f293-4b3b-b67f-f5252f27edfb', 95.48, 64.41, 42.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0730dbad-bd0f-4af4-8c90-9933b81753e2', 'Relógio Euro Feminino Strass EU2039JW/4D', 'Relógio Euro Feminino Strass EU2039JW/4D', 'brand 79', TRUE, 40, 287.2, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0730dbad-bd0f-4af4-8c90-9933b81753e2', 46.88, 32.74, 97.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c5be7e84-5f5c-4bbb-80c1-d7f9eec15292', 'Macacão infantil com babados, estampa de bolinhas e bolinhas, conjunto de roupas e conjunto de presente para bebês meninas', 'Macacão infantil com babados, estampa de bolinhas e bolinhas, conjunto de roupas e conjunto de presente para bebês meninas', 'brand 44', TRUE, 60, 24.88, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c5be7e84-5f5c-4bbb-80c1-d7f9eec15292', 43.37, 75.53, 32.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0e10b41-6e6e-4b87-84f8-e2148c7543a6', 'TD 0509 - Desafios Ambientais da Economia Brasileira', 'TD 0509 - Desafios Ambientais da Economia Brasileira', 'brand 18', TRUE, 33, 0.0, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0e10b41-6e6e-4b87-84f8-e2148c7543a6', 67.61, 52.43, 87.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e12c9aca-1582-42ca-ab90-0941c8633d06', 'Cálice de cálcio, VIDAYA feito à mão vintage cobre puro gravura flor padrão metal em relevo vinho cobre pedras preciosas, copos medievais góticas, 50 ml, pacote com 2', 'Cálice de cálcio, VIDAYA feito à mão vintage cobre puro gravura flor padrão metal em relevo vinho cobre pedras preciosas, copos medievais góticas, 50 ml, pacote com 2', 'brand 49', TRUE, 81, 269.0, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'Copos e Taças', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e12c9aca-1582-42ca-ab90-0941c8633d06', 82.41, 68.52, 88.8);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f9890a8e-d780-49d3-b901-e054b701e988', 'Lustre Pendente Esfera Aramado Cobre 15cm', 'Lustre Pendente Esfera Aramado Cobre 15cm', 'brand 73', TRUE, 21, 81.9, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'Iluminação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f9890a8e-d780-49d3-b901-e054b701e988', 65.2, 43.26, 66.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6cb9a03f-2471-4814-9cec-dc496ccaef13', 'Elástico Extensor Exercicio Funcional Até 100 libras Kit Elástico Extensor Treinamento Pilates Exercícios Academia Acessórios 11 Peças', 'Elástico Extensor Exercicio Funcional Até 100 libras Kit Elástico Extensor Treinamento Pilates Exercícios Academia Acessórios 11 Peças', 'brand 43', TRUE, 89, 39.9, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6cb9a03f-2471-4814-9cec-dc496ccaef13', 93.07, 51.09, 14.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ac5b798b-34e2-459a-b0fd-5aed19b539d0', 'Compacto Duplo Capa Sanduiche Paulinho da Viola Sinal Fechado Foi Um Rio Que Passou Em Minha Vida Ruas Que Sonhei Nada de Novo - 1969 - Odeon', 'Compacto Duplo Capa Sanduiche Paulinho da Viola Sinal Fechado Foi Um Rio Que Passou Em Minha Vida Ruas Que Sonhei Nada de Novo - 1969 - Odeon', 'brand 82', TRUE, 92, 0.0, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'Música Nacional', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ac5b798b-34e2-459a-b0fd-5aed19b539d0', 94.87, 77.16, 73.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8e6db9b6-9996-4f6c-a8bf-8a03822c27e6', 'Game & Watch Super Mario Bros. Color Screen - Nintendo', 'Game & Watch Super Mario Bros. Color Screen - Nintendo', 'brand 20', TRUE, 52, 0.0, 'a3e90519-4b5e-4364-9025-b7871bdce151', 'Games', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8e6db9b6-9996-4f6c-a8bf-8a03822c27e6', 59.98, 24.5, 74.22);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b40f8648-0b16-4fd1-8f8b-9446530d208e', 'Via Nascimento, 781, Conjunto Capitão Eduardo, 59413525 Andrade / TO', 564, 'casa', 'Alves da Prata', '35946-264', 'Correia', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b40f8648-0b16-4fd1-8f8b-9446530d208e', 126942700, 1262617705, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('339ffd5b-ec40-431d-8b44-73851c5d3acf', 'Yasmin da Paz', 'lavinia30@example.com', '%9uQFyDcN1', '+55 11 3282-8971', NULL, NOW(), NOW(), 'Yas', 'b40f8648-0b16-4fd1-8f8b-9446530d208e');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('31d7272e-0900-4242-89cc-28eb6a2a37aa', 'Lagoa Sales, 352, Ápia, 71016310 Araújo / AC', 566, 'comercial', 'Monteiro', '53151-955', 'Camargo', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('31d7272e-0900-4242-89cc-28eb6a2a37aa', 227345412, 478141838, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Guerra S/A', '9:00-18:00', '11 8166-7610', '25397461873', '31d7272e-0900-4242-89cc-28eb6a2a37aa');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('55902eed-78a0-46e5-b724-f45dc5945411', '339ffd5b-ec40-431d-8b44-73851c5d3acf', '37421095616', NOW(), 'acfbbbc2-4e44-439a-9cde-24b805a3a426');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9ea5e745-28e4-4792-b93c-6ba80cc8053f', 'Capacete Articulável Moto Peels U-RB2 Classic Azul/Prata 58', 'Capacete Articulável Moto Peels U-RB2 Classic Azul/Prata 58', 'brand 20', TRUE, 20, 549.9, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Acessórios e Peças para Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9ea5e745-28e4-4792-b93c-6ba80cc8053f', 62.59, 49.52, 81.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('269239a1-f388-4151-9758-971bc2de9d70', 'Decalque de espelho de carro princesa passageiro, adesivos fofos para espelho retrovisor de janela de carro, acessórios engraçados para carro decalque de espelho de carro presentes de dia dos namorados para relacionamento engraçado namorada', 'Decalque de espelho de carro princesa passageiro, adesivos fofos para espelho retrovisor de janela de carro, acessórios engraçados para carro decalque de espelho de carro presentes de dia dos namorados para relacionamento engraçado namorada', 'brand 7', TRUE, 2, 33.26, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Automotivo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('269239a1-f388-4151-9758-971bc2de9d70', 99.79, 76.85, 68.37);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0aa5b394-1bb0-40d1-a738-d28a54755665', 'Sunga Homens Nova roupa de banho sunga masculina impressão homens natação shorts swimsuit (Color : 1, Size : S)', 'Sunga Homens Nova roupa de banho sunga masculina impressão homens natação shorts swimsuit (Color : 1, Size : S)', 'brand 95', TRUE, 58, 164.66, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Equipamento de Natação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0aa5b394-1bb0-40d1-a738-d28a54755665', 86.7, 62.09, 30.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4d419c58-4db4-47a3-9c1d-cffd72a6e9ef', 'Dimensione Radio', 'Dimensione Radio', 'brand 15', TRUE, 40, 0.0, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Fire TV Stick Apps', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4d419c58-4db4-47a3-9c1d-cffd72a6e9ef', 87.13, 74.27, 71.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6ec45a75-1d4b-4f58-a90a-9be053c94b2d', 'Organizador de Maquiagem, Organizador de Cuidados Com a Pele de Plástico Durável para Banheiro (Off white)', 'Organizador de Maquiagem, Organizador de Cuidados Com a Pele de Plástico Durável para Banheiro (Off white)', 'brand 38', TRUE, 87, 285.29, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6ec45a75-1d4b-4f58-a90a-9be053c94b2d', 74.63, 63.61, 41.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3ee475b4-f7b2-436f-b02b-5e0356727386', 'Mini fogareiro de mochila Mini queimador de álcool ecológico com vedações de borracha para alta eficiência de combustão', 'Mini fogareiro de mochila Mini queimador de álcool ecológico com vedações de borracha para alta eficiência de combustão', 'brand 37', TRUE, 81, 63.81, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3ee475b4-f7b2-436f-b02b-5e0356727386', 75.61, 85.74, 56.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c652aa8f-e362-4142-b94c-fdef3332ee19', 'Domary 30M Tubo de Drenagem Esgoto Câmera de Inspeção IP68 Impermeável Endoscópio Industrial Sistema de Inspeção de Boroscópio Câmera Cobra 7"Monitor LCD 12 LEDs', 'Domary 30M Tubo de Drenagem Esgoto Câmera de Inspeção IP68 Impermeável Endoscópio Industrial Sistema de Inspeção de Boroscópio Câmera Cobra 7"Monitor LCD 12 LEDs', 'brand 98', TRUE, 42, 4519.68, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Proteção e Segurança', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c652aa8f-e362-4142-b94c-fdef3332ee19', 92.74, 26.84, 99.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bb7590c0-8526-4ab3-b6fe-84ce1d6c682f', 'Computador Completo Intel Core i7 16GB SSD 512GB Monitor LED 17.1" Windows 10 3green 3green Top 3GT-035', 'Computador Completo Intel Core i7 16GB SSD 512GB Monitor LED 17.1" Windows 10 3green 3green Top 3GT-035', 'brand 81', TRUE, 82, 2090.0, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Computadores Desktop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bb7590c0-8526-4ab3-b6fe-84ce1d6c682f', 12.72, 80.65, 38.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f6158ece-188e-49f2-bfc1-e18f78e7cf20', 'Escova de limpeza profissional Guzheng premium Guzheng escova de limpeza', 'Escova de limpeza profissional Guzheng premium Guzheng escova de limpeza', 'brand 37', TRUE, 45, 0.0, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f6158ece-188e-49f2-bfc1-e18f78e7cf20', 17.44, 55.52, 98.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('29c6c53a-9588-47e2-9205-6596dc2a564e', 'Protetor solar hidratante 100ml protetor solar FPS90PA++ calmante refrescante proteção UV reparação para homens mulheres acampamento ao ar livre', 'Protetor solar hidratante 100ml protetor solar FPS90PA++ calmante refrescante proteção UV reparação para homens mulheres acampamento ao ar livre', 'brand 87', TRUE, 86, 50.73, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('29c6c53a-9588-47e2-9205-6596dc2a564e', 36.65, 48.11, 27.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('45be9770-b920-4e9d-b37c-328d5da0c289', 'Toalha esfoliante, esfoliante corporal de linho de algodão para chuveiro, spa para homens e mulheres', 'Toalha esfoliante, esfoliante corporal de linho de algodão para chuveiro, spa para homens e mulheres', 'brand 27', TRUE, 55, 31.22, 'acfbbbc2-4e44-439a-9cde-24b805a3a426', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('45be9770-b920-4e9d-b37c-328d5da0c289', 95.33, 66.59, 20.75);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c7f16000-18ec-4707-bdfe-db650e9509bb', 'Estrada Viana, 23, Alípio De Melo, 67133-983 Sampaio / RR', 393, 'casa', 'Moura', '88043-336', 'Marques', 'Pará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c7f16000-18ec-4707-bdfe-db650e9509bb', -379734300, 487432074, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('fa188111-6dfc-4bb5-8050-8d5fc7e6c63b', 'Alexia Novais', 'carvalhocarolina@example.net', '6wO7lEN!%8', '+55 (081) 4135 6816', NULL, NOW(), NOW(), 'Ale', 'c7f16000-18ec-4707-bdfe-db650e9509bb');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('0f74250e-ef37-4e50-8cde-43a28a638f4e', 'Condomínio Emanuelly Porto, 14, Ouro Preto, 12553-592 Pacheco de Rocha / PA', 172, 'comercial', 'Porto', '71271-302', 'Casa Grande de Goiás', 'Pará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('0f74250e-ef37-4e50-8cde-43a28a638f4e', -843075793, 692430137, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('d9668f51-368d-4c4b-9444-4cab06e9d100', 'Nunes Jesus - ME', '9:00-18:00', '+55 21 1930 5500', '52804791360', '0f74250e-ef37-4e50-8cde-43a28a638f4e');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('58e7d103-6f7b-40aa-a6cb-b56c1a2ef530', 'fa188111-6dfc-4bb5-8050-8d5fc7e6c63b', '04139562706', NOW(), 'd9668f51-368d-4c4b-9444-4cab06e9d100');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('576b2b6a-e09b-4d3a-a57b-b4c96bd49753', 'K-Sex Natural Gel Bg com 50G, K-Sex', 'K-Sex Natural Gel Bg com 50G, K-Sex', 'brand 75', TRUE, 51, 9.2, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('576b2b6a-e09b-4d3a-a57b-b4c96bd49753', 92.97, 61.09, 72.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1389aed3-ee3b-46af-97ee-c008b99f9056', 'Bolsa aerial para transporte de cães e gatos em avião (43x31,5x20 cm) Preta', 'Bolsa aerial para transporte de cães e gatos em avião (43x31,5x20 cm) Preta', 'brand 38', TRUE, 31, 203.0, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1389aed3-ee3b-46af-97ee-c008b99f9056', 25.88, 24.65, 69.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('815c15e0-35b0-4bc7-8a86-283967fded1b', 'Máquina de torrar café doméstico, torrador de café elétrico, aço inoxidável, temperatura ajustável, máquina de assar café, termostato, 110 V needed', 'Máquina de torrar café doméstico, torrador de café elétrico, aço inoxidável, temperatura ajustável, máquina de assar café, termostato, 110 V needed', 'brand 89', TRUE, 69, 962.49, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('815c15e0-35b0-4bc7-8a86-283967fded1b', 14.35, 89.4, 42.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('999e1a41-20ea-4c90-87a9-3d2227698c3d', 'Moedor de café Manual, Moedor de café Manual Com Núcleo de Cerâmica Moedor de Grãos de café, Moinho de Grãos, Ferro Fundido, Moinho Manual de Pimenta, Tempero, Máquina de Moagem', 'Moedor de café Manual, Moedor de café Manual Com Núcleo de Cerâmica Moedor de Grãos de café, Moinho de Grãos, Ferro Fundido, Moinho Manual de Pimenta, Tempero, Máquina de Moagem', 'brand 26', TRUE, 55, 0.0, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('999e1a41-20ea-4c90-87a9-3d2227698c3d', 83.39, 69.36, 79.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d9382e1c-e442-484d-a8a8-f7cf03701b95', 'Detergente Lava-Louças Glicerina Girando Sol, Girando Sol, Castanho, 500 ml (Pacote de 1)', 'Detergente Lava-Louças Glicerina Girando Sol, Girando Sol, Castanho, 500 ml (Pacote de 1)', 'brand 57', TRUE, 78, 6.99, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'Saúde e Cuidados Pessoais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d9382e1c-e442-484d-a8a8-f7cf03701b95', 95.86, 48.59, 72.35);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('974dcb86-3261-48df-a4b9-af2faa77b384', 'Mochila para laptop de viagem, bolsa de ombro universitário, bolsa escolar, presentes de Natal para homens e mulheres', 'Mochila para laptop de viagem, bolsa de ombro universitário, bolsa escolar, presentes de Natal para homens e mulheres', 'brand 99', TRUE, 73, 188.89, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'Malas e Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('974dcb86-3261-48df-a4b9-af2faa77b384', 87.95, 28.84, 23.13);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('32bdf99f-e583-4642-877a-46668581c780', 'Gel Lubrificante Corporal Lubrisex - 60g, A Sós', 'Gel Lubrificante Corporal Lubrisex - 60g, A Sós', 'brand 22', TRUE, 43, 26.8, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('32bdf99f-e583-4642-877a-46668581c780', 25.33, 68.68, 93.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c43952b1-38bd-4805-b287-fac051147377', 'Brincos pendentes de prata esterlina 925 círculo amarelo gota joias finas para mulheres presentes para ela, Prata esterlina Cristal', 'Brincos pendentes de prata esterlina 925 círculo amarelo gota joias finas para mulheres presentes para ela, Prata esterlina Cristal', 'brand 23', TRUE, 41, 628.75, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c43952b1-38bd-4805-b287-fac051147377', 40.04, 15.73, 61.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4337e043-3129-4779-8de0-650d615af4be', 'ARMACAO SWAROVSKI SK5304 53005', 'ARMACAO SWAROVSKI SK5304 53005', 'brand 17', TRUE, 45, 1069.33, 'd9668f51-368d-4c4b-9444-4cab06e9d100', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4337e043-3129-4779-8de0-650d615af4be', 34.69, 18.69, 10.38);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('feceb31c-4d8a-49c9-ab39-2cb652594551', 'Condomínio de da Costa, 86, Santo André, 34834460 Pimenta de Goiás / SE', 642, 'casa', 'Farias', '76095-615', 'Cavalcanti', 'Mato Grosso');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('feceb31c-4d8a-49c9-ab39-2cb652594551', -746359317, 738367294, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('7f9db9de-f9d1-4c35-bd11-ff34623bd8b8', 'Cauã Nogueira', 'ravyda-paz@example.com', '^tD5+mFqsb', '61 9197-8663', NULL, NOW(), NOW(), 'Cau', 'feceb31c-4d8a-49c9-ab39-2cb652594551');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3ff49c67-b288-407d-9887-6f8c0b843a0d', 'Esplanada Ravi Lucca Machado, 1, Vila Jardim Montanhes, 58917-177 da Paz de Pacheco / ES', 298, 'comercial', 'Gomes do Sul', '96263-510', 'da Mota do Oeste', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3ff49c67-b288-407d-9887-6f8c0b843a0d', 393348947, 76312960, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('eb63237f-6522-4ca4-a72e-13e130a47b84', 'Pimenta - EI', '9:00-18:00', '+55 41 7052-2107', '32970685159', '3ff49c67-b288-407d-9887-6f8c0b843a0d');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('3ea003a5-721c-4865-8ef5-5f0908cc35b6', '7f9db9de-f9d1-4c35-bd11-ff34623bd8b8', '98230451788', NOW(), 'eb63237f-6522-4ca4-a72e-13e130a47b84');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a724d1f5-da43-46d0-833f-b2019f664755', 'Jogo O Grande Colecionador de Brinquedos, Estrela', 'Jogo O Grande Colecionador de Brinquedos, Estrela', 'brand 44', TRUE, 40, 47.49, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a724d1f5-da43-46d0-833f-b2019f664755', 43.2, 53.63, 75.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f7291c92-bb7a-41fc-b960-b6401d7104fc', 'KALLORY Enfeites De Cabeça De Noiva Para Casamento 2Pcs Arco de Cabelo Dentes Lisos Pente de Cabe?a para a Cabe?a Bandas de Cabelo Artesanal Preto Marrom Acessórios De Cabelo Feminino', 'KALLORY Enfeites De Cabeça De Noiva Para Casamento 2Pcs Arco de Cabelo Dentes Lisos Pente de Cabe?a para a Cabe?a Bandas de Cabelo Artesanal Preto Marrom Acessórios De Cabelo Feminino', 'brand 10', TRUE, 65, 63.73, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f7291c92-bb7a-41fc-b960-b6401d7104fc', 76.83, 54.27, 69.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ded7559a-44d1-4887-a6e2-2c287e43aeec', 'BESTOYARD 9 Conjuntos De Roupas De Coelho Para Animais De Estimação Vestido De Verão Coleira De Cobaia Roupas De Furão Arnês De Furão Suprimentos De Ouriço Arnês De Coelho Roupas De Filhote', 'BESTOYARD 9 Conjuntos De Roupas De Coelho Para Animais De Estimação Vestido De Verão Coleira De Cobaia Roupas De Furão Arnês De Furão Suprimentos De Ouriço Arnês De Coelho Roupas De Filhote', 'brand 68', TRUE, 63, 248.24, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Produtos para Roedores e Pequenos Animais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ded7559a-44d1-4887-a6e2-2c287e43aeec', 82.13, 87.89, 64.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d42be7ce-cbb5-4c39-8926-920bc2b12d74', 'Calado para corrida New Balance Fresh Foam 1080 V11 feminino', 'Calado para corrida New Balance Fresh Foam 1080 V11 feminino', 'brand 51', TRUE, 54, 1862.54, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Loja de Calçados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d42be7ce-cbb5-4c39-8926-920bc2b12d74', 82.46, 81.21, 99.19);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4ec7aac9-9b9a-4669-8462-6ff2c0b36c06', 'Uma temporada no escuro: 4', 'Uma temporada no escuro: 4', 'brand 59', TRUE, 36, 62.32, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Livros em Oferta', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4ec7aac9-9b9a-4669-8462-6ff2c0b36c06', 16.3, 24.41, 29.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a276fc14-56b4-4a66-a83d-3bc2fb5d86d9', 'Túnel Retrátil Para Animais De Estimação MOUMOUTEN, Diversão Interativa Para Aliviar O Tédio, Pequeno Animal Dobrável, Tubo De Jogo Para Coelhos, Porquinhos-da-índia, Ouriços', 'Túnel Retrátil Para Animais De Estimação MOUMOUTEN, Diversão Interativa Para Aliviar O Tédio, Pequeno Animal Dobrável, Tubo De Jogo Para Coelhos, Porquinhos-da-índia, Ouriços', 'brand 32', TRUE, 91, 107.89, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Produtos para Roedores e Pequenos Animais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a276fc14-56b4-4a66-a83d-3bc2fb5d86d9', 60.9, 32.65, 13.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9688314b-ed4d-4f5d-b476-a8a43491ae6f', 'mewmewcat Capa Protetora Para Limpador De Carro,Tampa protetora anticongelante de capa protetora universal para limpador de pára-brisa, buraco do limpador de para-brisa, capa à prova de poeira', 'mewmewcat Capa Protetora Para Limpador De Carro,Tampa protetora anticongelante de capa protetora universal para limpador de pára-brisa, buraco do limpador de para-brisa, capa à prova de poeira', 'brand 45', TRUE, 40, 30.99, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Equipamento de Proteção para Pilotar Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9688314b-ed4d-4f5d-b476-a8a43491ae6f', 68.95, 18.63, 63.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a2378075-5f74-4da0-8c65-2b02396c21bb', 'Avental Do Palmeiras - Produto Oficial Licenciado (90x60 cm)', 'Avental Do Palmeiras - Produto Oficial Licenciado (90x60 cm)', 'brand 38', TRUE, 48, 68.0, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Cama, Mesa e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a2378075-5f74-4da0-8c65-2b02396c21bb', 10.16, 40.77, 68.33);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c73b0621-1a86-49ff-a041-ddba3323db2d', 'Óculos de sol esportivos polarizados com proteção UV para dirigir, ciclismo, beisebol, pesca, pesca, D120', 'Óculos de sol esportivos polarizados com proteção UV para dirigir, ciclismo, beisebol, pesca, pesca, D120', 'brand 31', TRUE, 17, 100.8, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c73b0621-1a86-49ff-a041-ddba3323db2d', 75.83, 49.32, 98.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('22ceed49-d277-49f8-b2a4-e01271841015', 'BUTIFULSIC Calculadora pequena calculadora de desenho animado calculadora de escritório calculadora de cores doces computador portátil verde sílica gel calculadora colorida calculadora versátil calculadora', 'BUTIFULSIC Calculadora pequena calculadora de desenho animado calculadora de escritório calculadora de cores doces computador portátil verde sílica gel calculadora colorida calculadora versátil calculadora', 'brand 95', TRUE, 36, 35.86, 'eb63237f-6522-4ca4-a72e-13e130a47b84', 'Calculadoras', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('22ceed49-d277-49f8-b2a4-e01271841015', 76.78, 33.2, 25.53);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('06435d4f-5da1-428f-bf4d-41328cf28332', 'Via de da Cunha, 82, Vila Tirol, 78102-161 Teixeira de Pereira / SP', 37, 'casa', 'Cavalcante de Aragão', '26299-486', 'Nogueira de Nogueira', 'Pernambuco');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('06435d4f-5da1-428f-bf4d-41328cf28332', -18104817, 606605331, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('8fd13300-d162-431f-8c2f-e249d8952eb4', 'Arthur Miguel da Cruz', 'machadoliz@example.net', '4_0M5nR%+j', '21 5173 6889', NULL, NOW(), NOW(), 'Art', '06435d4f-5da1-428f-bf4d-41328cf28332');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('41d7bd52-00c5-43d4-847c-a06e4a57286c', 'Largo de Barros, 9, Vista Alegre, 13016869 Barros / TO', 45, 'comercial', 'Moreira', '20924-699', 'Vieira de Cavalcanti', 'Pará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('41d7bd52-00c5-43d4-847c-a06e4a57286c', -839262735, 941995026, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('20357dfb-0467-479c-81ef-1128fbd0bc86', 'Melo', '9:00-18:00', '(051) 5801-9592', '20314869506', '41d7bd52-00c5-43d4-847c-a06e4a57286c');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('62f54bbb-bbd0-41a5-89f6-942cc127fdcb', '8fd13300-d162-431f-8c2f-e249d8952eb4', '47851206901', NOW(), '20357dfb-0467-479c-81ef-1128fbd0bc86');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ad47e035-d703-4357-b378-4d2e224c22ae', 'Ajustável Na Alça da de Lona Substituição Alça Da Bolsa Bolsa Crossbody Bag Belt Acessório Para As Mulheres Meninas Saco de Suprimentos', 'Ajustável Na Alça da de Lona Substituição Alça Da Bolsa Bolsa Crossbody Bag Belt Acessório Para As Mulheres Meninas Saco de Suprimentos', 'brand 32', TRUE, 14, 0.0, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ad47e035-d703-4357-b378-4d2e224c22ae', 16.02, 31.4, 76.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e9b6aa6f-2f58-4f02-b2ac-aee4783ac8e4', 'Aquecedor de XíCaras, Resfriador de XíCaras de Café PortáTil de Alta EficiêNcia 100-240V para Uso DoméStico (Plugue dos EUA)', 'Aquecedor de XíCaras, Resfriador de XíCaras de Café PortáTil de Alta EficiêNcia 100-240V para Uso DoméStico (Plugue dos EUA)', 'brand 87', TRUE, 91, 287.24, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e9b6aa6f-2f58-4f02-b2ac-aee4783ac8e4', 64.78, 24.25, 79.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fe3e54da-4fb4-4319-b009-ad973c3cee27', 'HZH Zero Gravity Folding Recliner Relaxing Chair Multi-Position Garden Espreguiçadeira para acampamento ao ar livre com encosto de cabeça ajustável (C)', 'HZH Zero Gravity Folding Recliner Relaxing Chair Multi-Position Garden Espreguiçadeira para acampamento ao ar livre com encosto de cabeça ajustável (C)', 'brand 46', TRUE, 69, 5100.99, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fe3e54da-4fb4-4319-b009-ad973c3cee27', 10.79, 45.61, 31.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f041e9e3-4b20-4010-8801-6749f9bfb647', 'BALAMI Conjunto de pratos de jantar de cerâmica 81 peças de louça de porcelana para presentes de casamento | Tigela de cereais de porcelana e prato de bife', 'BALAMI Conjunto de pratos de jantar de cerâmica 81 peças de louça de porcelana para presentes de casamento | Tigela de cereais de porcelana e prato de bife', 'brand 80', TRUE, 90, 34905.98, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Jogos de Louças e Aparelhos de Jantar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f041e9e3-4b20-4010-8801-6749f9bfb647', 96.91, 19.07, 95.77);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dcd0d853-2988-4516-94b7-46324dad1d73', 'Cortina Tecido Linho Rústico Palha 2,00M x 2,50M Com Ilhós Cromado Para Varão Simples', 'Cortina Tecido Linho Rústico Palha 2,00M x 2,50M Com Ilhós Cromado Para Varão Simples', 'brand 89', TRUE, 65, 77.96, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Produtos de Decoração para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dcd0d853-2988-4516-94b7-46324dad1d73', 73.54, 63.83, 62.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e825abb6-bab7-4d75-90fd-25b3cdfc51f2', 'Bozony 15 peças de lixas de unhas profissionais lixas laterais 100/180 lixas de unha e polidores unhas artificiais naturais bloco tampão kit de manicure', 'Bozony 15 peças de lixas de unhas profissionais lixas laterais 100/180 lixas de unha e polidores unhas artificiais naturais bloco tampão kit de manicure', 'brand 7', TRUE, 67, 48.99, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e825abb6-bab7-4d75-90fd-25b3cdfc51f2', 24.06, 85.34, 20.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bbad5399-1ba5-4074-994c-124d509f2281', 'Amosfun 2 Peças 16 Incubadora De Escalada Para Animais De Estimação Anfíbios Merch Reptilianos Reptisoil Gecko Habitat Tanque Réptil Réptil Terrário Habitat Lagarto Incubadora Réptil', 'Amosfun 2 Peças 16 Incubadora De Escalada Para Animais De Estimação Anfíbios Merch Reptilianos Reptisoil Gecko Habitat Tanque Réptil Réptil Terrário Habitat Lagarto Incubadora Réptil', 'brand 11', TRUE, 78, 70.98, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Produtos para Répteis e Anfíbios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bbad5399-1ba5-4074-994c-124d509f2281', 48.41, 82.2, 85.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('34e8a297-82b6-4654-8099-10aacd769ca3', 'Jersey Set Men's Inverno Ciclismo De Manga Longa Ciclismo Roupa Windproof Ciclismo Casaco Casaco + 19d Gel Bib Calças LGW (Color : B, Size : 4X-Large)', 'Jersey Set Men's Inverno Ciclismo De Manga Longa Ciclismo Roupa Windproof Ciclismo Casaco Casaco + 19d Gel Bib Calças LGW (Color : B, Size : 4X-Large)', 'brand 40', TRUE, 1, 212.19, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Esportes com Raquete', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('34e8a297-82b6-4654-8099-10aacd769ca3', 15.57, 61.51, 42.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('13ec6d88-a069-4b43-a05c-ffb13fd8f870', 'Srliya 10 Peças Ferramenta de Remoção de Porca Lug, Remoção de Porca Danificada Parafuso Porca Removedor de Parafuso Extrator Conjunto de Remoção Kit de Ferramentas de Rosqueamento', 'Srliya 10 Peças Ferramenta de Remoção de Porca Lug, Remoção de Porca Danificada Parafuso Porca Removedor de Parafuso Extrator Conjunto de Remoção Kit de Ferramentas de Rosqueamento', 'brand 74', TRUE, 14, 130.09, '20357dfb-0467-479c-81ef-1128fbd0bc86', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('13ec6d88-a069-4b43-a05c-ffb13fd8f870', 24.95, 33.62, 94.2);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('da85dbc4-f166-4a76-9f09-66535e0db562', 'Rua Gomes, 519, Mineirão, 98501-225 Moraes / PI', 193, 'casa', 'Casa Grande', '10434-899', 'Melo', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('da85dbc4-f166-4a76-9f09-66535e0db562', -781207536, -986612508, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4fb7e549-fc4f-4ae3-a02e-3ab25109f4f4', 'Eloah Borges', 'nascimentomelina@example.net', 'S!J1FWjf&k', '0300 822 3719', NULL, NOW(), NOW(), 'Elo', 'da85dbc4-f166-4a76-9f09-66535e0db562');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('ce4afa84-f1a9-4dde-94eb-50338d014545', 'Praia Maysa Marques, Califórnia, 58054454 Cunha / MA', 925, 'comercial', 'Nunes', '58244-288', 'Cardoso', 'Amazonas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('ce4afa84-f1a9-4dde-94eb-50338d014545', -798242239, -1787266788, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Novaes Aparecida e Filhos', '9:00-18:00', '+55 (021) 1850-3894', '47592360829', 'ce4afa84-f1a9-4dde-94eb-50338d014545');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('dcc86871-76e7-44a3-855e-6309a0d41aa9', '4fb7e549-fc4f-4ae3-a02e-3ab25109f4f4', '81629403598', NOW(), '0c99aedf-c246-4ed5-b87b-76baf006ad26');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('15cbd6bb-b4d1-4611-acf6-2fc8baf8d064', 'Régua Profissional para Corte Mimo - 40cm X 4cm', 'Régua Profissional para Corte Mimo - 40cm X 4cm', 'brand 74', TRUE, 51, 55.54, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('15cbd6bb-b4d1-4611-acf6-2fc8baf8d064', 76.19, 98.12, 57.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f5822a09-c0b5-4ae4-a859-b85dd77f459c', 'Abaodam 40 Peças Moldura De Foto De Unhas Decorações Douradas Decorações De Unhas Para Arte De Unhas Decoração Vintage Moldura Retrô Arte De Unhas Arte De Unhas 3D Encantos De Telefone', 'Abaodam 40 Peças Moldura De Foto De Unhas Decorações Douradas Decorações De Unhas Para Arte De Unhas Decoração Vintage Moldura Retrô Arte De Unhas Arte De Unhas 3D Encantos De Telefone', 'brand 69', TRUE, 28, 39.26, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f5822a09-c0b5-4ae4-a859-b85dd77f459c', 46.63, 61.15, 71.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5c9a0452-49b5-4399-b3c7-e7e34f74cbe3', 'Console Playstation 4 PS4 Slim 1TB + 1 Ano de Garantia + 20 Jogos + Bolsa PS4 Personalizada (Internacional)', 'Console Playstation 4 PS4 Slim 1TB + 1 Ano de Garantia + 20 Jogos + Bolsa PS4 Personalizada (Internacional)', 'brand 52', TRUE, 42, 0.0, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'PlayStation 4, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5c9a0452-49b5-4399-b3c7-e7e34f74cbe3', 17.54, 20.15, 82.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2c536c0f-482a-4873-b9e9-745e88ad9204', 'Compatível Com Carregador de Relógio Redmi, Cabo de Carregamento USB Magnético de 3,3 Pés, Suporte de Adaptador de Base de Carregador Smartwatch para Redmi Watch 2 2 Lite para', 'Compatível Com Carregador de Relógio Redmi, Cabo de Carregamento USB Magnético de 3,3 Pés, Suporte de Adaptador de Base de Carregador Smartwatch para Redmi Watch 2 2 Lite para', 'brand 14', TRUE, 8, 56.97, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Wearables e Tecnologia Vestível', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2c536c0f-482a-4873-b9e9-745e88ad9204', 46.65, 71.76, 80.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('157dbaed-41ba-4bb3-b4f5-f6cbe5eb95ab', 'Jogo de Matemática de Equilíbrio de Macaco Jogo de Aprendizagem de Número de Macaco Contagem de Brinquedos Escala de Peso de Macaco Brinquedos Educativos Montessori - ISA', 'Jogo de Matemática de Equilíbrio de Macaco Jogo de Aprendizagem de Número de Macaco Contagem de Brinquedos Escala de Peso de Macaco Brinquedos Educativos Montessori - ISA', 'brand 51', TRUE, 31, 78.4, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('157dbaed-41ba-4bb3-b4f5-f6cbe5eb95ab', 92.7, 62.8, 53.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('604d7478-23e8-4373-8e3f-d5f59cbd31ac', 'Tela Respirável Para Berço, Baby Deluxe, Rosa Claro', 'Tela Respirável Para Berço, Baby Deluxe, Rosa Claro', 'brand 17', TRUE, 64, 79.78, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Móveis e Decoração', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('604d7478-23e8-4373-8e3f-d5f59cbd31ac', 42.29, 94.48, 85.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e64ebe0a-cc25-47bd-ae96-49c0d4e6ef9a', 'MAGICLULU Caneta De Gel Colorida 8 Peças Canetas De Gel Prateadas Canetas Artificiais Material De Escritório Criativo Canetas De Gel Caneta De Assinatura De Papelaria Artificial', 'MAGICLULU Caneta De Gel Colorida 8 Peças Canetas De Gel Prateadas Canetas Artificiais Material De Escritório Criativo Canetas De Gel Caneta De Assinatura De Papelaria Artificial', 'brand 32', TRUE, 56, 72.38, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Materiais de Escrita e Correção', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e64ebe0a-cc25-47bd-ae96-49c0d4e6ef9a', 71.9, 49.18, 47.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('405e156e-f6fd-4b41-87ca-820cbf85aa59', 'Fone de ouvido Tradutor, 3 modos de tradução inteligente preto tradutor rápido suporta 144 idiomas, cancelamento de ruído com capa transparente para uso diário (preto)', 'Fone de ouvido Tradutor, 3 modos de tradução inteligente preto tradutor rápido suporta 144 idiomas, cancelamento de ruído com capa transparente para uso diário (preto)', 'brand 48', TRUE, 17, 0.0, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Fones de Ouvido', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('405e156e-f6fd-4b41-87ca-820cbf85aa59', 24.57, 20.54, 74.19);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('db5b6ba4-f01a-4e23-aecf-4b425a4f8d5b', 'Sistema de Osmose Reversa Membrana de ultrafiltração, elemento filtrante purificador de água de fibra oca, filtro de torneira, substituição de filtro de água Sistema de filtro de água potável de osmos', 'Sistema de Osmose Reversa Membrana de ultrafiltração, elemento filtrante purificador de água de fibra oca, filtro de torneira, substituição de filtro de água Sistema de filtro de água potável de osmos', 'brand 77', TRUE, 47, 0.0, '0c99aedf-c246-4ed5-b87b-76baf006ad26', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('db5b6ba4-f01a-4e23-aecf-4b425a4f8d5b', 55.08, 97.66, 30.55);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('01a7a14d-0e54-48ae-bc1b-bda6e7801985', 'Avenida Ramos, 34, Castanheira, 27331223 Cavalcanti de Farias / RR', 961, 'casa', 'da Rocha da Praia', '93112-952', 'Lima Grande', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('01a7a14d-0e54-48ae-bc1b-bda6e7801985', 592831828, -137743183, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('a85a240e-05d7-4b31-9a46-5a5e6d1d9fbf', 'Maria Luiza Sá', 'correiamaya@example.net', 'll!V8&Vt&g', '(084) 6776-7396', NULL, NOW(), NOW(), 'Mar', '01a7a14d-0e54-48ae-bc1b-bda6e7801985');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('a09c9c31-f2a7-4c39-943d-ef42200ba920', 'Lagoa Souza, Bom Jesus, 10467558 Alves da Mata / AL', 148, 'comercial', 'Ribeiro de Castro', '57944-683', 'da Paz Verde', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('a09c9c31-f2a7-4c39-943d-ef42200ba920', -281410012, 109466742, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('b7178a38-8c33-47de-a03d-f608cc6a4367', 'Vieira', '9:00-18:00', '(061) 7625-1056', '78295364146', 'a09c9c31-f2a7-4c39-943d-ef42200ba920');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('9c9291aa-7c8d-47cc-acf3-e10694910fac', 'a85a240e-05d7-4b31-9a46-5a5e6d1d9fbf', '98720146396', NOW(), 'b7178a38-8c33-47de-a03d-f608cc6a4367');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f97243cf-c14a-48f7-944b-7d4d5bfa78a4', 'SAFIGLE 5 Conjuntos De Shaker Conjunto De Jogos De Tabuleiro De Barra Dados Copo Conjunto De Dados De Jogo Acessórios De Tabuleiro De Damas Caixa De Dados Ktv Jogo Engraçado Copo De', 'SAFIGLE 5 Conjuntos De Shaker Conjunto De Jogos De Tabuleiro De Barra Dados Copo Conjunto De Dados De Jogo Acessórios De Tabuleiro De Damas Caixa De Dados Ktv Jogo Engraçado Copo De', 'brand 72', TRUE, 41, 96.87, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Jogos e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f97243cf-c14a-48f7-944b-7d4d5bfa78a4', 30.94, 81.61, 26.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5e9e3ed7-599a-43dc-97f3-4ae7683fab59', 'Esmalte Cor Da Moda Teu Cheiro Impala 7,5ml, Impala', 'Esmalte Cor Da Moda Teu Cheiro Impala 7,5ml, Impala', 'brand 83', TRUE, 74, 4.99, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5e9e3ed7-599a-43dc-97f3-4ae7683fab59', 77.9, 29.11, 87.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d8b4f0a4-3ab8-4384-a056-918f34d32a27', 'Acessório de Barco, Base de Controle de Direção de Leme, Peças de Controle de Leme de PVC, Acessório de Hardware de Barco de Pesca para Caiaque de Barco', 'Acessório de Barco, Base de Controle de Direção de Leme, Peças de Controle de Leme de PVC, Acessório de Hardware de Barco de Pesca para Caiaque de Barco', 'brand 90', TRUE, 54, 68.0, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Luta e Artes Marciais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d8b4f0a4-3ab8-4384-a056-918f34d32a27', 86.58, 81.08, 81.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0f3751c-d68e-4dab-a672-d1da5b20d618', 'Lanterna Cabeça Noturna Mecanico Ciclismo Recarregavel 3 Led Premium', 'Lanterna Cabeça Noturna Mecanico Ciclismo Recarregavel 3 Led Premium', 'brand 17', TRUE, 81, 90.32, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0f3751c-d68e-4dab-a672-d1da5b20d618', 61.21, 69.35, 99.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('48ff94bf-1fc6-4d42-a8e3-ddf81c57fdbd', 'Lancheira Bento Portátil, Lancheira Resistente Ao Deslizamento 4 Grades Resistência à Corrosão 1,5l Com Pauzinhos para Acampamento para Escritório para Mulheres', 'Lancheira Bento Portátil, Lancheira Resistente Ao Deslizamento 4 Grades Resistência à Corrosão 1,5l Com Pauzinhos para Acampamento para Escritório para Mulheres', 'brand 38', TRUE, 31, 0.0, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('48ff94bf-1fc6-4d42-a8e3-ddf81c57fdbd', 67.58, 66.76, 10.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4cc0a015-55c9-4ef2-b0b3-90b5e14ccf01', 'predolo Livro de aprendizagem árabe, livros de aprendizagem, para crianças, meninas, meninos, presente de aniversário', 'predolo Livro de aprendizagem árabe, livros de aprendizagem, para crianças, meninas, meninos, presente de aniversário', 'brand 67', TRUE, 73, 104.09, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4cc0a015-55c9-4ef2-b0b3-90b5e14ccf01', 39.15, 89.62, 38.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8f7905ba-f8c3-4fd5-84ea-c482fe07a76b', 'HZH Guarda-sóis de jardim de 9 pés - guarda-sol ao ar livre loja de café festa de casamento praia', 'HZH Guarda-sóis de jardim de 9 pés - guarda-sol ao ar livre loja de café festa de casamento praia', 'brand 47', TRUE, 68, 4185.99, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8f7905ba-f8c3-4fd5-84ea-c482fe07a76b', 32.43, 20.09, 34.04);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d6e3e5c2-2c7e-49cd-a08c-9f6f3bfc893d', 'SUPVOX 1Pc Moedor Ferramenta De Moagem Elétrica Moedor De Grãos De Café Moedor De Café Pequeno Moedor De Café Elétrico Ferramentas Manuais Ferramenta De Imprensa De Café Moedor Para Casa', 'SUPVOX 1Pc Moedor Ferramenta De Moagem Elétrica Moedor De Grãos De Café Moedor De Café Pequeno Moedor De Café Elétrico Ferramentas Manuais Ferramenta De Imprensa De Café Moedor Para Casa', 'brand 10', TRUE, 27, 174.21, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d6e3e5c2-2c7e-49cd-a08c-9f6f3bfc893d', 34.28, 41.74, 50.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f3091aa6-3593-4e94-87e9-92d8b09937c8', 'capa de fone de ouvido de couro absorvente de choque 2pcs leve compatível com ath m50 m50s m20 m30 m40 ath sx1', 'capa de fone de ouvido de couro absorvente de choque 2pcs leve compatível com ath m50 m50s m20 m30 m40 ath sx1', 'brand 41', TRUE, 47, 0.0, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Fones de Ouvido', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f3091aa6-3593-4e94-87e9-92d8b09937c8', 25.24, 82.35, 56.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e0c21e48-f5b9-42ca-b1d6-fd3a56428b35', 'quem é o seu jogo de simulador 3d de pai rico | jogo divertido de bebê recém-nascido impertinente para crianças | onde está sua mamãe e papai esconde-esconde', 'quem é o seu jogo de simulador 3d de pai rico | jogo divertido de bebê recém-nascido impertinente para crianças | onde está sua mamãe e papai esconde-esconde', 'brand 8', TRUE, 67, 19.48, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e0c21e48-f5b9-42ca-b1d6-fd3a56428b35', 47.52, 47.85, 55.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('21501a23-397c-4b8e-8556-c4a4af9d2dd5', 'Hemoton Presentes Adesivos 1 Par De Adesivos Estátua Decoração Enfeites De Casa Ano Novo Decorações De Parede Ano De Adesivos Auspicioso Adesivo De Porta Ano Novo Decoração Chinesa', 'Hemoton Presentes Adesivos 1 Par De Adesivos Estátua Decoração Enfeites De Casa Ano Novo Decorações De Parede Ano De Adesivos Auspicioso Adesivo De Porta Ano Novo Decoração Chinesa', 'brand 2', TRUE, 32, 58.76, 'b7178a38-8c33-47de-a03d-f608cc6a4367', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('21501a23-397c-4b8e-8556-c4a4af9d2dd5', 77.7, 77.31, 19.63);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3ec73b57-baed-4606-9359-ee6d565c7ec1', 'Colônia de Martins, Ventosa, 91550-111 Lopes / AM', 763, 'casa', 'Cirino de Aragão', '26055-148', 'Pastor', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3ec73b57-baed-4606-9359-ee6d565c7ec1', 836587240, 368872817, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('be8f7945-5409-4bdf-897f-ff806b64d41c', 'Bruno Fonseca', 'liamsousa@example.org', 'eEcIWXwb)9', '+55 81 0528-4666', NULL, NOW(), NOW(), 'Bru', '3ec73b57-baed-4606-9359-ee6d565c7ec1');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('53a64d46-4993-4d77-aa38-fc676d0745cb', 'Setor de Pimenta, Pilar, 07531-938 Casa Grande do Amparo / PI', 639, 'comercial', 'da Rosa', '60760-597', 'Almeida', 'Tocantins');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('53a64d46-4993-4d77-aa38-fc676d0745cb', -75619981, 316270000, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Garcia S/A', '9:00-18:00', '+55 61 5098 8781', '20458371653', '53a64d46-4993-4d77-aa38-fc676d0745cb');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('81d81e39-c867-44a4-a2f1-045b6a516f75', 'be8f7945-5409-4bdf-897f-ff806b64d41c', '26935874092', NOW(), 'b08a13d6-fdba-4d34-8b37-0882d9a02e42');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('74fea4b7-a116-43d9-bdc4-6e7c7a69da6e', 'Roupa para Pet Estilo Regata Personalizada do Campeonato Brasileiro Vitória 1 (Padrão, G)', 'Roupa para Pet Estilo Regata Personalizada do Campeonato Brasileiro Vitória 1 (Padrão, G)', 'brand 51', TRUE, 76, 46.7, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Produtos para Cães', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('74fea4b7-a116-43d9-bdc4-6e7c7a69da6e', 79.98, 38.02, 65.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2c802a18-d6f4-472b-969c-fa1a78431274', 'ＫＬＫＣＭＳ Bolsa de ferramentas de couro organizador de ferramentas de reparo construção durável de ferramentas multiuso para eletricista para carpinteiro', 'ＫＬＫＣＭＳ Bolsa de ferramentas de couro organizador de ferramentas de reparo construção durável de ferramentas multiuso para eletricista para carpinteiro', 'brand 92', TRUE, 77, 161.99, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Organizadores de Ferramentas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2c802a18-d6f4-472b-969c-fa1a78431274', 23.41, 45.31, 29.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('96711811-738a-44d0-a205-88fe4b4bab7a', 'Rimmel Scandaleyes Kajal para sobrancelha e forro impermeável', 'Rimmel Scandaleyes Kajal para sobrancelha e forro impermeável', 'brand 43', TRUE, 52, 138.2, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('96711811-738a-44d0-a205-88fe4b4bab7a', 55.89, 64.39, 90.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('02526dec-f800-4785-bd1a-c0868cae8d81', 'Substituição de almofadas de ouvido para Sony MDR‑XB950BT, peças de reposição de almofadas de fone de ouvido de couro PU, confortáveis de usar(azul)', 'Substituição de almofadas de ouvido para Sony MDR‑XB950BT, peças de reposição de almofadas de fone de ouvido de couro PU, confortáveis de usar(azul)', 'brand 90', TRUE, 17, 0.0, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Fones de Ouvido', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('02526dec-f800-4785-bd1a-c0868cae8d81', 24.98, 39.03, 49.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1b120138-c17a-4660-b73f-a5629805923f', 'FAMURE Relógio de açúcar no sangue,Smartwatch monitoramento glicose no sangue à prova d'água,Relógio inteligente de teste de açúcar no sangue não invasivo,relógio esportivo da moda para teste Preto', 'FAMURE Relógio de açúcar no sangue,Smartwatch monitoramento glicose no sangue à prova d'água,Relógio inteligente de teste de açúcar no sangue não invasivo,relógio esportivo da moda para teste Preto', 'brand 72', TRUE, 7, 199.99, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1b120138-c17a-4660-b73f-a5629805923f', 12.35, 22.44, 37.29);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('166da22c-05f4-43b0-9768-5b141c117ea3', 'Guarda-sol de jardim de 8,8 pés, guarda-chuva externo com manivela e função de inclinação, guarda-sol à prova de vento para praia, areia, pátio, quintal, 4 vermelhos (2 brancos)', 'Guarda-sol de jardim de 8,8 pés, guarda-chuva externo com manivela e função de inclinação, guarda-sol à prova de vento para praia, areia, pátio, quintal, 4 vermelhos (2 brancos)', 'brand 5', TRUE, 51, 0.0, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('166da22c-05f4-43b0-9768-5b141c117ea3', 34.39, 89.21, 97.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c88ee6fa-c5b5-4bfb-a380-8d5a762bfc3d', 'Vaporizador facial grande névoa nano spray hidratação profunda poros limpos nutrição introdução pele quente', 'Vaporizador facial grande névoa nano spray hidratação profunda poros limpos nutrição introdução pele quente', 'brand 14', TRUE, 64, 208.82, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Produtos para Cuidados com o Rosto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c88ee6fa-c5b5-4bfb-a380-8d5a762bfc3d', 42.31, 14.61, 25.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2a363e69-f188-450a-871b-5368fa03e11f', '1080P DVR Dash Camera Front & Inside & Traseira Gravador de Condução Tela de 2 Polegadas Suporte para Dashcam Gravação de Loop de Visão Noturna Bloqueio de Uma Tecla', '1080P DVR Dash Camera Front & Inside & Traseira Gravador de Condução Tela de 2 Polegadas Suporte para Dashcam Gravação de Loop de Visão Noturna Bloqueio de Uma Tecla', 'brand 47', TRUE, 55, 152.6, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Eletrônicos e Tecnologia Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2a363e69-f188-450a-871b-5368fa03e11f', 39.45, 59.19, 96.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('20ecbcc0-b79c-4298-ae6f-176292416faf', 'SAFIGLE 6 Pçs Brinquedo De Corda Quebra-Cabeça Brinquedos Crianças Presente Brinquedo Para Crianças Brinquedos De Banho Brinquedos Infantis Relógio Brinquedos De Primavera Para Crianças', 'SAFIGLE 6 Pçs Brinquedo De Corda Quebra-Cabeça Brinquedos Crianças Presente Brinquedo Para Crianças Brinquedos De Banho Brinquedos Infantis Relógio Brinquedos De Primavera Para Crianças', 'brand 10', TRUE, 70, 86.76, 'b08a13d6-fdba-4d34-8b37-0882d9a02e42', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('20ecbcc0-b79c-4298-ae6f-176292416faf', 21.19, 74.64, 96.96);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('21bf6adc-8f11-45a0-a00a-e098b0303b44', 'Lagoa Hadassa da Cunha, 2, Liberdade, 33556-108 Leão / PB', 777, 'casa', 'Pinto do Galho', '75340-161', 'Peixoto da Prata', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('21bf6adc-8f11-45a0-a00a-e098b0303b44', -752463688, 159583761, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('b7e5d295-33c1-4234-a926-f00620db4771', 'Carolina da Paz', 'maria-flor39@example.com', '*6uX&aAbQO', '0900 711 1888', NULL, NOW(), NOW(), 'Car', '21bf6adc-8f11-45a0-a00a-e098b0303b44');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('55e95186-3082-4c70-86c6-4a2ffc85e92a', 'Pátio da Conceição, 47, Alto Das Antenas, 45115-277 Nascimento / RS', 40, 'comercial', 'Montenegro do Oeste', '74352-946', 'Novaes', 'Ceará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('55e95186-3082-4c70-86c6-4a2ffc85e92a', -570482245, 1229722467, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Marques', '9:00-18:00', '61 1924 9497', '48310725671', '55e95186-3082-4c70-86c6-4a2ffc85e92a');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('ae4b44cf-fbae-4bd9-9289-5016fc1ac85a', 'b7e5d295-33c1-4234-a926-f00620db4771', '75832104960', NOW(), 'b508a1ac-bc4c-42be-ab24-7e44866fdda9');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bea8f339-9ee6-4742-b165-41683185b2ee', 'Star Runner 2 (Little Kid) Black/Game Royal/White 3 Little Kid M', 'Star Runner 2 (Little Kid) Black/Game Royal/White 3 Little Kid M', 'brand 53', TRUE, 57, 1049.29, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bea8f339-9ee6-4742-b165-41683185b2ee', 83.99, 24.56, 61.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4da2e79c-1fd0-4368-bedd-97e968ce347c', 'Abaodam 2 Peças Roda De Corrida De Hamster Roda De Hamster Pequena Roda De Hamster De 8 Polegadas Roda De Hamster Roda De Hamster De 12 Polegadas Decoração Silenciosa Brinquedos Exercício', 'Abaodam 2 Peças Roda De Corrida De Hamster Roda De Hamster Pequena Roda De Hamster De 8 Polegadas Roda De Hamster Roda De Hamster De 12 Polegadas Decoração Silenciosa Brinquedos Exercício', 'brand 24', TRUE, 62, 260.72, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Produtos para Roedores e Pequenos Animais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4da2e79c-1fd0-4368-bedd-97e968ce347c', 81.39, 59.92, 26.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('011ca78f-a22d-48ce-8169-e76c004c1dff', 'MOUSE GAMING OTICO RGB GALAX SLIDER-04 6.400DPI MGS04UX26RG2B0', 'MOUSE GAMING OTICO RGB GALAX SLIDER-04 6.400DPI MGS04UX26RG2B0', 'brand 77', TRUE, 94, 45.0, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Acessórios para Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('011ca78f-a22d-48ce-8169-e76c004c1dff', 85.69, 58.33, 47.8);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('331e2d99-fca6-482e-ac5b-5a98bda436f1', 'ERINGOGO 30 Peças Capa Protetora De Microfone Sem Fio Com Anel Antiderrapante Com Microfone De Espuma Sem Fio Para Falar Acessórios De Microfone Suporte De Manga De Microfone Ktv Anel De', 'ERINGOGO 30 Peças Capa Protetora De Microfone Sem Fio Com Anel Antiderrapante Com Microfone De Espuma Sem Fio Para Falar Acessórios De Microfone Suporte De Manga De Microfone Ktv Anel De', 'brand 79', TRUE, 6, 99.47, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Instrumentos Musicais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('331e2d99-fca6-482e-ac5b-5a98bda436f1', 84.97, 57.2, 21.35);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ea3c73be-68e1-4a51-94b1-d20882f40b62', 'ibasenice 2 Conjuntos De Aromaterapia Difusores De Perfume De Carro Difusores De Aroma Para Óleos Essenciais Purificador De Ar De Óleo Essencial Purificadores De Ar De Veículo Ambientador', 'ibasenice 2 Conjuntos De Aromaterapia Difusores De Perfume De Carro Difusores De Aroma Para Óleos Essenciais Purificador De Ar De Óleo Essencial Purificadores De Ar De Veículo Ambientador', 'brand 56', TRUE, 100, 127.5, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Cuidados Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ea3c73be-68e1-4a51-94b1-d20882f40b62', 72.33, 26.34, 55.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('66c3db41-9460-485b-8914-c292dd5876be', 'Hohopeti Ternos Para Crianças 2 Conjuntos De Talheres De Colher De Garfo De Desenho Animado Ternos Infantis Para Crianças Talheres Infantis De Aço Inoxidável Kit De Talheres De', 'Hohopeti Ternos Para Crianças 2 Conjuntos De Talheres De Colher De Garfo De Desenho Animado Ternos Infantis Para Crianças Talheres Infantis De Aço Inoxidável Kit De Talheres De', 'brand 14', TRUE, 25, 49.83, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('66c3db41-9460-485b-8914-c292dd5876be', 40.79, 76.38, 73.37);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4a5d05da-06b5-4d4e-bc6b-bef578968f9e', 'Alguém para amar', 'Alguém para amar', 'brand 36', TRUE, 56, 26.94, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4a5d05da-06b5-4d4e-bc6b-bef578968f9e', 14.3, 73.03, 51.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('681c81e4-355b-4227-95be-977491af14a2', 'Acessórios de filtro de tanque de peixes, acessórios de filtro externo de tanque de peixes Plástico prático para tanque de peixes para aquário', 'Acessórios de filtro de tanque de peixes, acessórios de filtro externo de tanque de peixes Plástico prático para tanque de peixes para aquário', 'brand 72', TRUE, 80, 0.0, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('681c81e4-355b-4227-95be-977491af14a2', 43.89, 39.98, 96.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('78a30982-296b-42e2-acf4-322c098e1ae5', 'Sobrados e Mucambos', 'Sobrados e Mucambos', 'brand 22', TRUE, 51, 0.0, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Audiolivros Audible', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('78a30982-296b-42e2-acf4-322c098e1ae5', 74.07, 69.6, 83.73);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b3049e5b-e924-4fc3-a30b-695576312ea5', 'Toyvian 4 Conjuntos De Brinquedos Correspondentes Brinquedos Infantis Brinquedos Infantis Brinquedos Educativos Para Crianças Presentes Infantis Brinquedos Para Crianças Blocos De', 'Toyvian 4 Conjuntos De Brinquedos Correspondentes Brinquedos Infantis Brinquedos Infantis Brinquedos Educativos Para Crianças Presentes Infantis Brinquedos Para Crianças Blocos De', 'brand 5', TRUE, 40, 144.23, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b3049e5b-e924-4fc3-a30b-695576312ea5', 49.95, 34.55, 70.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ccbac9f2-84ec-4c30-8127-20ed3ee32f1f', 'Battle Worms: Slither Zone War', 'Battle Worms: Slither Zone War', 'brand 46', TRUE, 68, 0.0, 'b508a1ac-bc4c-42be-ab24-7e44866fdda9', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ccbac9f2-84ec-4c30-8127-20ed3ee32f1f', 49.55, 38.57, 27.36);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c3a03734-6d4b-4394-b23b-c709acbc6ca5', 'Vila de Albuquerque, São Benedito, 32813454 Mendonça de Araújo / RN', 256, 'casa', 'Araújo da Praia', '90212-974', 'Aparecida das Pedras', 'Pernambuco');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c3a03734-6d4b-4394-b23b-c709acbc6ca5', 728445206, -626702817, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('1ed305f8-0d3a-44f5-af64-b32ecab9d5d4', 'Luana Moreira', 'sara24@example.org', 'Vv2IpFP*_p', '84 4336 8093', NULL, NOW(), NOW(), 'Lua', 'c3a03734-6d4b-4394-b23b-c709acbc6ca5');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('a366b733-cfd6-4344-b634-e56e89331c3c', 'Trevo Porto, 79, Vila Nova Paraíso, 06296503 Mendes / DF', 137, 'comercial', 'Correia de Siqueira', '23994-994', 'Silva Alegre', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('a366b733-cfd6-4344-b634-e56e89331c3c', -741638356, -1560231103, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Almeida', '9:00-18:00', '81 9060-1910', '37026915886', 'a366b733-cfd6-4344-b634-e56e89331c3c');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('20bd9eda-56d6-4b82-a2ca-502e0f3d45ca', '1ed305f8-0d3a-44f5-af64-b32ecab9d5d4', '72591680302', NOW(), '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2ef4231e-96a7-43a8-be4f-da052708dfae', 'FOMIYES Esponjas Corporais para Chuveiro Esfoliante de Dupla Face Esfoliante Esponjas de Banho Ondulada de 3 Camadas para Homens E Mulheres E Crianças (3Pcs Vermelhos/Azul/Verde)', 'FOMIYES Esponjas Corporais para Chuveiro Esfoliante de Dupla Face Esfoliante Esponjas de Banho Ondulada de 3 Camadas para Homens E Mulheres E Crianças (3Pcs Vermelhos/Azul/Verde)', 'brand 30', TRUE, 88, 0.0, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2ef4231e-96a7-43a8-be4f-da052708dfae', 71.79, 34.21, 26.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bef5d831-fb5f-4c8f-a53a-2a3e67b567e2', 'Vibrador Portatil Estimulador De Clitóris 10 Níveis De Sucção Silicone Aveludado No01', 'Vibrador Portatil Estimulador De Clitóris 10 Níveis De Sucção Silicone Aveludado No01', 'brand 2', TRUE, 98, 126.97, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bef5d831-fb5f-4c8f-a53a-2a3e67b567e2', 21.4, 33.32, 66.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3cda092c-812a-48f1-bf0c-b1fb31a94692', 'Gentle Shampoo by Bumble and Bumble for Unisex - 33.8 oz Shampoo', 'Gentle Shampoo by Bumble and Bumble for Unisex - 33.8 oz Shampoo', 'brand 96', TRUE, 35, 1014.61, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Beleza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3cda092c-812a-48f1-bf0c-b1fb31a94692', 24.53, 76.5, 60.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b4fd8e3e-e487-4e79-a32a-1a409d0eebba', 'PC Gamer Blue PC Intel Core i5 (4ª geração) 8GB GT 420 4gb SSD 480GB', 'PC Gamer Blue PC Intel Core i5 (4ª geração) 8GB GT 420 4gb SSD 480GB', 'brand 59', TRUE, 26, 1929.0, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Computadores Desktop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b4fd8e3e-e487-4e79-a32a-1a409d0eebba', 17.46, 52.9, 92.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dd349137-aa13-4c2e-b037-80163bc8eb49', 'HEALLILY Alça De Dedo Suporte De Articulação Suporte De Pulso Suporte Ajustável Estilingue Para Lesão No Ombro Protetor De Dedo Manga Tala De Dedo Mindinho Tala De Dedo Mindinho Cinta De', 'HEALLILY Alça De Dedo Suporte De Articulação Suporte De Pulso Suporte Ajustável Estilingue Para Lesão No Ombro Protetor De Dedo Manga Tala De Dedo Mindinho Tala De Dedo Mindinho Cinta De', 'brand 96', TRUE, 43, 40.13, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Skates, Patins, Patinetes e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dd349137-aa13-4c2e-b037-80163bc8eb49', 64.56, 42.18, 13.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('132eb25a-9238-45b6-ae57-b85b73021313', 'Ideal Produtos Ortopédicos, Bermuda Térmica, Marinho, Tamanho: GG', 'Ideal Produtos Ortopédicos, Bermuda Térmica, Marinho, Tamanho: GG', 'brand 7', TRUE, 15, 56.13, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('132eb25a-9238-45b6-ae57-b85b73021313', 74.77, 78.48, 41.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('25424dfa-61e5-4cbe-8d4c-6d5951208241', 'Decoração De Natal Relógio De Quartzo Retrô Relógio De Bolso Vintage Relógio De Bolso De Natal Relógios De Quartzo Vermelhos Vintage Relógio De Bolso Elegante Relógio De Bolso', 'Decoração De Natal Relógio De Quartzo Retrô Relógio De Bolso Vintage Relógio De Bolso De Natal Relógios De Quartzo Vermelhos Vintage Relógio De Bolso Elegante Relógio De Bolso', 'brand 72', TRUE, 25, 57.6, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('25424dfa-61e5-4cbe-8d4c-6d5951208241', 84.13, 13.23, 50.37);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('084cf82d-52e6-47b5-85f3-b601f67b3ac5', 'Botões para cães, gravação de voz, conjunto de botões falantes para animais de estimação', 'Botões para cães, gravação de voz, conjunto de botões falantes para animais de estimação', 'brand 53', TRUE, 53, 0.0, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Som e Vídeo Portáteis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('084cf82d-52e6-47b5-85f3-b601f67b3ac5', 30.2, 56.96, 95.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c658d60b-20c1-4043-81aa-186d74962cca', 'Mochila escolar para meninas meninos mochila tropical verde floral folha estudante bolsa de ombro livro menino menina leve durável médio ensino fundamental universitário bolsa de viagem caminhada acampamento mochila, Multicolorido, One Size, Clássico', 'Mochila escolar para meninas meninos mochila tropical verde floral folha estudante bolsa de ombro livro menino menina leve durável médio ensino fundamental universitário bolsa de viagem caminhada acampamento mochila, Multicolorido, One Size, Clássico', 'brand 47', TRUE, 34, 146.91, '9fe6b8f1-7a10-49f1-be9f-2e7a24dd6dea', 'Bolsas e Mochilas Escolares', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c658d60b-20c1-4043-81aa-186d74962cca', 43.46, 49.47, 24.99);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('83488c83-f8b4-4d6d-819d-c791a723c423', 'Vale de Pinto, 90, Dom Joaquim, 16577-017 Moreira de Macedo / BA', 365, 'casa', 'Machado da Mata', '26189-565', 'Rezende de Goiás', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('83488c83-f8b4-4d6d-819d-c791a723c423', -608552281, -1595226688, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('74a726d6-56af-4b74-94e9-8dcd04448a94', 'Daniela da Rosa', 'joao-felipe85@example.org', 'i*TrpimC^9', '(041) 9850 0931', NULL, NOW(), NOW(), 'Dan', '83488c83-f8b4-4d6d-819d-c791a723c423');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1c7851f4-bd82-44ed-9b8e-5ba7614fb444', 'Estação de Araújo, Santo Agostinho, 15895-711 Mendes do Amparo / BA', 331, 'comercial', 'Barbosa', '69613-925', 'Vargas', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1c7851f4-bd82-44ed-9b8e-5ba7614fb444', 858657177, 2061333, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('7a73c6d0-df4d-497c-9be3-05b784323a08', 'Vieira', '9:00-18:00', '81 5947-4761', '02917548304', '1c7851f4-bd82-44ed-9b8e-5ba7614fb444');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('c9160627-ed34-4fd3-9ba7-90a34a9bd549', '74a726d6-56af-4b74-94e9-8dcd04448a94', '25496370892', NOW(), '7a73c6d0-df4d-497c-9be3-05b784323a08');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('878aef46-6347-4db4-acd0-a599c7b1e863', 'Máquina de Cartão SumUP Top Branco Sem Aluguel - Bluetooth, funcionamento a pilha', 'Máquina de Cartão SumUP Top Branco Sem Aluguel - Bluetooth, funcionamento a pilha', 'brand 25', TRUE, 27, 34.9, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Eletrônicos e Tecnologia para Escritório', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('878aef46-6347-4db4-acd0-a599c7b1e863', 75.7, 94.5, 84.93);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('34bf8a48-b3ac-45e6-83ba-14ee9a2029de', 'Luva de Malha com Banho Nitrílico (Nitrilon Azul) SS 1002L - Super Safety', 'Luva de Malha com Banho Nitrílico (Nitrilon Azul) SS 1002L - Super Safety', 'brand 93', TRUE, 87, 10.85, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Proteção e Segurança', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('34bf8a48-b3ac-45e6-83ba-14ee9a2029de', 70.71, 98.45, 18.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8596c9be-796b-44b3-8833-9a3c80a67a37', 'Brincos de gota de prata esterlina 925 com pingente de gota, joias finas para mulheres, presentes para ela, Prata esterlina Cristal', 'Brincos de gota de prata esterlina 925 com pingente de gota, joias finas para mulheres, presentes para ela, Prata esterlina Cristal', 'brand 14', TRUE, 3, 713.2, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8596c9be-796b-44b3-8833-9a3c80a67a37', 31.21, 86.9, 73.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9317546e-9735-489f-b35c-7cd214761313', 'Biquíni Estampado, Tip Top, Meninas', 'Biquíni Estampado, Tip Top, Meninas', 'brand 39', TRUE, 38, 124.9, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9317546e-9735-489f-b35c-7cd214761313', 39.26, 95.35, 54.96);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('906d4695-bed0-4f1b-bc92-dc8592aa3e25', 'Isqueiro de chama dupla, chama suave/chama a jato recarregável, à prova de vento, isqueiro azul jato direto, design à prova d'água, isqueiro em forma de jacaré com caixa de presente, presente masculin', 'Isqueiro de chama dupla, chama suave/chama a jato recarregável, à prova de vento, isqueiro azul jato direto, design à prova d'água, isqueiro em forma de jacaré com caixa de presente, presente masculin', 'brand 82', TRUE, 84, 0.0, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('906d4695-bed0-4f1b-bc92-dc8592aa3e25', 49.22, 70.64, 80.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('12d18a67-efbb-484c-a2e3-f667636a382f', 'TOYANDONA 4Pcs Dispensador De Fórmula De Viagem Recipiente Selado Liquidificador Para Comida De Bebê Recipiente De Armazenamento De Lanche De Bebê Garrafa De Mistura De Fórmula Suporte De', 'TOYANDONA 4Pcs Dispensador De Fórmula De Viagem Recipiente Selado Liquidificador Para Comida De Bebê Recipiente De Armazenamento De Lanche De Bebê Garrafa De Mistura De Fórmula Suporte De', 'brand 96', TRUE, 89, 126.07, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('12d18a67-efbb-484c-a2e3-f667636a382f', 97.17, 92.84, 53.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b35ca9c6-75a9-442a-a2b9-6bdb985a37d9', 'Toyvian 2 Peças De Curto Fantoche De Mão De Pelúcia Animal Fantoche De Mão Brinquedo De Pelúcia De Natal Brinquedo De Pelúcia Adorável Fantoche De Mão', 'Toyvian 2 Peças De Curto Fantoche De Mão De Pelúcia Animal Fantoche De Mão Brinquedo De Pelúcia De Natal Brinquedo De Pelúcia Adorável Fantoche De Mão', 'brand 52', TRUE, 8, 53.56, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Pelúcias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b35ca9c6-75a9-442a-a2b9-6bdb985a37d9', 19.59, 10.23, 72.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('65a8a643-210d-48fc-a143-ca8b4154e62c', 'Tgoon Bolas de secagem, bola de amaciante de tecido reutilizável segura 6 peças redução estática economia de tempo amigável para a família (6 cm/2,4 pol.)', 'Tgoon Bolas de secagem, bola de amaciante de tecido reutilizável segura 6 peças redução estática economia de tempo amigável para a família (6 cm/2,4 pol.)', 'brand 70', TRUE, 83, 67.29, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Produtos de Lavanderia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('65a8a643-210d-48fc-a143-ca8b4154e62c', 61.22, 58.47, 57.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('017ad806-69b8-4b59-8fad-829d1481e90c', 'Sapatos infantis para bebês meninas lindas sandálias sapatos únicos sapatos de princesa sapatos para iniciantes caminhantes menina (branco, 5 bebês)', 'Sapatos infantis para bebês meninas lindas sandálias sapatos únicos sapatos de princesa sapatos para iniciantes caminhantes menina (branco, 5 bebês)', 'brand 26', TRUE, 74, 43.28, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('017ad806-69b8-4b59-8fad-829d1481e90c', 57.05, 19.18, 67.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bbe29de3-09ab-4498-8a95-a6dd20e0ca7e', 'Ozgkee Antena dobrável SMA fêmea de banda dupla Walkie Talkie de alto ganho para Baofeng UV 5R', 'Ozgkee Antena dobrável SMA fêmea de banda dupla Walkie Talkie de alto ganho para Baofeng UV 5R', 'brand 27', TRUE, 92, 0.0, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Acessórios para Home Theater', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bbe29de3-09ab-4498-8a95-a6dd20e0ca7e', 31.34, 83.15, 79.96);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('597212ca-6744-442d-a7dc-b89cc5b3f04f', 'Tabaco de menta para narguilé + escova de limpeza de cachimbo, escova flexível de tubo duplo para aquário Spring Clean 3 cores (azul)', 'Tabaco de menta para narguilé + escova de limpeza de cachimbo, escova flexível de tubo duplo para aquário Spring Clean 3 cores (azul)', 'brand 29', TRUE, 2, 46.2, '7a73c6d0-df4d-497c-9be3-05b784323a08', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('597212ca-6744-442d-a7dc-b89cc5b3f04f', 23.32, 85.44, 29.9);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('173846db-00d2-44a2-9296-c8b16e94b924', 'Esplanada Novaes, 66, Prado, 43115-502 Moura / GO', 704, 'casa', 'Sá de Minas', '84551-538', 'da Rosa de Goiás', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('173846db-00d2-44a2-9296-c8b16e94b924', 822115417, 614340955, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2efa2504-d8f1-4e5f-a2ab-25232a6323f7', 'Sr. Levi Rocha', 'saragao@example.org', 'SQCvUrUu%4', '11 6008-1175', NULL, NOW(), NOW(), 'Sr.', '173846db-00d2-44a2-9296-c8b16e94b924');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('7590e21d-4d76-4ed1-b474-29b3b1b92e5b', 'Avenida de Silveira, 82, Nova Cachoeirinha, 98242-865 da Luz de Goiás / MS', 956, 'comercial', 'Moraes', '21313-592', 'Moreira', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('7590e21d-4d76-4ed1-b474-29b3b1b92e5b', -311264701, 551297953, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Brito', '9:00-18:00', '+55 11 9636-3652', '48926701387', '7590e21d-4d76-4ed1-b474-29b3b1b92e5b');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('454e17ab-ede1-4015-a2cf-4bb2c3959ad6', '2efa2504-d8f1-4e5f-a2ab-25232a6323f7', '32615470906', NOW(), 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('af09b28f-1abb-4f2d-85d6-2e674559762e', 'Kit 2 Raquetes de Beach Tennis Profissionais de Fibra de Carbono 3K Camewin e 2 Bolsas porta-raquete', 'Kit 2 Raquetes de Beach Tennis Profissionais de Fibra de Carbono 3K Camewin e 2 Bolsas porta-raquete', 'brand 29', TRUE, 56, 595.0, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Esportes com Raquete', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('af09b28f-1abb-4f2d-85d6-2e674559762e', 51.25, 58.91, 25.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4c1d285d-234d-4189-a680-b0b4a62338c1', 'VANZACK Rolo De Treino 1 Conjunto De Bola De Boxe De Reação De Boxe Sacos De Areia Saco De Pancadas Equipamento De Otário Velocidade De Bola De Boxe Saco De Pancadas Bola De', 'VANZACK Rolo De Treino 1 Conjunto De Bola De Boxe De Reação De Boxe Sacos De Areia Saco De Pancadas Equipamento De Otário Velocidade De Bola De Boxe Saco De Pancadas Bola De', 'brand 52', TRUE, 71, 86.37, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Luta e Artes Marciais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4c1d285d-234d-4189-a680-b0b4a62338c1', 15.89, 83.61, 92.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b738000b-7583-4c0a-a632-50101e3e7369', 'GALPADA 2 Pçs Maiô Camisola Encobrir Roupas De Praia Roupas De Praia Para Mulheres Camisetas Sin Para Mujer Maiô Recortado Para Mulheres Biquíni De Verão Envoltório De Praia Biquíni Roupa', 'GALPADA 2 Pçs Maiô Camisola Encobrir Roupas De Praia Roupas De Praia Para Mulheres Camisetas Sin Para Mujer Maiô Recortado Para Mulheres Biquíni De Verão Envoltório De Praia Biquíni Roupa', 'brand 46', TRUE, 72, 0.0, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Equipamento de Natação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b738000b-7583-4c0a-a632-50101e3e7369', 98.26, 50.43, 80.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7ec17538-6dcf-4b17-bc2c-31752dd1a28c', 'QCYDOBRASIL Fibra de Psyllium 500mg Psyllium 500Veg Caps 2 unidades Produto Importado', 'QCYDOBRASIL Fibra de Psyllium 500mg Psyllium 500Veg Caps 2 unidades Produto Importado', 'brand 17', TRUE, 46, 384.61, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Vitaminas, Minerais e Suplementos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7ec17538-6dcf-4b17-bc2c-31752dd1a28c', 90.57, 87.19, 89.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dec61d22-1b6f-442f-ab1f-9decdab842e7', 'CIYODO Dados De Festa De Dados De Espuma Grandes Dados De Exercício Dados De Espuma Enormes Dados De Festa De Número Infantil Dados Grandes Layouts De Dados De Espuma Ferramenta Ao Ar', 'CIYODO Dados De Festa De Dados De Espuma Grandes Dados De Exercício Dados De Espuma Enormes Dados De Festa De Número Infantil Dados Grandes Layouts De Dados De Espuma Ferramenta Ao Ar', 'brand 76', TRUE, 37, 62.8, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dec61d22-1b6f-442f-ab1f-9decdab842e7', 90.94, 33.05, 23.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4f3dd867-5422-4e07-9f4b-455a55c0d0f2', 'Scanner 3D Revopoint MINI', 'Scanner 3D Revopoint MINI', 'brand 9', TRUE, 52, 9999.0, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4f3dd867-5422-4e07-9f4b-455a55c0d0f2', 20.35, 90.77, 35.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d5f742aa-46ba-48dd-afd0-6cfcc1dc33ef', 'Homoyoyo Decoraçãodiyfashionesportesexteriorfilmedevinilsuprimentosdearfitaestiráveldecoraçãoautomotivaembalagemamarelapvcxadesivosdeliberaçãocompletadecalquespersonalizadosadesivo', 'Homoyoyo Decoraçãodiyfashionesportesexteriorfilmedevinilsuprimentosdearfitaestiráveldecoraçãoautomotivaembalagemamarelapvcxadesivosdeliberaçãocompletadecalquespersonalizadosadesivo', 'brand 94', TRUE, 97, 63.35, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Óleos e Fluidos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d5f742aa-46ba-48dd-afd0-6cfcc1dc33ef', 64.54, 16.31, 93.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('629f1300-26f0-4f7c-a172-eb7bb1e38164', 'TROPIC MARIN ALL FOR REEF PULVER 800G', 'TROPIC MARIN ALL FOR REEF PULVER 800G', 'brand 81', TRUE, 36, 379.0, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('629f1300-26f0-4f7c-a172-eb7bb1e38164', 38.85, 87.27, 11.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7e529fa9-e58b-4c6e-b73f-6efb5e940f93', 'Triturador, MáQuina de Corte de Papel A4 para Casa, Mini Triturador PortáTil para Casa, Escola e EscritóRio', 'Triturador, MáQuina de Corte de Papel A4 para Casa, Mini Triturador PortáTil para Casa, Escola e EscritóRio', 'brand 19', TRUE, 30, 0.0, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Fragmentadoras', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7e529fa9-e58b-4c6e-b73f-6efb5e940f93', 51.0, 70.92, 26.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('949af81b-5ed8-4b11-821d-35e88aa94cac', '1080p HD 3" Universal Motocicleta Lente Dupla Gravador de Trânsito Monitor para Dirigir Gravador Fron', '1080p HD 3" Universal Motocicleta Lente Dupla Gravador de Trânsito Monitor para Dirigir Gravador Fron', 'brand 80', TRUE, 42, 316.13, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Eletrônicos e Tecnologia Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('949af81b-5ed8-4b11-821d-35e88aa94cac', 29.02, 67.39, 72.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2d1ad2cd-8c05-4761-8c25-74c2b2dff8e4', 'Baoblaze Umidificador de ar difusor de óleo essencial pequeno portátil mudo 50 ml umidificador pessoal umidificador de carro para quarto ioga cabeceira escritório ornamento', 'Baoblaze Umidificador de ar difusor de óleo essencial pequeno portátil mudo 50 ml umidificador pessoal umidificador de carro para quarto ioga cabeceira escritório ornamento', 'brand 48', TRUE, 70, 124.19, 'f4049b37-0ce9-4004-9b6b-ccf4b3b6feec', 'Ar e Ventilação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2d1ad2cd-8c05-4761-8c25-74c2b2dff8e4', 37.07, 77.61, 73.27);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('d1840d61-4ffa-4825-848f-d1d25cb431b1', 'Vereda de Gonçalves, 81, Paulo Vi, 73885-857 Mendes / AP', 133, 'casa', 'Farias do Norte', '17983-886', 'Câmara Verde', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('d1840d61-4ffa-4825-848f-d1d25cb431b1', -385837837, -761947341, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('841204f6-a24a-4fc8-9377-1173b6d322ec', 'Vitor Lima', 'da-luzclara@example.com', '!6Y8ibY$4j', '+55 (031) 5952 3814', NULL, NOW(), NOW(), 'Vit', 'd1840d61-4ffa-4825-848f-d1d25cb431b1');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('0a170c43-da9e-48f1-a4fb-de6358b90a48', 'Recanto de Teixeira, 7, Granja De Freitas, 13336-392 Borges / GO', 598, 'comercial', 'Carvalho de Rios', '59079-287', 'Alves do Galho', 'Rondônia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('0a170c43-da9e-48f1-a4fb-de6358b90a48', 445455411, -122792081, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('0fcdf7ed-6273-436f-afef-b5911b355328', 'Peixoto Alves S.A.', '9:00-18:00', '+55 21 6286 2513', '01934867250', '0a170c43-da9e-48f1-a4fb-de6358b90a48');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('8c509c38-8940-45a2-a4fa-b2eaa621071b', '841204f6-a24a-4fc8-9377-1173b6d322ec', '96820743556', NOW(), '0fcdf7ed-6273-436f-afef-b5911b355328');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a6151e8a-2eb9-4262-a72c-a255f12351c0', 'TOYANDONA 18 Peças Copos Infantis Em Cores Doces Copos Transparentes Para Beber Copos Infantis Com Tampa Copos De Água De Plástico Copos De Palha Para Crianças Copos De Bebidas', 'TOYANDONA 18 Peças Copos Infantis Em Cores Doces Copos Transparentes Para Beber Copos Infantis Com Tampa Copos De Água De Plástico Copos De Palha Para Crianças Copos De Bebidas', 'brand 46', TRUE, 82, 0.0, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a6151e8a-2eb9-4262-a72c-a255f12351c0', 23.62, 36.92, 72.21);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9300274e-d12f-4691-8357-3501b3c334a2', 'Vision Formula (Luteina + Zeaxantina) Vitgold 60 cápsulas', 'Vision Formula (Luteina + Zeaxantina) Vitgold 60 cápsulas', 'brand 36', TRUE, 18, 124.7, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Saúde e Cuidados Pessoais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9300274e-d12f-4691-8357-3501b3c334a2', 89.21, 67.73, 34.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('337e7d0e-91db-4b77-8bd2-f015834b6dfe', '10PCS Foosballs Mini Substituição para Jogos de Mesa de Pebolim Mesa De Futebol De Mesa Para Casa Acessórios de Jogo Do Divertimento', '10PCS Foosballs Mini Substituição para Jogos de Mesa de Pebolim Mesa De Futebol De Mesa Para Casa Acessórios de Jogo Do Divertimento', 'brand 43', TRUE, 95, 53.04, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('337e7d0e-91db-4b77-8bd2-f015834b6dfe', 75.72, 20.11, 95.21);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d4233347-4af3-481a-bba3-e40c79e4e82e', 'Banheira De Imersão Para Os Pés Banheira De Imersão Portátil Para Os Pés Tamanho Grande Resistente Ao Desgaste Bacia De Imersão Para Os Pés Para Piscina Pedicure E Relaxamento Em Casa', 'Banheira De Imersão Para Os Pés Banheira De Imersão Portátil Para Os Pés Tamanho Grande Resistente Ao Desgaste Bacia De Imersão Para Os Pés Para Piscina Pedicure E Relaxamento Em Casa', 'brand 19', TRUE, 29, 108.0, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d4233347-4af3-481a-bba3-e40c79e4e82e', 92.51, 89.6, 10.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d602384c-e155-47fb-8a7b-9bf1b85fcf03', 'Camiseta Casual, CLC, Masculino', 'Camiseta Casual, CLC, Masculino', 'brand 19', TRUE, 80, 55.01, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d602384c-e155-47fb-8a7b-9bf1b85fcf03', 18.02, 87.36, 33.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8c067658-5490-4998-a6a5-0f3adf2e7c1f', 'Super Ômega 3 MEG-3® Livre de metais pesados 60 softgels - Flora Nativa', 'Super Ômega 3 MEG-3® Livre de metais pesados 60 softgels - Flora Nativa', 'brand 70', TRUE, 47, 59.9, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Vitaminas, Minerais e Suplementos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8c067658-5490-4998-a6a5-0f3adf2e7c1f', 93.41, 45.26, 31.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('319d7b84-b704-4735-90e6-5af95b9168a7', 'New Long Leg [Disco de Vinil]', 'New Long Leg [Disco de Vinil]', 'brand 27', TRUE, 46, 247.04, '0fcdf7ed-6273-436f-afef-b5911b355328', 'CD e Vinil', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('319d7b84-b704-4735-90e6-5af95b9168a7', 88.72, 68.21, 89.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('477474c3-d035-4284-817c-2b12ff5954eb', 'Assistir Relógio Personalizado Relógio De Bolso Vintage Roupas Decoração Relógio De Bolso Pingente Relógio De Bolso Clássico Relógio De Bolso Relógio Vintage Colar Roupas O Relógio', 'Assistir Relógio Personalizado Relógio De Bolso Vintage Roupas Decoração Relógio De Bolso Pingente Relógio De Bolso Clássico Relógio De Bolso Relógio Vintage Colar Roupas O Relógio', 'brand 91', TRUE, 57, 43.32, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('477474c3-d035-4284-817c-2b12ff5954eb', 32.84, 59.66, 56.66);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('50f9ca1a-f4d5-4931-8d60-9223a8a2ee92', 'Cobertura de lona transparente à prova d'água, lona à prova d'água, bordas reforçadas de lona e ilhós reforçados para carros de móveis de jardim (2x5m/6x16 pés) ()', 'Cobertura de lona transparente à prova d'água, lona à prova d'água, bordas reforçadas de lona e ilhós reforçados para carros de móveis de jardim (2x5m/6x16 pés) ()', 'brand 27', TRUE, 75, 915.72, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('50f9ca1a-f4d5-4931-8d60-9223a8a2ee92', 19.67, 59.31, 67.77);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5ac8b5ba-ffea-4966-b8c7-a4702423d0f9', 'Caran d'Ache Lápis de cor Luminance 6901 marrom ocre (6901.037)', 'Caran d'Ache Lápis de cor Luminance 6901 marrom ocre (6901.037)', 'brand 26', TRUE, 8, 39.0, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Materiais de Escrita e Correção', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5ac8b5ba-ffea-4966-b8c7-a4702423d0f9', 46.72, 23.79, 56.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c3fbcb02-74dc-4176-a48b-cdedf6042faf', 'Levemolo 50 Pçs Decorações De Flores Capa De Telefone Acessórios Capa De Telefone Adesivo Capa De Telefone Ornamento Cinco Pétalas Decorar Material Lavanda Decorações De Flores DIY', 'Levemolo 50 Pçs Decorações De Flores Capa De Telefone Acessórios Capa De Telefone Adesivo Capa De Telefone Ornamento Cinco Pétalas Decorar Material Lavanda Decorações De Flores DIY', 'brand 35', TRUE, 4, 39.49, '0fcdf7ed-6273-436f-afef-b5911b355328', 'Telefones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c3fbcb02-74dc-4176-a48b-cdedf6042faf', 46.2, 83.97, 20.69);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('bb420453-3d5c-4584-98de-9dfa7632cdc5', 'Feira Isabelly Silva, 11, Itapoa, 26758136 Moura / BA', 108, 'casa', 'Teixeira', '63359-197', 'Correia dos Dourados', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('bb420453-3d5c-4584-98de-9dfa7632cdc5', 271704727, -998736402, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('3954365c-1126-4857-9362-e202d9198d82', 'Bruna Azevedo', 'marceladuarte@example.net', '!Qe_g+Jzn4', '0300 982 3519', NULL, NOW(), NOW(), 'Bru', 'bb420453-3d5c-4584-98de-9dfa7632cdc5');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1a7d45c7-430e-4820-bbcb-2e1d3cbcc647', 'Passarela Aragão, 7, São Salvador, 76220-611 Alves da Praia / AP', 387, 'comercial', 'Araújo', '96132-941', 'Novaes', 'Rio Grande do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1a7d45c7-430e-4820-bbcb-2e1d3cbcc647', 253495230, 379319845, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('c965d97a-7348-40d7-8e4f-72995ab15acc', 'Monteiro', '9:00-18:00', '21 3379 4622', '12850639451', '1a7d45c7-430e-4820-bbcb-2e1d3cbcc647');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('08ffcace-25af-4d67-a02f-cfb365b738f7', '3954365c-1126-4857-9362-e202d9198d82', '15342798060', NOW(), 'c965d97a-7348-40d7-8e4f-72995ab15acc');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('14934b74-d025-4dc6-9641-774433602162', 'Líquido para limpeza de pisos | de piso para pisos laminados,multiuso de secagem rápida para pisos, azulejos, laminados, poeira, cozinha Maidong', 'Líquido para limpeza de pisos | de piso para pisos laminados,multiuso de secagem rápida para pisos, azulejos, laminados, poeira, cozinha Maidong', 'brand 70', TRUE, 12, 0.0, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Produtos de Limpeza para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('14934b74-d025-4dc6-9641-774433602162', 46.16, 41.41, 52.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('848385f4-e2ff-4148-96a0-e5505e96b9a2', 'CIYODO 1Pc Livreto De Armazenamento De Cartão De Jogador Mangas De Cartão Transparente Protetores De Bolso Fichário Transparente Fichário De Cartões Esportivos Fichário Protetor De', 'CIYODO 1Pc Livreto De Armazenamento De Cartão De Jogador Mangas De Cartão Transparente Protetores De Bolso Fichário Transparente Fichário De Cartões Esportivos Fichário Protetor De', 'brand 75', TRUE, 1, 237.09, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('848385f4-e2ff-4148-96a0-e5505e96b9a2', 37.44, 49.94, 62.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('edde94a7-083b-4e4b-8832-8d96219cc1ba', 'Servos Link, liga de alumínio Tie Rod Set requintado 6 peças resistente ao desgaste para Hpi 1/10 RC Car (azul claro)', 'Servos Link, liga de alumínio Tie Rod Set requintado 6 peças resistente ao desgaste para Hpi 1/10 RC Car (azul claro)', 'brand 61', TRUE, 86, 67.29, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('edde94a7-083b-4e4b-8832-8d96219cc1ba', 85.7, 44.67, 75.83);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('604cdf55-2ad3-4d25-8876-4f43a1224a16', 'Sparky’s Birthday Surprise', 'Sparky’s Birthday Surprise', 'brand 100', TRUE, 73, 0.0, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('604cdf55-2ad3-4d25-8876-4f43a1224a16', 24.08, 50.51, 98.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1c6ae2bb-106a-4cfd-9931-4241b634bf02', 'boxe para crianças, MMA com acolchoamento grosso, boxe treinamento 6oz/8oz para meninas, meninos, equipamentos luta kickboxing Ainichi', 'boxe para crianças, MMA com acolchoamento grosso, boxe treinamento 6oz/8oz para meninas, meninos, equipamentos luta kickboxing Ainichi', 'brand 82', TRUE, 23, 94.66, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Luta e Artes Marciais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1c6ae2bb-106a-4cfd-9931-4241b634bf02', 24.14, 10.84, 75.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('79ddbbe0-2533-4a72-8947-818498413cab', 'Scarpin Sandália feminino', 'Scarpin Sandália feminino', 'brand 69', TRUE, 1, 115.49, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Loja de Calçados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('79ddbbe0-2533-4a72-8947-818498413cab', 63.85, 23.42, 76.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('53dfd455-1df1-478b-96c9-1112cb8b93c5', 'Panela Bojuda 16 Esmaltada Azul Claro - 1250 ml - Ewel', 'Panela Bojuda 16 Esmaltada Azul Claro - 1250 ml - Ewel', 'brand 66', TRUE, 5, 129.98, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Panelas e Utensílios para Cozinhar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('53dfd455-1df1-478b-96c9-1112cb8b93c5', 32.49, 78.49, 98.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ae368925-8afd-4795-8103-a8e2d0c8fb66', 'Bolsa de higiene pessoal pendurada para mulheres, girassol bolsa de lavagem de viagem de grande capacidade bolsa de maquiagem portátil bolsa de banheiro impermeável para chuveiro bolsa de banheiro para cosméticos acessórios essenciais, Multicor', 'Bolsa de higiene pessoal pendurada para mulheres, girassol bolsa de lavagem de viagem de grande capacidade bolsa de maquiagem portátil bolsa de banheiro impermeável para chuveiro bolsa de banheiro para cosméticos acessórios essenciais, Multicor', 'brand 64', TRUE, 33, 149.86, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Acessórios para Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ae368925-8afd-4795-8103-a8e2d0c8fb66', 75.36, 41.02, 90.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0c0701f9-4636-44a3-9ae4-593373af3585', 'Toddmomy 12 Peças Acessórios Esportivos De Contenção De Capacete De Hóquei Acessórios De Capacete Acessórios De Exercício Acessórios Esportivos Acessórios Esportivos Acessórios De Hóquei', 'Toddmomy 12 Peças Acessórios Esportivos De Contenção De Capacete De Hóquei Acessórios De Capacete Acessórios De Exercício Acessórios Esportivos Acessórios Esportivos Acessórios De Hóquei', 'brand 55', TRUE, 42, 140.94, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Skates, Patins, Patinetes e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0c0701f9-4636-44a3-9ae4-593373af3585', 61.46, 23.94, 12.96);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('886b2275-59f4-445d-a19a-72f0b51dffd6', 'Flutuadores para Piscina | Cama Inflável Portátil com Almofada Flutuante, Acessórios de Festa de Verão Almofada Inflável para Atividades na Praia Festas na Piscina Encontros de Família Aviere', 'Flutuadores para Piscina | Cama Inflável Portátil com Almofada Flutuante, Acessórios de Festa de Verão Almofada Inflável para Atividades na Praia Festas na Piscina Encontros de Família Aviere', 'brand 97', TRUE, 11, 102.49, 'c965d97a-7348-40d7-8e4f-72995ab15acc', 'Esportes e Brincadeiras ao Ar Livre', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('886b2275-59f4-445d-a19a-72f0b51dffd6', 26.58, 71.7, 91.66);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('92f28e06-b43a-431b-b9bb-e664f78edc39', 'Trecho Benício Vasconcelos, 813, Tupi B, 04913-724 Pinto / RJ', 464, 'casa', 'Rios', '87965-866', 'Vargas', 'Minas Gerais');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('92f28e06-b43a-431b-b9bb-e664f78edc39', -856659765, -529384026, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('e6fac193-9e7f-4358-9d3b-e53d58ac2c54', 'Helena Almeida', 'alanacamargo@example.org', '5U7VcKkR%7', '(021) 9407-9461', NULL, NOW(), NOW(), 'Hel', '92f28e06-b43a-431b-b9bb-e664f78edc39');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f56d4232-70dd-43eb-bcb7-1fa64f57294c', 'Favela Eduarda Andrade, 545, Inconfidência, 74236120 Jesus / MS', 948, 'comercial', 'da Luz', '55997-758', 'Novais de Aragão', 'São Paulo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f56d4232-70dd-43eb-bcb7-1fa64f57294c', 505499998, -417929185, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Vargas', '9:00-18:00', '+55 (084) 8915 2175', '58129304651', 'f56d4232-70dd-43eb-bcb7-1fa64f57294c');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('92841af9-8b4d-4ea0-aef1-8dda272e451c', 'e6fac193-9e7f-4358-9d3b-e53d58ac2c54', '62097435106', NOW(), 'bd2658b0-d50d-4af6-99b0-ca7956666a62');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b58dc628-70e2-4ddf-9e5f-9e0c00486e7e', 'Dobre acrílicos com precisão e facilidade com a Máquina de Dobra de Canal Kaufpart 120mm - Temperatura Ajustável, voltagem padrão EUR 220V - Perfeita para uso em oficinas e trabalhos manuais especializados', 'Dobre acrílicos com precisão e facilidade com a Máquina de Dobra de Canal Kaufpart 120mm - Temperatura Ajustável, voltagem padrão EUR 220V - Perfeita para uso em oficinas e trabalhos manuais especializados', 'brand 27', TRUE, 88, 172.65, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b58dc628-70e2-4ddf-9e5f-9e0c00486e7e', 60.9, 39.82, 58.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ed5120e6-852d-49ae-9c07-d7de5f20093e', 'Meias masculinas Court Vision Mid Wntr', 'Meias masculinas Court Vision Mid Wntr', 'brand 69', TRUE, 18, 879.48, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Masculino', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ed5120e6-852d-49ae-9c07-d7de5f20093e', 71.44, 72.47, 14.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3826ab77-b1f0-4e7b-8383-fee21bbacec7', 'Mtx Pinos Para Pinadores Pneumatico Comprimento 35 Mm', 'Mtx Pinos Para Pinadores Pneumatico Comprimento 35 Mm', 'brand 2', TRUE, 93, 0.0, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Ferramentas e Materiais de Construção', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3826ab77-b1f0-4e7b-8383-fee21bbacec7', 26.68, 29.75, 29.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c3da5ea6-db7e-4d51-8bbe-8d0989c6f8ea', 'Hoement Cálice Vintage Copo De Uísque Copos De Coquetel Vintage Copos De Aço Inoxidável Copo De Vinho Cálice Real Óculos Cálice De Cálice De Vinho Branco Estilo Retrô Cálice De Vinho', 'Hoement Cálice Vintage Copo De Uísque Copos De Coquetel Vintage Copos De Aço Inoxidável Copo De Vinho Cálice Real Óculos Cálice De Cálice De Vinho Branco Estilo Retrô Cálice De Vinho', 'brand 15', TRUE, 70, 37.26, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Copos e Taças', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c3da5ea6-db7e-4d51-8bbe-8d0989c6f8ea', 83.12, 42.41, 39.29);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b9052c7d-673f-4c30-a396-3f075de8be6d', 'Correia transportadora de impressora 3D, acessórios para impressora 3D, suporte de correia transportadora para impressora para trabalhar no escritório', 'Correia transportadora de impressora 3D, acessórios para impressora 3D, suporte de correia transportadora para impressora para trabalhar no escritório', 'brand 46', TRUE, 95, 0.0, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b9052c7d-673f-4c30-a396-3f075de8be6d', 34.29, 73.89, 64.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a7f61794-046a-4ed0-80b6-b11b4cae4f7c', 'F.Boclet Chypre Eau De Parfum , Ml100, 100 ml Branco', 'F.Boclet Chypre Eau De Parfum , Ml100, 100 ml Branco', 'brand 36', TRUE, 98, 1710.47, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a7f61794-046a-4ed0-80b6-b11b4cae4f7c', 46.45, 15.59, 14.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b4fa1879-c5f2-4afa-a727-cc92606a2fef', 'Vibrador feminino com varinha de sexo para ela – Vibrador varinha vibrador – Varinha vibrador com tecnologia Viberator ClitSense™ – 5 segundos para o clímax – Varinha vibratória para seu prazer', 'Vibrador feminino com varinha de sexo para ela – Vibrador varinha vibrador – Varinha vibrador com tecnologia Viberator ClitSense™ – 5 segundos para o clímax – Varinha vibratória para seu prazer', 'brand 55', TRUE, 70, 138.0, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b4fa1879-c5f2-4afa-a727-cc92606a2fef', 41.53, 50.56, 63.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a5cdd5a5-4eef-4781-bcf8-833b22db9c9b', 'Fervedor de Cerâmica Twist 750Ml Pomodoro - Ceraflame', 'Fervedor de Cerâmica Twist 750Ml Pomodoro - Ceraflame', 'brand 60', TRUE, 77, 245.33, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a5cdd5a5-4eef-4781-bcf8-833b22db9c9b', 41.26, 46.04, 44.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d1beab9a-c46d-4d7b-b40a-c0ec0c991c90', 'Yardwe 1 Conjunto Antiaderente Tapete Para Grelhar Silicone Escova Para Alinhavar Silicone Para Fritadeira Ao Ar Livre Para Churrasco Tapete Para Churrasco Almofada Para Churrasco Pincel', 'Yardwe 1 Conjunto Antiaderente Tapete Para Grelhar Silicone Escova Para Alinhavar Silicone Para Fritadeira Ao Ar Livre Para Churrasco Tapete Para Churrasco Almofada Para Churrasco Pincel', 'brand 65', TRUE, 47, 84.67, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d1beab9a-c46d-4d7b-b40a-c0ec0c991c90', 64.64, 77.15, 12.66);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('01e3f934-38b2-488b-b4a3-29bb60a71688', 'VALICLUD Bolsas De Mão 2 Pçs Bolsa Para Meninas Elegantes Adolescentes Bolsa De Mão Para Compras De Ombro Presente Renda Para Moda Bordado Feminino Bolsa De Damasco Criança', 'VALICLUD Bolsas De Mão 2 Pçs Bolsa Para Meninas Elegantes Adolescentes Bolsa De Mão Para Compras De Ombro Presente Renda Para Moda Bordado Feminino Bolsa De Damasco Criança', 'brand 55', TRUE, 34, 183.28, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Bolsas de Mão e Ombro Femininas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('01e3f934-38b2-488b-b4a3-29bb60a71688', 31.26, 25.43, 35.56);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4b0d26d7-e63e-467e-9552-43a98a8ecc59', 'Uonlytech Malas Alça De Mala De Viagem Alça De Caixa De Ferramentas Alça De Bagagem Alça De Bagagem Substituição Alça De Substituição De Bagagem Caixa De Embalagem Bolsa Bolsa De Couro', 'Uonlytech Malas Alça De Mala De Viagem Alça De Caixa De Ferramentas Alça De Bagagem Alça De Bagagem Substituição Alça De Substituição De Bagagem Caixa De Embalagem Bolsa Bolsa De Couro', 'brand 38', TRUE, 36, 44.61, 'bd2658b0-d50d-4af6-99b0-ca7956666a62', 'Acessórios para Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4b0d26d7-e63e-467e-9552-43a98a8ecc59', 11.63, 97.89, 97.62);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('64595cef-b151-44e3-8d9f-d3eb33d65c1b', 'Lago Pimenta, 93, Jardim Montanhês, 93293968 Azevedo de Costa / PE', 812, 'casa', 'Campos de Fonseca', '44864-311', 'Garcia de Camargo', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('64595cef-b151-44e3-8d9f-d3eb33d65c1b', -688307712, 1722296918, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('7048a642-a3b4-411a-a682-93d39aebd948', 'Daniel Dias', 'jesusalicia@example.org', 'w&!4EC3zXo', '+55 (011) 5511-7960', NULL, NOW(), NOW(), 'Dan', '64595cef-b151-44e3-8d9f-d3eb33d65c1b');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('de2a27ab-83d8-4473-9b3b-eb5656d1b71f', 'Ladeira Borges, 71, Vila Primeiro De Maio, 33398727 Aparecida da Mata / PI', 784, 'comercial', 'Gonçalves dos Dourados', '30678-404', 'Ferreira', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('de2a27ab-83d8-4473-9b3b-eb5656d1b71f', 875362234, -1667374644, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('f5349d8d-726c-4117-9469-ea92a801a4f9', 'Vasconcelos', '9:00-18:00', '+55 (041) 9958 4588', '20835974197', 'de2a27ab-83d8-4473-9b3b-eb5656d1b71f');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('a64e4500-d379-4b0c-aa5a-fee2d34b0610', '7048a642-a3b4-411a-a682-93d39aebd948', '05283917630', NOW(), 'f5349d8d-726c-4117-9469-ea92a801a4f9');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2dc83bb9-7620-4286-8aa6-6361cf896238', 'Luxshiny 3 Pçs Clipe De Osso De Peixe Ferramenta De Limpeza Ferramentas De Frutos Do Mar Ferramenta Removedor De Cabelo Cozinha Carne Alicate De Cabelo Pinças De Cabelo De Ganso Pinças De', 'Luxshiny 3 Pçs Clipe De Osso De Peixe Ferramenta De Limpeza Ferramentas De Frutos Do Mar Ferramenta Removedor De Cabelo Cozinha Carne Alicate De Cabelo Pinças De Cabelo De Ganso Pinças De', 'brand 82', TRUE, 29, 63.09, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Talheres', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2dc83bb9-7620-4286-8aa6-6361cf896238', 97.44, 65.16, 48.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('545f297c-a4eb-4d1e-8f21-30b3f1d4fed0', '4 Mijão Calça Culote Sem Pé P/Bebês 100% Algodão Meninos Oferta', '4 Mijão Calça Culote Sem Pé P/Bebês 100% Algodão Meninos Oferta', 'brand 11', TRUE, 72, 55.9, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('545f297c-a4eb-4d1e-8f21-30b3f1d4fed0', 56.14, 99.85, 42.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9a32a93e-09ee-45bb-b0c4-0e8152972a83', 'BRINQUEDO TRENZINHO INFANTIL PEDAGOGICO COM CARRINHOS', 'BRINQUEDO TRENZINHO INFANTIL PEDAGOGICO COM CARRINHOS', 'brand 50', TRUE, 51, 46.99, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9a32a93e-09ee-45bb-b0c4-0e8152972a83', 92.06, 86.27, 83.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a3846203-3cbe-4dcc-aa39-a66d38703e5e', 'Apontador com Borracha, Tris, 7897476681085, Multicor, pacote de 2', 'Apontador com Borracha, Tris, 7897476681085, Multicor, pacote de 2', 'brand 81', TRUE, 59, 7.02, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a3846203-3cbe-4dcc-aa39-a66d38703e5e', 86.15, 17.34, 96.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('12198da1-92b8-4eb0-a462-00e6d6b60210', 'Protetor p/Cinto de Segurança KaBaby, Kababy, Cinza', 'Protetor p/Cinto de Segurança KaBaby, Kababy, Cinza', 'brand 64', TRUE, 97, 36.9, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('12198da1-92b8-4eb0-a462-00e6d6b60210', 80.68, 81.18, 48.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d5ebd5f6-9f36-4835-8442-fed4c56dce2e', 'Bolsas De Ombro Bolsa Transparente Bolsa De Ombro Bolsa De Compras Em Pvc Bolsa De Ombro Feminina Bolsa De Ombro Única Bolsa Feminina Bolsas De Capacidade Bolsa De Ombro Para', 'Bolsas De Ombro Bolsa Transparente Bolsa De Ombro Bolsa De Compras Em Pvc Bolsa De Ombro Feminina Bolsa De Ombro Única Bolsa Feminina Bolsas De Capacidade Bolsa De Ombro Para', 'brand 34', TRUE, 27, 100.54, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Bolsas de Mão e Ombro Femininas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d5ebd5f6-9f36-4835-8442-fed4c56dce2e', 33.66, 95.02, 97.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7c77f5b1-d8dd-4cd0-a4ef-6be6f802bdaa', 'Kit Loção Secativa de Espinhas + Solução Antiacne Corporal (2 Produtos)', 'Kit Loção Secativa de Espinhas + Solução Antiacne Corporal (2 Produtos)', 'brand 84', TRUE, 78, 115.0, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7c77f5b1-d8dd-4cd0-a4ef-6be6f802bdaa', 48.63, 75.07, 63.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b272f189-9fff-4631-9ee1-c0472d880678', 'Capa do segurança - Almofada alça ombro dos desenhos animados - Roadtrip Essentials com 4 clipes vedação decorações para adultos crianças mulheres adolescentes homens Buniq', 'Capa do segurança - Almofada alça ombro dos desenhos animados - Roadtrip Essentials com 4 clipes vedação decorações para adultos crianças mulheres adolescentes homens Buniq', 'brand 16', TRUE, 80, 21.59, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Produtos de Passeio e Viagem para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b272f189-9fff-4631-9ee1-c0472d880678', 84.89, 66.11, 45.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('36c74564-9435-4fe2-bdf5-9c575b10917b', 'Stevie Ray Vaughan And Double Trouble Live Al novo lacr orig', 'Stevie Ray Vaughan And Double Trouble Live Al novo lacr orig', 'brand 50', TRUE, 29, 180.0, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'CD e Vinil', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('36c74564-9435-4fe2-bdf5-9c575b10917b', 99.25, 88.63, 39.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dd52a209-1449-4f47-85de-008fb0b6b3b8', 'Levemolo Travesseiro De Carpa Cruciana Brinquedos De Mesa Catnip Brinquedos Para Gatos Decoração De Mesa Almofada De Peixe Travesseiro Decorativo De Carpa Brinquedo De Peixe Realista', 'Levemolo Travesseiro De Carpa Cruciana Brinquedos De Mesa Catnip Brinquedos Para Gatos Decoração De Mesa Almofada De Peixe Travesseiro Decorativo De Carpa Brinquedo De Peixe Realista', 'brand 78', TRUE, 93, 70.36, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Pelúcias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dd52a209-1449-4f47-85de-008fb0b6b3b8', 66.79, 54.89, 46.1);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('92585582-b1d4-4bc7-a0f6-7c466669764b', 'Tampa de substituição da tampa do interruptor da janela, direita e esquerda fácil de instalar tampa do botão do interruptor, para Mercedes Vito Sprinter MERCEDES VITO SPRINTER', 'Tampa de substituição da tampa do interruptor da janela, direita e esquerda fácil de instalar tampa do botão do interruptor, para Mercedes Vito Sprinter MERCEDES VITO SPRINTER', 'brand 85', TRUE, 100, 0.0, 'f5349d8d-726c-4117-9469-ea92a801a4f9', 'Nintendo Switch, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('92585582-b1d4-4bc7-a0f6-7c466669764b', 96.58, 35.68, 18.57);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3ee1dbd2-9c04-482d-b613-b82f861e1474', 'Praça Gonçalves, 4, Camargos, 44673-280 Moraes da Mata / ES', 804, 'casa', 'Lima', '10344-879', 'Araújo', 'Pará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3ee1dbd2-9c04-482d-b613-b82f861e1474', 4570122, -1485786687, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2b74c4d5-3b70-4641-aa78-978d0cb4b3a2', 'Nicolas Pereira', 'isismendonca@example.org', 'K&n71Zx95m', '21 6732 0268', NULL, NOW(), NOW(), 'Nic', '3ee1dbd2-9c04-482d-b613-b82f861e1474');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('bb149d72-00b2-4cbe-92d8-2bbcce9f46d1', 'Lago de Pastor, 2, Vila Nossa Senhora Do Rosário, 13127959 Gomes da Praia / MA', 448, 'comercial', 'Moreira de Cavalcanti', '73419-502', 'Casa Grande', 'Mato Grosso');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('bb149d72-00b2-4cbe-92d8-2bbcce9f46d1', -179123544, 498185581, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Campos', '9:00-18:00', '(061) 0046-8688', '83952106712', 'bb149d72-00b2-4cbe-92d8-2bbcce9f46d1');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('a7a778de-52f4-4bfa-9f27-8ff82c41e856', '2b74c4d5-3b70-4641-aa78-978d0cb4b3a2', '07943568265', NOW(), '5e3a5885-7e2a-4d81-97fd-32f553563a1f');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('70b01519-b69d-4f1d-9581-5b4150c6238f', 'Suporte Protetor com Luzes LED para Base de Nintendo Switch 500-042 PDP', 'Suporte Protetor com Luzes LED para Base de Nintendo Switch 500-042 PDP', 'brand 10', TRUE, 3, 0.0, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Nintendo Switch, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('70b01519-b69d-4f1d-9581-5b4150c6238f', 21.99, 43.26, 91.88);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8144f4a4-8c75-48de-90f1-588a175dab7a', 'FRCOLOR 6 Peças Bolsa De Cosméticos Transparente Bolsa De Para Viagem Bolsa De Maquiagem Para Viagens Bolsa De Maquiagem Bolsa De Cosméticos Bolsa De Maquiagem Grandes Bolsas De', 'FRCOLOR 6 Peças Bolsa De Cosméticos Transparente Bolsa De Para Viagem Bolsa De Maquiagem Para Viagens Bolsa De Maquiagem Bolsa De Cosméticos Bolsa De Maquiagem Grandes Bolsas De', 'brand 82', TRUE, 55, 117.45, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8144f4a4-8c75-48de-90f1-588a175dab7a', 50.93, 95.82, 89.33);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('15a4c8c6-239b-4bcd-8fbe-4301d5c7e3d0', 'VALICLUD Bolsa de armazenamento de drone acessórios de armazenamento compatível com Mavic Mini 2', 'VALICLUD Bolsa de armazenamento de drone acessórios de armazenamento compatível com Mavic Mini 2', 'brand 20', TRUE, 77, 148.49, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Drones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('15a4c8c6-239b-4bcd-8fbe-4301d5c7e3d0', 45.77, 17.07, 71.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('09385af5-f5fe-49de-8130-c13dd4e07585', 'Bota Coturno Feminino Vizzano Salto Alto Tratorado 3089102', 'Bota Coturno Feminino Vizzano Salto Alto Tratorado 3089102', 'brand 55', TRUE, 87, 199.0, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('09385af5-f5fe-49de-8130-c13dd4e07585', 39.36, 91.13, 52.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('75cdec97-eb8c-4546-968b-d40d69deb75b', 'Carteira de couro dobrável pequena para mulheres porta-cartão de crédito com bloqueio de RFID bolsa feminina com bolso de moeda com zíper e janela de identificação (cor: cinza claro, tamanho: 4,7 x 3,1 polegadas)', 'Carteira de couro dobrável pequena para mulheres porta-cartão de crédito com bloqueio de RFID bolsa feminina com bolso de moeda com zíper e janela de identificação (cor: cinza claro, tamanho: 4,7 x 3,1 polegadas)', 'brand 58', TRUE, 57, 197.59, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Carteiras, Porta-Cartões e Organizadores', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('75cdec97-eb8c-4546-968b-d40d69deb75b', 73.4, 23.79, 43.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0ab981bd-71e7-4e83-8b23-3baf4f99a587', 'PENO Caixa de reprodução de peixes, caixa transparente para aquário com 2 seções octogonal multiuso para criação de peixes', 'PENO Caixa de reprodução de peixes, caixa transparente para aquário com 2 seções octogonal multiuso para criação de peixes', 'brand 27', TRUE, 79, 68.96, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0ab981bd-71e7-4e83-8b23-3baf4f99a587', 29.73, 17.41, 38.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9df9abcf-15b8-4a0f-93dd-91047841a687', 'CD Acústicos & Valvulados - Diamantes Verdadeiros Vol. 2', 'CD Acústicos & Valvulados - Diamantes Verdadeiros Vol. 2', 'brand 46', TRUE, 34, 39.9, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Música Nacional', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9df9abcf-15b8-4a0f-93dd-91047841a687', 67.21, 41.96, 37.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b1b0f8f1-913a-471b-8085-fb949612bf3d', 'Tilibra - Bloco Adesivo Tili notes 76x76MM 50 folhas preto', 'Tilibra - Bloco Adesivo Tili notes 76x76MM 50 folhas preto', 'brand 90', TRUE, 7, 6.9, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b1b0f8f1-913a-471b-8085-fb949612bf3d', 15.88, 15.83, 64.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0f89f69f-f281-4f0c-af89-ef20b22d10e8', 'Caixa de Proteção de Distribuição 8 Vias à Prova D'água para Montagem Em Trilho DIN Caixa de Disjuntor para Ambientes Externos Internos', 'Caixa de Proteção de Distribuição 8 Vias à Prova D'água para Montagem Em Trilho DIN Caixa de Disjuntor para Ambientes Externos Internos', 'brand 81', TRUE, 66, 131.6, '5e3a5885-7e2a-4d81-97fd-32f553563a1f', 'Equipamento Elétrico', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0f89f69f-f281-4f0c-af89-ef20b22d10e8', 78.6, 11.18, 65.21);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('e2b464fe-ba29-423c-b495-305c53d97492', 'Fazenda da Conceição, 90, Silveira, 64179836 Nunes de Ferreira / SP', 393, 'casa', 'Alves', '24879-957', 'Pimenta de Montenegro', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('e2b464fe-ba29-423c-b495-305c53d97492', -318124716, 55286060, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('72b4ff49-0ae3-4a55-b939-707ed77144a5', 'Bárbara Andrade', 'correiamanuella@example.net', '%Z5nrBsHJ5', '51 7011 2580', NULL, NOW(), NOW(), 'Bár', 'e2b464fe-ba29-423c-b495-305c53d97492');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('d0339385-3852-4e8a-aa28-8a74baab75b5', 'Lagoa Melo, Vila Puc, 86735175 Duarte / PI', 34, 'comercial', 'Borges das Pedras', '22422-855', 'Monteiro da Serra', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('d0339385-3852-4e8a-aa28-8a74baab75b5', -822757527, 1257576862, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Cardoso', '9:00-18:00', '0300-721-8430', '40695183710', 'd0339385-3852-4e8a-aa28-8a74baab75b5');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('1f711b6c-0bf8-446b-a8f5-6d354e11aaae', '72b4ff49-0ae3-4a55-b939-707ed77144a5', '69274501307', NOW(), '0a3f7aec-1974-4a4b-8881-79561c00e03d');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f14adb76-4ebc-42b6-bb4d-a75c8127ab90', 'Ciieeo Pasta De Arquivo Protetor De Bolso Protetor De Anel Pasta De Bolso Pasta De Arquivo Protetor De De Plástico Bolsos Expansíveis Pasta De Arquivo Pasta De Arquivo Pastas Para', 'Ciieeo Pasta De Arquivo Protetor De Bolso Protetor De Anel Pasta De Bolso Pasta De Arquivo Protetor De De Plástico Bolsos Expansíveis Pasta De Arquivo Pasta De Arquivo Pastas Para', 'brand 89', TRUE, 27, 67.16, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f14adb76-4ebc-42b6-bb4d-a75c8127ab90', 52.69, 46.49, 22.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bc1dfa94-8df3-4258-a367-5391967b59aa', 'Hemobllo Bolsa Para Telefone Bolsa Para Telefone Bolsa Para Telefone Bolsa Seca Para Celular Bolsa Para Telefone Com Tela De Toque Bolsa Para Celular Bolsa De Acessórios Para Telefone De', 'Hemobllo Bolsa Para Telefone Bolsa Para Telefone Bolsa Para Telefone Bolsa Seca Para Celular Bolsa Para Telefone Com Tela De Toque Bolsa Para Celular Bolsa De Acessórios Para Telefone De', 'brand 39', TRUE, 73, 47.31, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Telefones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bc1dfa94-8df3-4258-a367-5391967b59aa', 53.37, 25.83, 56.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bfcef049-d3c1-4b35-9127-2c236bfd27ef', 'Uonlytech Rolo Organizador De Vários Recipientes Eletricista Armazenamento Até Bolsa Chave Ferramenta Transportador Portátil Mecânico Multiuso Finalidade De Triagem Bolsa De Motocicleta', 'Uonlytech Rolo Organizador De Vários Recipientes Eletricista Armazenamento Até Bolsa Chave Ferramenta Transportador Portátil Mecânico Multiuso Finalidade De Triagem Bolsa De Motocicleta', 'brand 47', TRUE, 88, 82.71, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Organizadores de Ferramentas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bfcef049-d3c1-4b35-9127-2c236bfd27ef', 77.92, 85.45, 38.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fad5703d-b994-4efb-8dbd-e33e82a4611b', 'Psych - A 5ª Temporada Completa', 'Psych - A 5ª Temporada Completa', 'brand 77', TRUE, 2, 0.0, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Programas de TV', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fad5703d-b994-4efb-8dbd-e33e82a4611b', 84.79, 52.73, 45.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ba039952-b324-4fec-8f2d-f5e561b3d257', 'compression shirt Camisa justa esportiva masculina, treino de manga comprida, top fitness inferior, modelagem de roupas', 'compression shirt Camisa justa esportiva masculina, treino de manga comprida, top fitness inferior, modelagem de roupas', 'brand 43', TRUE, 57, 275.99, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Equipamento de Ciclismo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ba039952-b324-4fec-8f2d-f5e561b3d257', 24.06, 97.81, 65.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('51290bd3-f261-4df8-aa3f-51d303be0330', 'Nutrends - Biotina Hair&Nails 450mg 60 cápsulas', 'Nutrends - Biotina Hair&Nails 450mg 60 cápsulas', 'brand 59', TRUE, 93, 26.28, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Saúde e Cuidados Pessoais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('51290bd3-f261-4df8-aa3f-51d303be0330', 92.09, 74.44, 84.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('91e2288d-268a-4568-bfc5-7fb895bf696b', 'Nos Olhos Verdes, a Calma: Um Conto em Tempos de Pandemia', 'Nos Olhos Verdes, a Calma: Um Conto em Tempos de Pandemia', 'brand 67', TRUE, 42, 0.0, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('91e2288d-268a-4568-bfc5-7fb895bf696b', 57.97, 89.6, 26.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('586676e3-4e31-4d53-99b2-928c94ab7b8a', '13 pares de agulhas de tricô circulares, conjunto de agulhas de tricô intercambiáveis com cabo de extensão, tamanho de 2,75 mm a 10 mm', '13 pares de agulhas de tricô circulares, conjunto de agulhas de tricô intercambiáveis com cabo de extensão, tamanho de 2,75 mm a 10 mm', 'brand 43', TRUE, 100, 191.83, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('586676e3-4e31-4d53-99b2-928c94ab7b8a', 52.61, 66.43, 58.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('001d0949-2cf9-4c2d-8a3b-3f0660cfcdaf', 'Combo Monitor Freestyle Libre Leitor + Sensor', 'Combo Monitor Freestyle Libre Leitor + Sensor', 'brand 98', TRUE, 28, 566.0, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('001d0949-2cf9-4c2d-8a3b-3f0660cfcdaf', 35.1, 84.98, 91.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eace3a16-1c26-4181-8c4a-97517bb49df0', 'Spray antitranspirante para axilas, spray desodorante antitranspirante 30ml Lavanda para antitranspirante', 'Spray antitranspirante para axilas, spray desodorante antitranspirante 30ml Lavanda para antitranspirante', 'brand 16', TRUE, 50, 38.85, '0a3f7aec-1974-4a4b-8881-79561c00e03d', 'Desodorantes e Antitranspirantes', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eace3a16-1c26-4181-8c4a-97517bb49df0', 68.46, 75.34, 37.79);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('372df100-fa38-4ea6-a824-e110bfc3bc06', 'Área de Gonçalves, 36, Etelvina Carneiro, 36883-776 Sampaio / SE', 541, 'casa', 'Siqueira', '45718-563', 'Barbosa de Goiás', 'Pará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('372df100-fa38-4ea6-a824-e110bfc3bc06', -218687452, 784371453, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('f799d975-1799-4ffc-8935-1f205b6100a5', 'Laís Aragão', 'borgeselisa@example.net', 'RM0fvZg)&*', '+55 (041) 6144 4358', NULL, NOW(), NOW(), 'Laí', '372df100-fa38-4ea6-a824-e110bfc3bc06');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('24b5bec1-79a0-4956-87c3-d3541d5b9d7a', 'Lago de Lopes, 1, Nossa Senhora Da Conceição, 13421534 Leão do Sul / PI', 537, 'comercial', 'Pastor Grande', '79462-502', 'Rodrigues', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('24b5bec1-79a0-4956-87c3-d3541d5b9d7a', 395841419, -576994831, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'da Cunha S.A.', '9:00-18:00', '0900 580 3596', '16549723043', '24b5bec1-79a0-4956-87c3-d3541d5b9d7a');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('e302aaa8-ced0-412c-9ceb-40722c9b69c9', 'f799d975-1799-4ffc-8935-1f205b6100a5', '31905784600', NOW(), '03fb3662-c47f-4e1b-82ab-f49c53bae1d1');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2a4dfa19-a951-421f-8911-8713c1f35f5b', 'Dunhill Custom by Alfred Dunhill for Men - 3.3 oz EDT Spray', 'Dunhill Custom by Alfred Dunhill for Men - 3.3 oz EDT Spray', 'brand 18', TRUE, 62, 557.0, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Beleza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2a4dfa19-a951-421f-8911-8713c1f35f5b', 47.33, 15.16, 15.35);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('742921aa-a6b8-4628-adb3-24bda9f95a75', 'Tela de Exibição Externa, Segundo Monitor Portátil 1080P 120Hz 18,5 Polegadas Alto-falantes Duplos Interface Multimídia HD para Console de Jogos para PC (plugue americano)', 'Tela de Exibição Externa, Segundo Monitor Portátil 1080P 120Hz 18,5 Polegadas Alto-falantes Duplos Interface Multimídia HD para Console de Jogos para PC (plugue americano)', 'brand 96', TRUE, 7, 0.0, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Monitores de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('742921aa-a6b8-4628-adb3-24bda9f95a75', 38.77, 84.78, 42.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ca510aa2-be2f-4347-bf4f-a0b37a909930', 'Graffiti Street colorido boca estéreo anel alicate chaveiro abridor de garrafa cortador', 'Graffiti Street colorido boca estéreo anel alicate chaveiro abridor de garrafa cortador', 'brand 67', TRUE, 51, 0.0, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ca510aa2-be2f-4347-bf4f-a0b37a909930', 28.39, 87.97, 33.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('be6b419c-d577-4b8a-a1b3-654c3085c5f5', 'Vaguelly 2 Peças Decoração Antiga Para Casa Mini Estatueta De Resina Modelo De Saxofone Instrumento Musical Estatuetas Ornamento Decoração De Casa Vintage Decoração De Resina Artesanato', 'Vaguelly 2 Peças Decoração Antiga Para Casa Mini Estatueta De Resina Modelo De Saxofone Instrumento Musical Estatuetas Ornamento Decoração De Casa Vintage Decoração De Resina Artesanato', 'brand 57', TRUE, 96, 210.65, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Instrumentos Musicais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('be6b419c-d577-4b8a-a1b3-654c3085c5f5', 31.79, 69.09, 93.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8fb3c17d-e438-4408-b8d0-458576228cc2', 'Pacote de óleo de rícino para pescoço, pacote de óleo de rícino para pescoço macio e reutilizável Pacote de óleo de rícino para pescoço para alívio calmante e conforto, óleos de massagem (rosa)', 'Pacote de óleo de rícino para pescoço, pacote de óleo de rícino para pescoço macio e reutilizável Pacote de óleo de rícino para pescoço para alívio calmante e conforto, óleos de massagem (rosa)', 'brand 22', TRUE, 42, 36.53, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8fb3c17d-e438-4408-b8d0-458576228cc2', 30.87, 19.83, 26.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ab6fe469-2b67-4395-8fff-267d97238129', 'STANLEY Combo Furadeira Impacto 1/2 pol 60w SDH600 + Esmeriladora 4.1/2 pol. 750w 220V SG7115', 'STANLEY Combo Furadeira Impacto 1/2 pol 60w SDH600 + Esmeriladora 4.1/2 pol. 750w 220V SG7115', 'brand 18', TRUE, 55, 459.9, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Ferramentas Elétricas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ab6fe469-2b67-4395-8fff-267d97238129', 76.52, 28.91, 78.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('13255273-018e-4e82-9707-9c8be8de9e27', 'Torneira Banheiro Cascata Alta Misturador Monocomando, Lavabo, Premium, Luxo, Metal, Aço Inox, Cromada, Cuba, Pia, Alto Padrão - TKLA', 'Torneira Banheiro Cascata Alta Misturador Monocomando, Lavabo, Premium, Luxo, Metal, Aço Inox, Cromada, Cuba, Pia, Alto Padrão - TKLA', 'brand 53', TRUE, 91, 284.9, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Instalações de Cozinha e Banheiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('13255273-018e-4e82-9707-9c8be8de9e27', 39.73, 49.22, 99.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0b1a8a09-3d41-4376-8dfd-d2a07d9ae3d8', 'Bule de chá com termômetro, aço inoxidável 304 com bico de ganso e chaleira com termômetro para uso com a maioria dos fogões a gás, elétricos e de indução (1,2 L)', 'Bule de chá com termômetro, aço inoxidável 304 com bico de ganso e chaleira com termômetro para uso com a maioria dos fogões a gás, elétricos e de indução (1,2 L)', 'brand 7', TRUE, 50, 135.0, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0b1a8a09-3d41-4376-8dfd-d2a07d9ae3d8', 23.72, 61.58, 21.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('230958ac-1856-4249-89b6-16bf7f2892f6', 'Caixa Ferramenta Organizador De Parafuso Organizador De Broca Peças Organizador Recipientes De Armazenamento De Artesanato Organizador De Compartimento Organizador De TEHAUX', 'Caixa Ferramenta Organizador De Parafuso Organizador De Broca Peças Organizador Recipientes De Armazenamento De Artesanato Organizador De Compartimento Organizador De TEHAUX', 'brand 67', TRUE, 44, 124.57, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Organizadores de Ferramentas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('230958ac-1856-4249-89b6-16bf7f2892f6', 75.31, 33.02, 75.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('796f07b1-ec82-4c2e-960f-8873fd5fa3ec', 'Jogo de colorir e desenhar unhas de moda - Jogos de salão de arte de unhas para meninas - arte de unhas ASMR', 'Jogo de colorir e desenhar unhas de moda - Jogos de salão de arte de unhas para meninas - arte de unhas ASMR', 'brand 12', TRUE, 52, 0.0, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('796f07b1-ec82-4c2e-960f-8873fd5fa3ec', 38.47, 85.3, 32.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cbac0c41-4915-43cd-bef0-1deaa36f37bf', 'Mikasa Rockford Conjunto de talheres de aço inoxidável 18/10, 45 peças, com conjunto de utensílios de servir, serviço para 8 pessoas', 'Mikasa Rockford Conjunto de talheres de aço inoxidável 18/10, 45 peças, com conjunto de utensílios de servir, serviço para 8 pessoas', 'brand 10', TRUE, 25, 1140.16, '03fb3662-c47f-4e1b-82ab-f49c53bae1d1', 'Talheres', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cbac0c41-4915-43cd-bef0-1deaa36f37bf', 36.15, 53.84, 57.41);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('09d29ef2-5494-4ba9-a003-8bd42c3a8bd3', 'Morro de Monteiro, 5, São Lucas, 84923-859 Pereira do Oeste / PI', 564, 'casa', 'Cardoso dos Dourados', '69217-727', 'Freitas', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('09d29ef2-5494-4ba9-a003-8bd42c3a8bd3', -177229372, -1452342765, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('3e3866ed-aafe-421c-bf14-4e8eb7aa682a', 'Otto Correia', 'manuella02@example.com', '5q5hAA!$y$', '+55 (021) 2005-8111', NULL, NOW(), NOW(), 'Ott', '09d29ef2-5494-4ba9-a003-8bd42c3a8bd3');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f6012145-c0ba-4283-8a56-e774734ae873', 'Pátio Isadora Duarte, 4, Garças, 73768680 Castro das Flores / AC', 203, 'comercial', 'Ramos do Norte', '35920-282', 'Leão', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f6012145-c0ba-4283-8a56-e774734ae873', -56364184, -1696283012, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'das Neves', '9:00-18:00', '+55 (031) 7785 6092', '47326508992', 'f6012145-c0ba-4283-8a56-e774734ae873');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('a24f7a97-4a42-4756-8637-23501494960c', '3e3866ed-aafe-421c-bf14-4e8eb7aa682a', '20415867371', NOW(), '9ae72126-e3f9-49cf-8c91-ea6c41bfc272');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0702194-4230-4867-8d3a-09537b49467e', 'Kit 12 Mini Garfo Talher Petisco Aperitivo Fondue Buffet Inox', 'Kit 12 Mini Garfo Talher Petisco Aperitivo Fondue Buffet Inox', 'brand 75', TRUE, 19, 39.9, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Organização e Armazenamento para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0702194-4230-4867-8d3a-09537b49467e', 78.41, 57.58, 66.21);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8b98ef6d-a32c-4d4a-8694-28dfa9312628', 'Stanley GO The Quick Flip GO Garrafa lilás 700 ml', 'Stanley GO The Quick Flip GO Garrafa lilás 700 ml', 'brand 15', TRUE, 22, 205.3, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Organização e Armazenamento para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8b98ef6d-a32c-4d4a-8694-28dfa9312628', 13.01, 20.91, 84.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('00bd7658-0d95-442f-993b-b4aaaf37677f', 'Ciieeo 1 Conjunto De Acessórios Móveis De Mesa De Quarto De Boneca E Ornamento Para Decorações Decoração De Jantar De Madeira Casa De Bonecas Em Miniatura Cadeira De Casa Modelo', 'Ciieeo 1 Conjunto De Acessórios Móveis De Mesa De Quarto De Boneca E Ornamento Para Decorações Decoração De Jantar De Madeira Casa De Bonecas Em Miniatura Cadeira De Casa Modelo', 'brand 46', TRUE, 28, 66.8, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Bonecas e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('00bd7658-0d95-442f-993b-b4aaaf37677f', 42.92, 81.1, 12.61);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('46e31f75-dfa9-4013-8c30-1be4cf6927c1', 'Mipcase Brinquedos De Pelúcia Interativos De 2 Peças Gato Interessante E Ratos Mastigam Animais Domésticos Exercício Para Gatinhos Tratam Mordem Fornecem Catnip Bonito Portátil', 'Mipcase Brinquedos De Pelúcia Interativos De 2 Peças Gato Interessante E Ratos Mastigam Animais Domésticos Exercício Para Gatinhos Tratam Mordem Fornecem Catnip Bonito Portátil', 'brand 98', TRUE, 12, 101.16, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('46e31f75-dfa9-4013-8c30-1be4cf6927c1', 52.09, 18.42, 84.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('418eaa75-e740-4781-9fb9-84345d4b490b', 'Charmin – Tecido ultramacio para banheiro, branco (18 unidades)', 'Charmin – Tecido ultramacio para banheiro, branco (18 unidades)', 'brand 81', TRUE, 74, 199.9, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Papel Higiênico e Lenços Umedecidos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('418eaa75-e740-4781-9fb9-84345d4b490b', 26.46, 72.36, 87.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8faa211c-04be-4370-a5ef-846e29142056', 'The Spectacular Spider-Man: Volume 6', 'The Spectacular Spider-Man: Volume 6', 'brand 32', TRUE, 42, 92.19, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Programas de TV', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8faa211c-04be-4370-a5ef-846e29142056', 87.68, 14.7, 58.23);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('135cf357-4599-4468-a8da-2639505748bd', 'Beavorty 40Pcs Palito De Dente De Frutas Descartáveis De Halloween Palitos De Coquetel De Frutas De Plástico Copos De Papel Descartáveis Copos De Papel Descartáveis Palheta De', 'Beavorty 40Pcs Palito De Dente De Frutas Descartáveis De Halloween Palitos De Coquetel De Frutas De Plástico Copos De Papel Descartáveis Copos De Papel Descartáveis Palheta De', 'brand 94', TRUE, 49, 47.78, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('135cf357-4599-4468-a8da-2639505748bd', 52.41, 49.25, 68.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e7ea0992-b949-491a-9d79-a65890b33259', '046019N, Resfriador de óleo de motor profissional confiável de alta resistência e alta eficiência para carro', '046019N, Resfriador de óleo de motor profissional confiável de alta resistência e alta eficiência para carro', 'brand 92', TRUE, 27, 230.29, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Óleos e Fluidos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e7ea0992-b949-491a-9d79-a65890b33259', 23.47, 95.8, 24.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f7a007ac-af96-48e2-ab96-c5995468df74', 'Boné New Era MLB New York Yankees 940 Destroyed Cinza e Verde', 'Boné New Era MLB New York Yankees 940 Destroyed Cinza e Verde', 'brand 35', TRUE, 80, 199.9, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f7a007ac-af96-48e2-ab96-c5995468df74', 89.76, 99.51, 31.97);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dd8babe9-1ff0-4323-b3b5-a82d4680463f', 'registros,Suporte exibição discos vinil | Organizador transparente multiuso acrílico para documentos, livros, álbuns, quadrinhos, CDs, discos vinil Riastvy', 'registros,Suporte exibição discos vinil | Organizador transparente multiuso acrílico para documentos, livros, álbuns, quadrinhos, CDs, discos vinil Riastvy', 'brand 91', TRUE, 37, 196.67, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dd8babe9-1ff0-4323-b3b5-a82d4680463f', 96.64, 82.67, 47.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('94f9d6ed-c3c4-4a2e-b3fa-af96bba17a33', 'New Lon0167 Medidor Amperímetro do Painel Analógico DC 0 - 400A Faixa de Medição 44C2(Analoges Amperemeter - Messgerät DC 0 - 400A Messbereich 44C2)', 'New Lon0167 Medidor Amperímetro do Painel Analógico DC 0 - 400A Faixa de Medição 44C2(Analoges Amperemeter - Messgerät DC 0 - 400A Messbereich 44C2)', 'brand 61', TRUE, 22, 71.69, '9ae72126-e3f9-49cf-8c91-ea6c41bfc272', 'Ferramentas de Medição', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('94f9d6ed-c3c4-4a2e-b3fa-af96bba17a33', 25.73, 87.28, 19.47);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('102c3c40-eb7c-4cc0-b593-44ba60b83dd7', 'Conjunto Leandro Siqueira, 4, Savassi, 09050563 Moraes / PI', 673, 'casa', 'Vieira', '99634-343', 'Marques da Praia', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('102c3c40-eb7c-4cc0-b593-44ba60b83dd7', 825747217, -1048893190, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('7e71cb1d-e8db-4805-b2be-eab0f485c626', 'Miguel da Mata', 'bcampos@example.com', 'eo9gwAdt^x', '0900 781 0726', NULL, NOW(), NOW(), 'Mig', '102c3c40-eb7c-4cc0-b593-44ba60b83dd7');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('e9d44016-6036-442d-9321-d70724a84656', 'Praia de Silva, 17, Maria Helena, 16958155 Rodrigues / PA', 559, 'comercial', 'Mendonça do Oeste', '86181-535', 'Garcia do Sul', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('e9d44016-6036-442d-9321-d70724a84656', -442240286, 1106802263, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'da Paz S.A.', '9:00-18:00', '(061) 1203 8602', '28036491524', 'e9d44016-6036-442d-9321-d70724a84656');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('51b59f55-2c01-4431-bc6a-73b6496225d0', '7e71cb1d-e8db-4805-b2be-eab0f485c626', '20894351605', NOW(), '7b747834-defe-4098-bd8e-cd6eb0dad5bf');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('332d8c35-3488-4eac-9aba-4bbc5d92eda8', 'NUSITOU Pacote De CD Malas De Papelão Organizador De Plástico Porta-Caixa Estojo De CD Organizador De Bolsa Organizador De Dvd Azul Armazenamento De Dvd Encadernação De Livreto De CD', 'NUSITOU Pacote De CD Malas De Papelão Organizador De Plástico Porta-Caixa Estojo De CD Organizador De Bolsa Organizador De Dvd Azul Armazenamento De Dvd Encadernação De Livreto De CD', 'brand 27', TRUE, 12, 70.27, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Som e Vídeo Portáteis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('332d8c35-3488-4eac-9aba-4bbc5d92eda8', 24.31, 83.86, 44.88);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0a830acc-3ac3-4eb2-8de5-69cd89f547d8', 'Kit Giovanna Baby Classic Loção Hidratante 50Ml Deo Colônia 20Ml Sabonete 90G E Desodorante Aerosol 50Ml', 'Kit Giovanna Baby Classic Loção Hidratante 50Ml Deo Colônia 20Ml Sabonete 90G E Desodorante Aerosol 50Ml', 'brand 32', TRUE, 37, 62.67, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0a830acc-3ac3-4eb2-8de5-69cd89f547d8', 70.39, 74.49, 79.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4b7af8bd-a1f2-4528-9133-2cb209f01f47', 'Câmera Time Lapse, 4K 32MP captura vídeo fotográfico profissional para clima de crescimento de plantas de segurança ao ar livre, câmera Timelapse colorida com tela LCD de 2 polegadas à prova d'água', 'Câmera Time Lapse, 4K 32MP captura vídeo fotográfico profissional para clima de crescimento de plantas de segurança ao ar livre, câmera Timelapse colorida com tela LCD de 2 polegadas à prova d'água', 'brand 50', TRUE, 42, 0.0, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Câmeras Digitais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4b7af8bd-a1f2-4528-9133-2cb209f01f47', 46.67, 93.74, 22.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9d77ada9-9691-4064-894a-b73981808859', 'FUOYLOO 4 peças Brinquedos de galinheiro brinquedos de enriquecimento itens para animais de estimação brinquedos de mastigar alimentador pendurado para animais de estimação brinquedos de gaiola parokeet brinquedo de pássaro brinquedo de madeira para pintinhos de galinha brinquedo para galinhas', 'FUOYLOO 4 peças Brinquedos de galinheiro brinquedos de enriquecimento itens para animais de estimação brinquedos de mastigar alimentador pendurado para animais de estimação brinquedos de gaiola parokeet brinquedo de pássaro brinquedo de madeira para pintinhos de galinha brinquedo para galinhas', 'brand 51', TRUE, 41, 108.05, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9d77ada9-9691-4064-894a-b73981808859', 20.66, 14.91, 43.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f1ddc189-7b1e-458e-86fa-ec99af95fcd2', 'Unheard TV', 'Unheard TV', 'brand 38', TRUE, 21, 0.0, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Fire TV Stick Apps', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f1ddc189-7b1e-458e-86fa-ec99af95fcd2', 61.62, 55.8, 29.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f9c6e795-14eb-4459-9cb5-e81bcb9dee74', 'Box Biblioteca Hogwarts', 'Box Biblioteca Hogwarts', 'brand 46', TRUE, 93, 88.99, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Livros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f9c6e795-14eb-4459-9cb5-e81bcb9dee74', 46.12, 98.96, 74.66);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4bd62dfd-a78a-42b1-87f5-7c0c22947875', 'ORFOFE 1 Peça Ninho De Coelho De Palha Túnel De Grama De Coelho Cabana De Coelho Túnel De Palha Casa De Coelho Pequeno Túnel De Palha Para Animais De Estimação Pequeno Túnel De Animais', 'ORFOFE 1 Peça Ninho De Coelho De Palha Túnel De Grama De Coelho Cabana De Coelho Túnel De Palha Casa De Coelho Pequeno Túnel De Palha Para Animais De Estimação Pequeno Túnel De Animais', 'brand 91', TRUE, 5, 119.27, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Produtos para Roedores e Pequenos Animais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4bd62dfd-a78a-42b1-87f5-7c0c22947875', 87.67, 89.8, 51.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('18ad3351-f907-407a-a816-b0f8a91f9541', 'Travesseiro Multiuso Branco - 35cm x 50cm - Altenburg', 'Travesseiro Multiuso Branco - 35cm x 50cm - Altenburg', 'brand 95', TRUE, 22, 29.9, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Cama, Mesa e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('18ad3351-f907-407a-a816-b0f8a91f9541', 39.15, 93.44, 51.96);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4c2d9767-8a41-4650-869a-4a9ca3afb826', 'Kit 6X: Quantum Leap Ginger Lemon Essential Nutrition 269ml', 'Kit 6X: Quantum Leap Ginger Lemon Essential Nutrition 269ml', 'brand 63', TRUE, 29, 126.88, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Café, Chá e outras Bebidas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4c2d9767-8a41-4650-869a-4a9ca3afb826', 22.41, 20.66, 30.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('db8fc352-6c07-472d-84f0-cf43da3eaeff', 'mingzhe Suporte para garrafa de bicicleta multifuncional Carrinho de bebê Suporte para mamadeira para bicicleta de estrada Gaiola para garrafa de água Ciclismo Suporte para copo de água Acessórios p', 'mingzhe Suporte para garrafa de bicicleta multifuncional Carrinho de bebê Suporte para mamadeira para bicicleta de estrada Gaiola para garrafa de água Ciclismo Suporte para copo de água Acessórios p', 'brand 89', TRUE, 78, 46.88, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Equipamento de Ciclismo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('db8fc352-6c07-472d-84f0-cf43da3eaeff', 34.63, 21.86, 21.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d8e0346e-f899-458e-9bc3-261eb5c33b59', 'Travesseiro De Corpo Aconchego 0,90cm X 0,38cm Com Fronha Microfibra Estampado - Panda', 'Travesseiro De Corpo Aconchego 0,90cm X 0,38cm Com Fronha Microfibra Estampado - Panda', 'brand 4', TRUE, 19, 55.0, '7b747834-defe-4098-bd8e-cd6eb0dad5bf', 'Cama, Mesa e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d8e0346e-f899-458e-9bc3-261eb5c33b59', 77.67, 40.0, 72.91);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('ef251c4b-292f-4e8c-8bb1-94a65eeb2c45', 'Lagoa Gomes, 11, Nossa Senhora Da Aparecida, 69250309 da Mota / AL', 754, 'casa', 'das Neves da Serra', '31365-395', 'Campos do Norte', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('ef251c4b-292f-4e8c-8bb1-94a65eeb2c45', 116495236, -446099724, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('64258b27-b637-42ad-8fdc-d2ffd15be770', 'Bento Lima', 'da-cunhapietra@example.com', 'h(*4YwqY8m', '(084) 3990 1098', NULL, NOW(), NOW(), 'Ben', 'ef251c4b-292f-4e8c-8bb1-94a65eeb2c45');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('7119c777-183a-4699-b073-9ed5dc397d85', 'Pátio Ferreira, 228, União, 76347840 da Conceição Verde / MS', 550, 'comercial', 'Fernandes', '83006-183', 'da Cruz', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('7119c777-183a-4699-b073-9ed5dc397d85', 806152502, 930367476, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('20a948e5-616a-492b-be3c-a827a3c879f6', 'Pereira Vieira - ME', '9:00-18:00', '+55 (021) 7106-8186', '38540976110', '7119c777-183a-4699-b073-9ed5dc397d85');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('92effb61-b77b-44e2-ac61-942d925710c6', '64258b27-b637-42ad-8fdc-d2ffd15be770', '69185327077', NOW(), '20a948e5-616a-492b-be3c-a827a3c879f6');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fa0223d9-06bb-406d-b183-c7013796ab71', '3 Peças Acessórios De Viagem Capa De Acessórios De Viagem Pás De Lixo Capa De Mala Capa De Mala Capa De Bagagem Capa De Bagagem Capa Protetora Estojo De Carrinho', '3 Peças Acessórios De Viagem Capa De Acessórios De Viagem Pás De Lixo Capa De Mala Capa De Mala Capa De Bagagem Capa De Bagagem Capa Protetora Estojo De Carrinho', 'brand 42', TRUE, 78, 150.11, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Malas de Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fa0223d9-06bb-406d-b183-c7013796ab71', 76.45, 69.66, 35.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ba6256ab-e9e7-47d7-81d5-c1c468ca1b18', 'O que eu não posso deixar de fazer hoje: Como uma única pergunta pode mudar sua relação com o tempo, assegurar produtividade no trabalho e empoderar sua vida pessoal', 'O que eu não posso deixar de fazer hoje: Como uma única pergunta pode mudar sua relação com o tempo, assegurar produtividade no trabalho e empoderar sua vida pessoal', 'brand 88', TRUE, 44, 15.48, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ba6256ab-e9e7-47d7-81d5-c1c468ca1b18', 94.22, 60.07, 45.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7c8bbd06-a868-46e0-96ba-799318cebb14', 'Azeite de Oliva Extra Virgem La Violetera 500ml', 'Azeite de Oliva Extra Virgem La Violetera 500ml', 'brand 23', TRUE, 34, 48.8, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Alimentos e Bebidas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7c8bbd06-a868-46e0-96ba-799318cebb14', 14.47, 21.12, 60.18);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ea4ccc95-3380-40bb-8240-d61cb0aacfbd', 'Cortina de Voil Bordado Sol 3,00m x 2,80m - 01 Peça - Palha', 'Cortina de Voil Bordado Sol 3,00m x 2,80m - 01 Peça - Palha', 'brand 57', TRUE, 80, 450.0, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Cortinas e Persianas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ea4ccc95-3380-40bb-8240-d61cb0aacfbd', 69.49, 33.85, 99.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1cdfba7f-5765-47aa-9780-27c061453f66', 'Yosoo – Cortador de grama, aparador de cabeça, cordão de cabeça para Echo Speed-Feed 400 SRM-225 SRM-230 SRM-210', 'Yosoo – Cortador de grama, aparador de cabeça, cordão de cabeça para Echo Speed-Feed 400 SRM-225 SRM-230 SRM-210', 'brand 86', TRUE, 42, 0.0, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Cortadores e Ferramentas Elétricas para Ambientes Externos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1cdfba7f-5765-47aa-9780-27c061453f66', 11.5, 52.69, 36.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ef831cf1-35aa-4d6d-aba7-46f889b01f5f', 'NAMOARLY 12Pçs Clipes De Fichário Pastas De Notas Bloco De Notas Pasta Transparente De Plástico Pvc Sacos De Folhas Soltas Bolsas Com Zíper Reutilizáveis Bolsa De Armazenamento Extra', 'NAMOARLY 12Pçs Clipes De Fichário Pastas De Notas Bloco De Notas Pasta Transparente De Plástico Pvc Sacos De Folhas Soltas Bolsas Com Zíper Reutilizáveis Bolsa De Armazenamento Extra', 'brand 33', TRUE, 50, 50.95, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ef831cf1-35aa-4d6d-aba7-46f889b01f5f', 75.65, 20.7, 57.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a5dff809-e7a4-4cce-9c38-1e5617614450', 'UKCOCO Corrente De Telefone Móvel De Cascalho Cordão Pérola Cordão De Pulso Frisado Decoração Da Parte De Trás Do Telefone Caixa Do Telefone Alça Cadeia De Telefone Móvel Cadeia De', 'UKCOCO Corrente De Telefone Móvel De Cascalho Cordão Pérola Cordão De Pulso Frisado Decoração Da Parte De Trás Do Telefone Caixa Do Telefone Alça Cadeia De Telefone Móvel Cadeia De', 'brand 11', TRUE, 97, 39.74, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Telefones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a5dff809-e7a4-4cce-9c38-1e5617614450', 92.02, 80.15, 70.23);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ffd36676-3e4f-40fe-aab4-531343206143', 'KIT 2 PUffs Redondo em Couro e Linho bege com Pés em Madeira Maciça. Puff luma.', 'KIT 2 PUffs Redondo em Couro e Linho bege com Pés em Madeira Maciça. Puff luma.', 'brand 1', TRUE, 23, 298.0, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Móveis e Decoração', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ffd36676-3e4f-40fe-aab4-531343206143', 90.32, 27.67, 80.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('97b9ca60-b39b-48fa-9540-c4007dad3a3b', 'ERINGOGO 5 Peças Capa De Volante Envoltório De Silicone Antiderrapante Capa De Volante De Carro Protetor De Volante Antiderrapante Envoltório De Roda De Carro Acessórios De Carros', 'ERINGOGO 5 Peças Capa De Volante Envoltório De Silicone Antiderrapante Capa De Volante De Carro Protetor De Volante Antiderrapante Envoltório De Roda De Carro Acessórios De Carros', 'brand 6', TRUE, 67, 161.1, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Peças e Acessórios para Automóveis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('97b9ca60-b39b-48fa-9540-c4007dad3a3b', 29.71, 62.35, 97.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c0911255-2bcd-4746-b76a-aefd042be2ff', 'Montagem De Carro 5 Peças Para Suporte De Celular Para Carro Montagem Giratória Telefone Multifuncional Magnético Ímãs De Carro', 'Montagem De Carro 5 Peças Para Suporte De Celular Para Carro Montagem Giratória Telefone Multifuncional Magnético Ímãs De Carro', 'brand 91', TRUE, 84, 189.71, '20a948e5-616a-492b-be3c-a827a3c879f6', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c0911255-2bcd-4746-b76a-aefd042be2ff', 12.03, 48.21, 82.35);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f55a6e52-a70e-401a-a463-b23b7c227100', 'Jardim Maria Julia Rezende, 633, Vila São Paulo, 19101099 Guerra da Serra / TO', 938, 'casa', 'Rodrigues do Norte', '96392-147', 'Gonçalves', 'Rio Grande do Norte');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f55a6e52-a70e-401a-a463-b23b7c227100', -772126465, 1312129287, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('7405d68e-ef32-46b9-99e5-db2f7b9cf37b', 'Dra. Ágatha Aragão', 'caua07@example.org', '!9ReqzKBEG', '+55 (071) 2343-1520', NULL, NOW(), NOW(), 'Dra', 'f55a6e52-a70e-401a-a463-b23b7c227100');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('79c6bc9d-38e4-4915-b7cd-ce7744eb0dbf', 'Via Théo Farias, 195, Barro Preto, 29312627 Rodrigues / RJ', 911, 'comercial', 'Dias', '29549-144', 'da Cunha dos Dourados', 'Mato Grosso');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('79c6bc9d-38e4-4915-b7cd-ce7744eb0dbf', -706848562, -803603222, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Barbosa', '9:00-18:00', '+55 (041) 8599-5512', '76451809357', '79c6bc9d-38e4-4915-b7cd-ce7744eb0dbf');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('0cce6908-4cb6-493e-93b0-60dd73d705b6', '7405d68e-ef32-46b9-99e5-db2f7b9cf37b', '76425819391', NOW(), 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('60a24af0-2481-4b62-aa87-8b0911b74874', 'KONTONTY Enfeites De Natal Decoração De Entrada Vermelhos Decorações De Natal Decoração De Mesa Decoração De Mesa De Noel Decoração De Mesa De Café Peças Centrais De Mesa De Madeira', 'KONTONTY Enfeites De Natal Decoração De Entrada Vermelhos Decorações De Natal Decoração De Mesa Decoração De Mesa De Noel Decoração De Mesa De Café Peças Centrais De Mesa De Madeira', 'brand 6', TRUE, 65, 88.14, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('60a24af0-2481-4b62-aa87-8b0911b74874', 39.54, 15.35, 95.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('13805e5a-3476-45bd-84ca-3e714b73e742', 'ZTBH Kit de carburador Motor para barco 16100-ZW6-716 Conjunto de carburador carburador para motor externo BF2 2HP Carberatura', 'ZTBH Kit de carburador Motor para barco 16100-ZW6-716 Conjunto de carburador carburador para motor externo BF2 2HP Carberatura', 'brand 39', TRUE, 85, 551.02, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Memória e Armazenamento de Dados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('13805e5a-3476-45bd-84ca-3e714b73e742', 11.9, 88.61, 74.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('70371ec5-8e07-4da7-93c9-9eeb5463192d', 'Barra de motosserra de plástico durável barra de motosserra e capa protetora de corrente protege a bainha universal 50 cm 2 peças', 'Barra de motosserra de plástico durável barra de motosserra e capa protetora de corrente protege a bainha universal 50 cm 2 peças', 'brand 3', TRUE, 36, 68.23, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Cortadores e Ferramentas Elétricas para Ambientes Externos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('70371ec5-8e07-4da7-93c9-9eeb5463192d', 79.85, 84.73, 95.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f181b015-e5a3-4427-bb3d-2f5794cc42a6', '2Pcs Hair Extension Crochet Hook Dreadlocks Hair Extension Crochet Hook Tools for Wig Dreadlock Braiding Hair for Salon(Silver)', '2Pcs Hair Extension Crochet Hook Dreadlocks Hair Extension Crochet Hook Tools for Wig Dreadlock Braiding Hair for Salon(Silver)', 'brand 14', TRUE, 55, 34.59, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f181b015-e5a3-4427-bb3d-2f5794cc42a6', 51.16, 55.53, 74.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8e27aa47-a72d-4e98-b346-d9b92970700d', 'Kit Capa Capinha Para Motorola Moto E13 Tela de 6.5 Case Air Anti Impacto Transparente + Película Hprime Nanoshield (Transparente + Hprime Nanoshield)', 'Kit Capa Capinha Para Motorola Moto E13 Tela de 6.5 Case Air Anti Impacto Transparente + Película Hprime Nanoshield (Transparente + Hprime Nanoshield)', 'brand 23', TRUE, 3, 44.99, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8e27aa47-a72d-4e98-b346-d9b92970700d', 72.21, 62.23, 28.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('adf73afa-12d1-419b-8792-f60f88bda466', 'SAFIGLE Faixa De Cabeça Infantil Bandanas De Cor Sólida Acessórios De Cabelo Infantil Tiaras Com Nó Envoltórios De Cabeça Recém-Nascido Envoltórios De Cabeça De Bebê Envoltórios De Cabeça', 'SAFIGLE Faixa De Cabeça Infantil Bandanas De Cor Sólida Acessórios De Cabelo Infantil Tiaras Com Nó Envoltórios De Cabeça Recém-Nascido Envoltórios De Cabeça De Bebê Envoltórios De Cabeça', 'brand 35', TRUE, 63, 40.14, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('adf73afa-12d1-419b-8792-f60f88bda466', 75.46, 64.94, 34.3);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('69eba5e7-edc1-4e73-9622-d7cea5570e32', 'SUA SANFONA E SUA SIMPATIA, 1966 (NACIONAL) [LP]', 'SUA SANFONA E SUA SIMPATIA, 1966 (NACIONAL) [LP]', 'brand 75', TRUE, 26, 0.0, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Música Nacional', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('69eba5e7-edc1-4e73-9622-d7cea5570e32', 88.29, 86.01, 51.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ce187e20-c485-49dc-8a08-1f5a61f1937e', 'Provocações empreendedoras 3: Business no mestrado e doutorado', 'Provocações empreendedoras 3: Business no mestrado e doutorado', 'brand 10', TRUE, 54, 0.0, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ce187e20-c485-49dc-8a08-1f5a61f1937e', 95.69, 66.24, 72.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ad0d2b06-3b85-4c87-9de1-bf1fec40a578', 'Suportes para brincadeiras de pássaros Prateleira de poleiro de mesa de madeira para papagaio de papagaio de treinamento portátil Playground Parrot Mastigar Mordedura Gaiola de pássaro Acessórios para', 'Suportes para brincadeiras de pássaros Prateleira de poleiro de mesa de madeira para papagaio de papagaio de treinamento portátil Playground Parrot Mastigar Mordedura Gaiola de pássaro Acessórios para', 'brand 61', TRUE, 62, 41.23, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ad0d2b06-3b85-4c87-9de1-bf1fec40a578', 40.84, 86.76, 84.3);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('784e1b79-b404-4470-8786-ab4be508023a', 'Acessório de pano de filtro de piscina, pano de filtro dobrável para piscina, 9 peças, boa filtragem para manutenção', 'Acessório de pano de filtro de piscina, pano de filtro dobrável para piscina, 9 peças, boa filtragem para manutenção', 'brand 51', TRUE, 20, 0.0, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Piscinas, Ofurôs e Materiais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('784e1b79-b404-4470-8786-ab4be508023a', 16.02, 18.49, 36.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e7a45760-659c-45f5-bb0d-7459c864c68f', 'esteira pilha,Temporizador cubo profissão para jogo - Máquina timer profissional com display, timer velocidapara corrida, competição, presente para meninas Hizoechu', 'esteira pilha,Temporizador cubo profissão para jogo - Máquina timer profissional com display, timer velocidapara corrida, competição, presente para meninas Hizoechu', 'brand 74', TRUE, 52, 95.79, 'a470ca42-dcf2-4df9-91be-4f1e3e53a2db', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e7a45760-659c-45f5-bb0d-7459c864c68f', 40.43, 61.9, 63.42);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b1a3e48b-d963-4648-9781-c5b484b9defc', 'Estação de Cavalcante, 88, São Lucas, 92352-154 Cavalcante de Rios / AM', 676, 'casa', 'Garcia do Sul', '26830-825', 'Rocha de Abreu', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b1a3e48b-d963-4648-9781-c5b484b9defc', 866884428, 1757128226, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('b3cde621-b92c-4c21-a168-95da6ab1d97e', 'Yago Freitas', 'andrademilena@example.net', '9lV^8GYc_n', '+55 21 4408 1024', NULL, NOW(), NOW(), 'Yag', 'b1a3e48b-d963-4648-9781-c5b484b9defc');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('353f350f-11fc-418c-b55d-a2159f92e3c9', 'Feira de Gomes, 2, Vila São Rafael, 09961-266 Lopes / MG', 376, 'comercial', 'Vasconcelos de Fogaça', '17003-337', 'Aragão', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('353f350f-11fc-418c-b55d-a2159f92e3c9', 458122104, 1149219869, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('0ac13552-6e79-484a-be3a-dc76f154a134', 'Sousa Ltda.', '9:00-18:00', '+55 (081) 9548-9418', '28674039103', '353f350f-11fc-418c-b55d-a2159f92e3c9');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('b0286a01-1d0e-400d-b180-b92556d62b86', 'b3cde621-b92c-4c21-a168-95da6ab1d97e', '09483671566', NOW(), '0ac13552-6e79-484a-be3a-dc76f154a134');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('94732fa9-b8ae-41b7-863e-3174c4234847', 'D.O.N Issue 2 J Black', 'D.O.N Issue 2 J Black', 'brand 54', TRUE, 1, 454.02, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('94732fa9-b8ae-41b7-863e-3174c4234847', 52.9, 99.24, 80.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b26ff0cb-522b-426d-8167-31218b57410e', 'Temporizador de irrigação automática com irrigação, temporizador de irrigação, pátio de irrigação agrícola para varanda', 'Temporizador de irrigação automática com irrigação, temporizador de irrigação, pátio de irrigação agrícola para varanda', 'brand 40', TRUE, 84, 175.98, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Equipamentos de Rega para Grama e Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b26ff0cb-522b-426d-8167-31218b57410e', 90.58, 80.3, 87.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('acaa918a-b9fd-4bb1-9aab-28a18f18fb6d', 'Catnip - 100% Natural Orgânico', 'Catnip - 100% Natural Orgânico', 'brand 54', TRUE, 80, 20.0, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('acaa918a-b9fd-4bb1-9aab-28a18f18fb6d', 32.66, 42.73, 46.77);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('298ecab3-1574-4b67-84a9-5f33ff829585', 'Fralda Papi Compose Bordada e Estampada para Bebê 70cm X 68cm Contém 03 Un', 'Fralda Papi Compose Bordada e Estampada para Bebê 70cm X 68cm Contém 03 Un', 'brand 4', TRUE, 3, 31.98, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('298ecab3-1574-4b67-84a9-5f33ff829585', 85.69, 79.69, 45.8);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ce94f12a-6d18-478a-aca1-084a1d7edebc', 'Boys' Core Logo Essential Jogger, Charcoal Heather, M', 'Boys' Core Logo Essential Jogger, Charcoal Heather, M', 'brand 40', TRUE, 51, 239.72, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ce94f12a-6d18-478a-aca1-084a1d7edebc', 28.86, 39.48, 76.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('884a2699-7e8c-4aaa-9ba7-3ae41dcb3ce0', 'Mochila Tática Multiuso Escolar Cargueira 30 Litros Camping Cinza 929-B - Lorben', 'Mochila Tática Multiuso Escolar Cargueira 30 Litros Camping Cinza 929-B - Lorben', 'brand 12', TRUE, 13, 110.0, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('884a2699-7e8c-4aaa-9ba7-3ae41dcb3ce0', 24.11, 89.13, 75.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ee19631b-90ca-4d28-9a8c-eaa82ca8c842', 'Sandálias infantis para bebês, sapatos de salto alto para escola, formatura, sandálias', 'Sandálias infantis para bebês, sapatos de salto alto para escola, formatura, sandálias', 'brand 15', TRUE, 78, 0.0, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ee19631b-90ca-4d28-9a8c-eaa82ca8c842', 14.02, 79.3, 40.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('90720a96-f87a-4411-9e97-cd0096641742', 'Chave de remoção de rádio – 17 peças de teclas de liberação de rádio, ferramentas de desmontagem de remoção profissional para áudio estéreo de carro', 'Chave de remoção de rádio – 17 peças de teclas de liberação de rádio, ferramentas de desmontagem de remoção profissional para áudio estéreo de carro', 'brand 61', TRUE, 56, 130.64, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Eletrônicos e Tecnologia Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('90720a96-f87a-4411-9e97-cd0096641742', 70.91, 52.24, 19.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('439996bd-e813-4d1c-abb1-33d5cbe65984', 'Pelikan Produto para Artesanato Cera Gel Cristal Macia, Altezza, Incolor, 900g', 'Pelikan Produto para Artesanato Cera Gel Cristal Macia, Altezza, Incolor, 900g', 'brand 13', TRUE, 41, 198.0, '0ac13552-6e79-484a-be3a-dc76f154a134', 'Materiais de Escrita e Correção', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('439996bd-e813-4d1c-abb1-33d5cbe65984', 33.81, 69.36, 63.74);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('aaf35df7-0b95-4d51-ab3a-6ef5b59dbdb8', 'Rodovia de Sampaio, 28, Maria Helena, 04353-523 Vieira / AL', 906, 'casa', 'Mendes', '55767-489', 'Rios de das Neves', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('aaf35df7-0b95-4d51-ab3a-6ef5b59dbdb8', -673788202, -957988494, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('65381b48-bb04-4e1f-a83b-9abcd9fd21b9', 'Leonardo Costa', 'lucas-gabriel59@example.org', 'H6+LZcpi+%', '(061) 9223-2026', NULL, NOW(), NOW(), 'Leo', 'aaf35df7-0b95-4d51-ab3a-6ef5b59dbdb8');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('df3536fe-68dc-49ff-9547-82968f8cae51', 'Esplanada Moura, 6, São Marcos, 64762-105 Mendes / SC', 943, 'comercial', 'Lopes Verde', '94764-554', 'Barros das Flores', 'Maranhão');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('df3536fe-68dc-49ff-9547-82968f8cae51', -64415510, 266638682, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'da Luz - ME', '9:00-18:00', '+55 61 7813 2494', '24053961734', 'df3536fe-68dc-49ff-9547-82968f8cae51');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('fe52ad86-ffba-4c75-a7da-7437ef5a8817', '65381b48-bb04-4e1f-a83b-9abcd9fd21b9', '83264750929', NOW(), 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e297f3e2-6aef-4001-aaa1-da7ca31b7c64', 'Motor, Motor Elétrico do Cubo do Trotinette, Boa Dureza 10 Polegada 48v 500w Forte Capacidade de Rolamento Leve para Substituição', 'Motor, Motor Elétrico do Cubo do Trotinette, Boa Dureza 10 Polegada 48v 500w Forte Capacidade de Rolamento Leve para Substituição', 'brand 84', TRUE, 1, 0.0, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Eletrônicos e Aparelhos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e297f3e2-6aef-4001-aaa1-da7ca31b7c64', 63.32, 38.23, 76.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2a081f78-f68b-41d8-a5eb-10300ff6e7d7', 'Conjunto Do Assador 3 Peças Faca, Garfo E Chaira Mor', 'Conjunto Do Assador 3 Peças Faca, Garfo E Chaira Mor', 'brand 100', TRUE, 26, 29.9, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Utensílios de Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2a081f78-f68b-41d8-a5eb-10300ff6e7d7', 27.11, 70.86, 13.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b3de65c2-201c-40be-a435-58f17f86f9e1', 'MAQUINA MOEDOR DE CARNE DE ALUMNIO MÁQUINA DE MOER PARA FAZER LINGUIÇAS, HAMBURGUER, ALIMENTOS E EMBUTIDOS', 'MAQUINA MOEDOR DE CARNE DE ALUMNIO MÁQUINA DE MOER PARA FAZER LINGUIÇAS, HAMBURGUER, ALIMENTOS E EMBUTIDOS', 'brand 22', TRUE, 2, 83.5, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Utensílios de Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b3de65c2-201c-40be-a435-58f17f86f9e1', 30.72, 63.78, 71.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('91e5ccdb-0dec-4ba0-9e1a-81117d6d04d3', 'SOLUSTRE 9 Peças Brinquedo De Decoração De Mesa Fóssil Trilobita Para Espécimes De Joias Em Sala De Aula Ensinando Coleções De Fósseis Ensinando Espécimes Ensinando Fósseis Trilobita', 'SOLUSTRE 9 Peças Brinquedo De Decoração De Mesa Fóssil Trilobita Para Espécimes De Joias Em Sala De Aula Ensinando Coleções De Fósseis Ensinando Espécimes Ensinando Fósseis Trilobita', 'brand 8', TRUE, 12, 101.7, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Eletrônicos e Tecnologia para Escritório', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('91e5ccdb-0dec-4ba0-9e1a-81117d6d04d3', 12.77, 49.88, 18.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('196ec99b-1779-4460-8784-ca6f506c47c3', '1 Peça De Óculos De Sol Para Bebês 6-12 Meses Óculos De Sol Para Bebês 0-6 Meses Óculos De Sol Redondos Com Flores Para Bebês Óculos De Sol A Granel Para Adultos Óculos De Sol', '1 Peça De Óculos De Sol Para Bebês 6-12 Meses Óculos De Sol Para Bebês 0-6 Meses Óculos De Sol Redondos Com Flores Para Bebês Óculos De Sol A Granel Para Adultos Óculos De Sol', 'brand 67', TRUE, 50, 42.89, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('196ec99b-1779-4460-8784-ca6f506c47c3', 93.06, 35.46, 91.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f3eef0e4-85d0-4bb3-b04e-b469ef132077', 'Rodo Nivelador de Areia Quadra-Vôlei e Futevôlei Inox', 'Rodo Nivelador de Areia Quadra-Vôlei e Futevôlei Inox', 'brand 24', TRUE, 100, 0.0, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Utensílios de Limpeza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f3eef0e4-85d0-4bb3-b04e-b469ef132077', 13.89, 52.57, 11.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dab44873-f320-494b-a7a6-7606f1d78223', 'Fones de ouvido de um lado preto Atendimento ao cliente Redução de ruído Fones de ouvido de 2,5 mm Controle de volume', 'Fones de ouvido de um lado preto Atendimento ao cliente Redução de ruído Fones de ouvido de 2,5 mm Controle de volume', 'brand 64', TRUE, 92, 0.0, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Fones de Ouvido', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dab44873-f320-494b-a7a6-7606f1d78223', 43.21, 28.64, 70.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cc8f76cb-8a5e-4c35-9c28-3dada07efb53', 'Roupa de Natal para Cachorro com capuz Vermelha - Tam. M', 'Roupa de Natal para Cachorro com capuz Vermelha - Tam. M', 'brand 34', TRUE, 43, 59.03, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cc8f76cb-8a5e-4c35-9c28-3dada07efb53', 97.57, 69.73, 39.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d81f165c-1827-4b71-a0bd-0f42f246720b', 'SP0037 52E 59MM Dark Havana/Brown Navigator Sunglasses for Men + BUNDLE With. Designer iWear Complimentary Eyewear Kit', 'SP0037 52E 59MM Dark Havana/Brown Navigator Sunglasses for Men + BUNDLE With. Designer iWear Complimentary Eyewear Kit', 'brand 45', TRUE, 54, 1334.89, 'c3a8d10b-eb69-47e2-93b3-ee9ea01a2252', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d81f165c-1827-4b71-a0bd-0f42f246720b', 14.41, 68.74, 36.24);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('eeaa67e3-0c46-47ee-b9de-c17e2deef524', 'Passarela Araújo, 54, Vila Pilar, 53298-824 Pacheco / PR', 849, 'casa', 'Guerra de Minas', '75079-768', 'Pastor da Prata', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('eeaa67e3-0c46-47ee-b9de-c17e2deef524', 113200918, -1734729914, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('0d136a8e-e445-45b9-83d0-d6e68f0eeda0', 'Dr. Carlos Eduardo Abreu', 'fda-luz@example.com', 'I$0Z6WkqUU', '51 9481 8237', NULL, NOW(), NOW(), 'Dr.', 'eeaa67e3-0c46-47ee-b9de-c17e2deef524');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('65d43714-3e19-4a6b-8940-b6b69c7ae14e', 'Trecho Diogo Barbosa, 88, Senhor Dos Passos, 29746035 Ferreira Grande / AC', 347, 'comercial', 'Jesus', '74732-247', 'Ramos de Santos', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('65d43714-3e19-4a6b-8940-b6b69c7ae14e', 801085882, -170362012, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Moreira - EI', '9:00-18:00', '41 3741-4283', '15397460893', '65d43714-3e19-4a6b-8940-b6b69c7ae14e');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('00c778dc-dc23-4a80-97ed-bd04a3371bdf', '0d136a8e-e445-45b9-83d0-d6e68f0eeda0', '35416270934', NOW(), '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('49140717-8698-4e66-9ed5-7b53b7484378', 'UKCOCO 1 Par De Fones De Ouvido De Corrida + Fones De Ouvido Fitness Fones De Ouvido Estéreo Fones De Ouvido Estéreo Fones De Ouvido Fones De Ouvido Fones De Ouvido Fones De Ouvido', 'UKCOCO 1 Par De Fones De Ouvido De Corrida + Fones De Ouvido Fitness Fones De Ouvido Estéreo Fones De Ouvido Estéreo Fones De Ouvido Fones De Ouvido Fones De Ouvido Fones De Ouvido', 'brand 76', TRUE, 93, 110.67, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Áudio', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('49140717-8698-4e66-9ed5-7b53b7484378', 96.87, 33.29, 50.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('87390c85-4c46-4e10-b60a-2300a7a2a179', 'ibasenice 3 Pçs Carrinho De Brinquedo Recém-Nascidos Assentos De Carro Mordedor Recém-Nascido Brinquedo Carrinho De Criança Pendurado Brinquedo Infantil Carrinho De Bebê Brinquedo Móvel', 'ibasenice 3 Pçs Carrinho De Brinquedo Recém-Nascidos Assentos De Carro Mordedor Recém-Nascido Brinquedo Carrinho De Criança Pendurado Brinquedo Infantil Carrinho De Bebê Brinquedo Móvel', 'brand 87', TRUE, 98, 153.54, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('87390c85-4c46-4e10-b60a-2300a7a2a179', 62.96, 39.22, 37.32);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1a53bbc6-6ae2-4eb1-a161-76c7b37ae470', 'Artist Series Flat Gel Brush - 6 by OPI for Women - 1 Pc Brush', 'Artist Series Flat Gel Brush - 6 by OPI for Women - 1 Pc Brush', 'brand 40', TRUE, 27, 168.0, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Beleza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1a53bbc6-6ae2-4eb1-a161-76c7b37ae470', 67.62, 55.2, 47.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8773f265-21aa-48be-ba65-98d89acc957d', 'Controle remoto para estéreo automotivo PIONEER AVH-5200BT', 'Controle remoto para estéreo automotivo PIONEER AVH-5200BT', 'brand 42', TRUE, 89, 93.38, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Acessórios para Home Theater', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8773f265-21aa-48be-ba65-98d89acc957d', 84.14, 23.34, 59.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('47400e60-c063-4795-adf8-45f1e73af74d', 'Decadência de Dois Grandes Homens', 'Decadência de Dois Grandes Homens', 'brand 3', TRUE, 41, 0.0, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('47400e60-c063-4795-adf8-45f1e73af74d', 56.64, 91.99, 76.1);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ccd2ddc9-42c4-4ea6-836f-f662bdd67dc0', 'PLAFOPE 4 Unidades De Algodão Colorido Circunferência Da Barriga Do Bebê Envoltório Abdominal Do Bebê Envoltório Do Umbigo Do Bebê Faixa De Cordão Umbilical Infantil Faixas De Umbigo', 'PLAFOPE 4 Unidades De Algodão Colorido Circunferência Da Barriga Do Bebê Envoltório Abdominal Do Bebê Envoltório Do Umbigo Do Bebê Faixa De Cordão Umbilical Infantil Faixas De Umbigo', 'brand 53', TRUE, 89, 0.0, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Chupetas e Mordedores', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ccd2ddc9-42c4-4ea6-836f-f662bdd67dc0', 46.79, 11.33, 91.74);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('59b521fc-6ff9-4a31-a22d-11078ea4e9e0', 'Condicionador de acabamento de vedação, Condicionador de vedação de borracha à prova de intempéries 100ML, Produtos para cuidados com janelas de automóveis para vedações de janelas de Maijia', 'Condicionador de acabamento de vedação, Condicionador de vedação de borracha à prova de intempéries 100ML, Produtos para cuidados com janelas de automóveis para vedações de janelas de Maijia', 'brand 40', TRUE, 86, 60.19, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Cuidados Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('59b521fc-6ff9-4a31-a22d-11078ea4e9e0', 81.91, 30.34, 12.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f8f2b81a-cf48-4b2d-8b8e-d66dc4ad359e', 'Mimo Stamping 3 - Aplicador de efeitos metalizados - 110v - Edição Especial', 'Mimo Stamping 3 - Aplicador de efeitos metalizados - 110v - Edição Especial', 'brand 45', TRUE, 60, 840.0, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f8f2b81a-cf48-4b2d-8b8e-d66dc4ad359e', 57.71, 21.96, 37.19);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('06495da2-ea12-4942-91e3-874fdd4d9c15', 'Alomejor Suporte de hélice Mini 3 Pro suporte de hélice protetor de alça estabilizador acessórios de drone', 'Alomejor Suporte de hélice Mini 3 Pro suporte de hélice protetor de alça estabilizador acessórios de drone', 'brand 39', TRUE, 71, 37.66, '8d5bbd79-fc30-4fa7-b899-ea2af4e9182d', 'Drones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('06495da2-ea12-4942-91e3-874fdd4d9c15', 70.71, 77.11, 71.32);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8263cbc8-2b26-45a7-8a7f-13b0d5f546e8', 'Loteamento Siqueira, 5, Vila Nova Cachoeirinha 3ª Seção, 01267398 Gonçalves / AM', 487, 'casa', 'Barbosa', '77091-426', 'Freitas', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8263cbc8-2b26-45a7-8a7f-13b0d5f546e8', -380708784, -193411259, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('bc5d872c-8b74-4162-bf38-63741cad7d6c', 'Vitor Carvalho', 'maria-helena57@example.net', '#3I*%JElXQ', '(021) 1759 6395', NULL, NOW(), NOW(), 'Vit', '8263cbc8-2b26-45a7-8a7f-13b0d5f546e8');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('300eb220-724c-44fb-94fa-8da426dc7ce2', 'Vereda de Novaes, 21, Cdi Jatoba, 53583-521 Andrade de Carvalho / RR', 591, 'comercial', 'Peixoto de Abreu', '81549-752', 'Araújo de Câmara', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('300eb220-724c-44fb-94fa-8da426dc7ce2', 624285574, -174650579, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('195bd916-a130-45f9-9c44-5ba399623aa5', 'Borges Barbosa S.A.', '9:00-18:00', '+55 61 9303 0887', '73208561903', '300eb220-724c-44fb-94fa-8da426dc7ce2');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('cc43f33f-50d0-418d-8e64-723e7c42ddf6', 'bc5d872c-8b74-4162-bf38-63741cad7d6c', '68170293502', NOW(), '195bd916-a130-45f9-9c44-5ba399623aa5');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dc6f577b-5292-42cb-becd-ac06d9109606', 'FRCOLOR Purificador De Banheira Pufe De Malha De Poliéster Para Banho 4 Unidades Esponja De Chuveiro Ou Buchas De Banho Resistentes Ao Desgaste Acessórios De Banho', 'FRCOLOR Purificador De Banheira Pufe De Malha De Poliéster Para Banho 4 Unidades Esponja De Chuveiro Ou Buchas De Banho Resistentes Ao Desgaste Acessórios De Banho', 'brand 4', TRUE, 57, 71.24, '195bd916-a130-45f9-9c44-5ba399623aa5', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dc6f577b-5292-42cb-becd-ac06d9109606', 17.41, 22.02, 94.78);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('78e760b3-1ef4-4f49-9888-c8e75d642842', 'Bomba de água submersível DC Bomba de esgoto Saída de bomba submersível para jardinagem externa Bomba de drenagem Barco de pesca Marinha 12V Grande capacidade para bomba Receptáculo de saída doméstica 130W 25Mm Bombas', 'Bomba de água submersível DC Bomba de esgoto Saída de bomba submersível para jardinagem externa Bomba de drenagem Barco de pesca Marinha 12V Grande capacidade para bomba Receptáculo de saída doméstica 130W 25Mm Bombas', 'brand 64', TRUE, 89, 709.09, '195bd916-a130-45f9-9c44-5ba399623aa5', 'Piscinas, Ofurôs e Materiais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('78e760b3-1ef4-4f49-9888-c8e75d642842', 71.0, 31.31, 51.1);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f97f9edc-e3cd-4f6f-bd75-005d0eb7c4b4', 'GKPLY Bolsa de Ombro Feminina Pequena Mini Bolsa Feminina Crossbody Clutch Bolsas Anos 90(Branco)', 'GKPLY Bolsa de Ombro Feminina Pequena Mini Bolsa Feminina Crossbody Clutch Bolsas Anos 90(Branco)', 'brand 24', TRUE, 16, 139.9, '195bd916-a130-45f9-9c44-5ba399623aa5', 'Bolsas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f97f9edc-e3cd-4f6f-bd75-005d0eb7c4b4', 99.04, 52.09, 18.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fcbca004-5d4d-451b-bdb4-1c379f8aae7d', 'Bon Iver [Disco de Vinil]', 'Bon Iver [Disco de Vinil]', 'brand 41', TRUE, 100, 211.19, '195bd916-a130-45f9-9c44-5ba399623aa5', 'CD e Vinil', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fcbca004-5d4d-451b-bdb4-1c379f8aae7d', 91.43, 81.06, 26.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('771fc3d7-05ab-4148-86ca-7021707aedc4', 'Esfoliante Corporal Celulite - Esfoliante Corporal Pecah Orgânico Esfoliante Corporal Iluminador | Esfoliante Corporal com Peach Hidratante Esfoliante para Celulite, Limpeza Profunda para Edorco', 'Esfoliante Corporal Celulite - Esfoliante Corporal Pecah Orgânico Esfoliante Corporal Iluminador | Esfoliante Corporal com Peach Hidratante Esfoliante para Celulite, Limpeza Profunda para Edorco', 'brand 38', TRUE, 56, 69.07, '195bd916-a130-45f9-9c44-5ba399623aa5', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('771fc3d7-05ab-4148-86ca-7021707aedc4', 93.03, 59.28, 32.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5ea1d301-d33c-4f1a-8630-6aee1a6838e1', 'Colar com pingente religioso de cruz Ankh de prata esterlina 925 joias finas para mulheres presentes para ela, Prata esterlina', 'Colar com pingente religioso de cruz Ankh de prata esterlina 925 joias finas para mulheres presentes para ela, Prata esterlina', 'brand 88', TRUE, 48, 586.52, '195bd916-a130-45f9-9c44-5ba399623aa5', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5ea1d301-d33c-4f1a-8630-6aee1a6838e1', 51.65, 22.27, 37.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('01588282-a368-4c20-b04e-42e2f255275b', 'Molde de Ponte de Violino Forte, Fácil de Usar, Acrílico, Medição Precisa, Molde de Ponte de Violino para Reparo (4/4)', 'Molde de Ponte de Violino Forte, Fácil de Usar, Acrílico, Medição Precisa, Molde de Ponte de Violino para Reparo (4/4)', 'brand 76', TRUE, 88, 0.0, '195bd916-a130-45f9-9c44-5ba399623aa5', 'Instrumentos Musicais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('01588282-a368-4c20-b04e-42e2f255275b', 93.23, 23.65, 99.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3389000c-e763-4376-ac84-9640664dec70', 'Boys' Knit Drawstring Shorts, Naval, Medium (5)', 'Boys' Knit Drawstring Shorts, Naval, Medium (5)', 'brand 54', TRUE, 40, 209.0, '195bd916-a130-45f9-9c44-5ba399623aa5', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3389000c-e763-4376-ac84-9640664dec70', 89.55, 11.73, 74.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fa6483c0-cab2-447e-b956-0c4bd2b8e3c8', 'Sacola de lona para mulheres, animais do oceano, tartaruga, golfinho, sacolas grandes para homens com bolsos, sacolas de compras resistentes, sacolas de compras reutilizáveis, bolsa de ombro casual para escola, trabalho, praia, Multicor', 'Sacola de lona para mulheres, animais do oceano, tartaruga, golfinho, sacolas grandes para homens com bolsos, sacolas de compras resistentes, sacolas de compras reutilizáveis, bolsa de ombro casual para escola, trabalho, praia, Multicor', 'brand 28', TRUE, 81, 121.09, '195bd916-a130-45f9-9c44-5ba399623aa5', 'Bolsas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fa6483c0-cab2-447e-b956-0c4bd2b8e3c8', 99.16, 51.89, 25.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d354a991-6493-4e7f-96dd-437c80ea23c2', 'Garrafinha com canudo 360 ml Cinza Twistshake, Twistshake, Cinza', 'Garrafinha com canudo 360 ml Cinza Twistshake, Twistshake, Cinza', 'brand 2', TRUE, 69, 58.1, '195bd916-a130-45f9-9c44-5ba399623aa5', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d354a991-6493-4e7f-96dd-437c80ea23c2', 79.98, 65.09, 40.66);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('64ab0610-9143-41e7-97a4-acea897d4a31', 'Loteamento de Pinto, 99, Goiania, 10872197 Rocha Verde / RN', 178, 'casa', 'Cavalcanti da Serra', '43775-790', 'Sá', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('64ab0610-9143-41e7-97a4-acea897d4a31', -394814429, -858970111, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('d8f82d62-9b85-4241-8d47-f4334287ea96', 'Mathias Abreu', 'qalves@example.com', 'T8QbayT@(o', '+55 (071) 0813 3603', NULL, NOW(), NOW(), 'Mat', '64ab0610-9143-41e7-97a4-acea897d4a31');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c5077fd5-c883-4f61-828f-63265159d9ba', 'Fazenda Pedro Miguel da Rosa, 91, Conjunto Califórnia I, 64929974 Cunha / AM', 784, 'comercial', 'Albuquerque', '77336-600', 'da Costa', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c5077fd5-c883-4f61-828f-63265159d9ba', -308370092, 263247070, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Rezende S.A.', '9:00-18:00', '0800-877-3166', '23684751090', 'c5077fd5-c883-4f61-828f-63265159d9ba');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('f63c90b2-c193-4b24-babc-18f2c4e868c6', 'd8f82d62-9b85-4241-8d47-f4334287ea96', '37052846900', NOW(), '454d907b-6195-4f0f-a45b-755c74a2c2ab');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0e49e131-4dc6-4a4a-97c5-48d4d70bcaf8', 'Sandália Moleca Rasteira Fivela 5443104', 'Sandália Moleca Rasteira Fivela 5443104', 'brand 95', TRUE, 19, 59.99, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0e49e131-4dc6-4a4a-97c5-48d4d70bcaf8', 85.87, 98.06, 33.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6cb4166e-c64d-4604-a9a0-dafa2576c09a', 'Pastelmat colado Clairefontaine 24 x 30 cm em cores sortidas', 'Pastelmat colado Clairefontaine 24 x 30 cm em cores sortidas', 'brand 78', TRUE, 74, 298.0, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6cb4166e-c64d-4604-a9a0-dafa2576c09a', 89.9, 16.64, 96.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('617fc46e-92af-4006-aab4-0bc5886e1822', 'POPETPOP 1,5M Aspirador de filtro de água de aquário, Aspirador de cascalho de aquário, Mangueira de bomba de sifão para troca de água e limpeza de areia - Branco', 'POPETPOP 1,5M Aspirador de filtro de água de aquário, Aspirador de cascalho de aquário, Mangueira de bomba de sifão para troca de água e limpeza de areia - Branco', 'brand 46', TRUE, 79, 37.47, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('617fc46e-92af-4006-aab4-0bc5886e1822', 71.41, 87.0, 67.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3fcd823d-e4a0-4859-ac18-b1246625a1e1', 'Capa de bateria, superfície de borracha para uso externo', 'Capa de bateria, superfície de borracha para uso externo', 'brand 8', TRUE, 56, 0.0, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Ferramentas e Equipamentos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3fcd823d-e4a0-4859-ac18-b1246625a1e1', 89.29, 10.64, 99.88);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b6bc34b7-2c96-43de-91e9-58bf2ef68d70', 'Chupeta de bebê, Tamanho Compacto, Confortável, Silicone Macio, Chupeta Ortodôntica para Desenvolvimento Oral', 'Chupeta de bebê, Tamanho Compacto, Confortável, Silicone Macio, Chupeta Ortodôntica para Desenvolvimento Oral', 'brand 76', TRUE, 83, 35.16, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Chupetas e Mordedores', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b6bc34b7-2c96-43de-91e9-58bf2ef68d70', 71.83, 60.33, 29.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('76e51d45-acb1-4b7e-8dec-71b423475d30', 'Protetor de Mão Fixa De Guidão De Moto BIZ Impermeável De Nylon - Pioneira', 'Protetor de Mão Fixa De Guidão De Moto BIZ Impermeável De Nylon - Pioneira', 'brand 81', TRUE, 72, 78.8, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Equipamento de Proteção para Pilotar Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('76e51d45-acb1-4b7e-8dec-71b423475d30', 29.66, 29.05, 25.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4027d0da-1df1-4c79-941e-8ef6ce27806c', '4K Mini PC, HTPC, NUC, Small Server, Windows 11 or Linux Ubuntu, Support Proxmox, Vmware, ESXI, KODI, Intel 8 Cores I9 10980HK, HUNSN BY02, DP, HDMI, TYPE-C, 2 x LAN, 64G RAM, 1TB M.2 NVME SSD', '4K Mini PC, HTPC, NUC, Small Server, Windows 11 or Linux Ubuntu, Support Proxmox, Vmware, ESXI, KODI, Intel 8 Cores I9 10980HK, HUNSN BY02, DP, HDMI, TYPE-C, 2 x LAN, 64G RAM, 1TB M.2 NVME SSD', 'brand 52', TRUE, 55, 5816.0, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4027d0da-1df1-4c79-941e-8ef6ce27806c', 62.59, 58.79, 74.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b7d21f99-fc0b-4494-bf16-95aaaccdf0b6', 'TOYANDONA Toalhetes Umidificador Ferramenta De Calor Toalhetes Máscara Aquecida Aquecedor Portátil Aquecedor De Máscara Feminina Espelho De Maquilhagem Falta Toalhitas Molhadas Abs Vermelho', 'TOYANDONA Toalhetes Umidificador Ferramenta De Calor Toalhetes Máscara Aquecida Aquecedor Portátil Aquecedor De Máscara Feminina Espelho De Maquilhagem Falta Toalhitas Molhadas Abs Vermelho', 'brand 44', TRUE, 56, 97.67, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b7d21f99-fc0b-4494-bf16-95aaaccdf0b6', 87.09, 33.83, 19.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3e4c6625-d9c9-43b7-bf15-da29be7a5747', 'Mochila masculina Oxford de tecido para laptop, mochila de viagem para uso diário (preta)', 'Mochila masculina Oxford de tecido para laptop, mochila de viagem para uso diário (preta)', 'brand 22', TRUE, 43, 232.84, '454d907b-6195-4f0f-a45b-755c74a2c2ab', 'Malas e Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3e4c6625-d9c9-43b7-bf15-da29be7a5747', 29.65, 23.48, 72.06);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b7308f2e-8f54-4370-b8f8-c756094311c1', 'Vale de Gomes, 67, Vila Independencia 3ª Seção, 79627481 Almeida de Oliveira / MA', 992, 'casa', 'Souza', '18582-435', 'Câmara de Minas', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b7308f2e-8f54-4370-b8f8-c756094311c1', -892102860, -1644835597, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('26e68bf9-b3de-4a9d-83b7-e1bc0de2dfd4', 'Gabriela Montenegro', 'fmonteiro@example.org', '@vBE0OpOm%', '51 6725 3030', NULL, NOW(), NOW(), 'Gab', 'b7308f2e-8f54-4370-b8f8-c756094311c1');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4e813365-5e52-44ce-8049-36de6e71dc0a', 'Largo Ayla Leão, 99, Lorena, 06626-464 Barbosa da Praia / RS', 910, 'comercial', 'Brito', '61202-442', 'Cavalcante', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4e813365-5e52-44ce-8049-36de6e71dc0a', 67644304, 1521790155, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'Lopes', '9:00-18:00', '+55 31 7197 5787', '89327410505', '4e813365-5e52-44ce-8049-36de6e71dc0a');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('f4c6101f-3425-46a4-9396-05abbb8ea3de', '26e68bf9-b3de-4a9d-83b7-e1bc0de2dfd4', '90354218760', NOW(), '827ddbc3-78b3-4624-bc5a-f659cdc72afe');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d9fbfa51-59f9-4062-8542-3040a24fb3ca', 'SEMPRE NO MEU CORAÇÃO & INESPERADO: CONTOS DE AMOR (O AMOR ESTÁ NO AR)', 'SEMPRE NO MEU CORAÇÃO & INESPERADO: CONTOS DE AMOR (O AMOR ESTÁ NO AR)', 'brand 8', TRUE, 77, 0.0, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d9fbfa51-59f9-4062-8542-3040a24fb3ca', 96.22, 82.92, 18.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dc5c3910-da35-4acc-97b8-2eef376c1ec0', 'Colar de ouro amarelo 14 k com pingente de coração de renda joias finas para mulheres presentes para ela, Ouro amarelo', 'Colar de ouro amarelo 14 k com pingente de coração de renda joias finas para mulheres presentes para ela, Ouro amarelo', 'brand 79', TRUE, 45, 1093.24, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dc5c3910-da35-4acc-97b8-2eef376c1ec0', 85.33, 57.02, 45.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('957cda8a-7f19-4077-8918-77715657d829', 'Colar com pingente de joaninha esmaltada em ouro amarelo 14k com pingente de inseto aracnídeo joias finas para mulheres presentes para ela, esmalte', 'Colar com pingente de joaninha esmaltada em ouro amarelo 14k com pingente de inseto aracnídeo joias finas para mulheres presentes para ela, esmalte', 'brand 53', TRUE, 18, 1182.43, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('957cda8a-7f19-4077-8918-77715657d829', 15.55, 82.84, 38.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c4e5678e-205b-4ca7-a341-de1fce4f3084', '1 Peça De Óculos De Sol Decoração Steampunk Decoração Infantil Óculos De Sol Espelhados Óculos De Sol Engraçados Óculos De Festa Favores De Festa De Férias Óculos Decorativos', '1 Peça De Óculos De Sol Decoração Steampunk Decoração Infantil Óculos De Sol Espelhados Óculos De Sol Engraçados Óculos De Festa Favores De Festa De Férias Óculos Decorativos', 'brand 93', TRUE, 66, 54.69, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c4e5678e-205b-4ca7-a341-de1fce4f3084', 29.11, 84.13, 45.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('78352621-d3f4-4d07-ba0a-11edb0798a10', 'Men's 2 Pices Tracksuit De Manga Longa Stand Stand Collar Jacketpants Soril Suor Suor', 'Men's 2 Pices Tracksuit De Manga Longa Stand Stand Collar Jacketpants Soril Suor Suor', 'brand 51', TRUE, 13, 256.99, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'Esportes com Raquete', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('78352621-d3f4-4d07-ba0a-11edb0798a10', 22.66, 20.24, 70.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3548122d-da02-407d-8c00-ec4f82424789', 'iplusmile Jaqueta Reflexiva Casacos De Cachorro Casacos Quentes Casaco De Cachorro Quente Roupas De Cachorro Reflexivo Casaco De Cachorro Rosa Casaco De Cachorro De Cachorro', 'iplusmile Jaqueta Reflexiva Casacos De Cachorro Casacos Quentes Casaco De Cachorro Quente Roupas De Cachorro Reflexivo Casaco De Cachorro Rosa Casaco De Cachorro De Cachorro', 'brand 99', TRUE, 21, 0.0, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3548122d-da02-407d-8c00-ec4f82424789', 50.06, 25.97, 38.39);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b80abd19-ce7e-4b81-bc26-3d807be064fd', 'Torneira Banheiro Cascata Monocomando Quente Frio Misturador - Dourada', 'Torneira Banheiro Cascata Monocomando Quente Frio Misturador - Dourada', 'brand 91', TRUE, 35, 332.7, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'Instalações de Cozinha e Banheiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b80abd19-ce7e-4b81-bc26-3d807be064fd', 65.78, 56.53, 63.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('75a959a4-7d69-4f52-8d2f-5cd8b1362c2c', 'Aljava de flecha de couro bovino para segurar 6 flechas suporte de flecha aljava adequada para flechas suporte de flecha de bolso aljava de bolso de couro', 'Aljava de flecha de couro bovino para segurar 6 flechas suporte de flecha aljava adequada para flechas suporte de flecha de bolso aljava de bolso de couro', 'brand 61', TRUE, 64, 0.0, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('75a959a4-7d69-4f52-8d2f-5cd8b1362c2c', 77.94, 67.1, 94.96);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('23ea13f7-42e1-4c2c-8b88-f84a65f0ea46', 'DOINGKING Hélice de fibra de carbono para drone, lâmina de fibra de carbono de alta rigidez para aeronaves FIMI X8 SE', 'DOINGKING Hélice de fibra de carbono para drone, lâmina de fibra de carbono de alta rigidez para aeronaves FIMI X8 SE', 'brand 29', TRUE, 40, 118.49, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'Drones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('23ea13f7-42e1-4c2c-8b88-f84a65f0ea46', 43.82, 28.54, 78.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4e514a4d-4a3a-46fe-8af1-4c76e7d69917', 'Mochila Adidas Real Madri Azul 26 Litros', 'Mochila Adidas Real Madri Azul 26 Litros', 'brand 43', TRUE, 91, 258.9, '827ddbc3-78b3-4624-bc5a-f659cdc72afe', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4e514a4d-4a3a-46fe-8af1-4c76e7d69917', 58.17, 13.88, 69.81);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('a20ba840-3084-4aa8-8057-cc5f7b4634fa', 'Área Isaque Nunes, 8, Palmeiras, 21716-537 Aragão Paulista / PA', 973, 'casa', 'Mendes Verde', '59799-437', 'Nogueira de Goiás', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('a20ba840-3084-4aa8-8057-cc5f7b4634fa', -764812769, -1420250448, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('63d9813d-7d8c-41b0-b65b-867205237834', 'Ian Cassiano', 'cecilia08@example.org', '+6a!C4Stsk', '(061) 7563-1283', NULL, NOW(), NOW(), 'Ian', 'a20ba840-3084-4aa8-8057-cc5f7b4634fa');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4e02fd7a-c688-43ef-bfcc-27d5ed873487', 'Vale Pedro Pacheco, 73, Providencia, 37261-038 Farias do Galho / AP', 288, 'comercial', 'Cunha de Goiás', '77214-431', 'Sampaio dos Dourados', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4e02fd7a-c688-43ef-bfcc-27d5ed873487', -313778001, 826227339, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('03e0917a-03f5-435f-b628-845d6d5789e1', 'Cardoso', '9:00-18:00', '(011) 0016 8173', '76139084296', '4e02fd7a-c688-43ef-bfcc-27d5ed873487');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('ea7de10c-4de1-49e8-8a07-84c90deee926', '63d9813d-7d8c-41b0-b65b-867205237834', '07681453253', NOW(), '03e0917a-03f5-435f-b628-845d6d5789e1');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('33e7b431-9566-44cd-aa44-a705d7630289', 'NOLITOY 2Pcs Dr Buquê De Urso Grinalda Decoração Ornamentos Presentes Bicho De Pelúcia Bicho De Pelúcia 2022 Lembrancinhas Para Festa De Formatura Presente De Formatura Buquê De Urso', 'NOLITOY 2Pcs Dr Buquê De Urso Grinalda Decoração Ornamentos Presentes Bicho De Pelúcia Bicho De Pelúcia 2022 Lembrancinhas Para Festa De Formatura Presente De Formatura Buquê De Urso', 'brand 65', TRUE, 98, 49.27, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Pelúcias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('33e7b431-9566-44cd-aa44-a705d7630289', 11.88, 23.32, 94.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c74c2229-eaa8-4d11-9ec5-30ee0b72825e', 'Mochila de viagem essencial para mulheres homens aprovada por companhias aéreas bolsa de viagem mochila para laptop universitário', 'Mochila de viagem essencial para mulheres homens aprovada por companhias aéreas bolsa de viagem mochila para laptop universitário', 'brand 27', TRUE, 39, 0.0, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c74c2229-eaa8-4d11-9ec5-30ee0b72825e', 99.02, 81.07, 64.35);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1fdff7bd-bc20-4142-9565-830ad83496c7', 'VINHO PORTUGUES SEGREDO DO ABADE SAFRA 2022 TINTO', 'VINHO PORTUGUES SEGREDO DO ABADE SAFRA 2022 TINTO', 'brand 67', TRUE, 77, 38.9, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Bebidas Alcoólicas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1fdff7bd-bc20-4142-9565-830ad83496c7', 71.5, 55.11, 61.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('36ac0fe3-6986-4074-a43c-4308a33b828c', 'Torneira Filtro Parede Cromada Flexível Cone 2 Jatos', 'Torneira Filtro Parede Cromada Flexível Cone 2 Jatos', 'brand 19', TRUE, 63, 107.9, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Instalações de Cozinha e Banheiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('36ac0fe3-6986-4074-a43c-4308a33b828c', 46.63, 59.56, 56.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c06a474e-cd80-4768-b830-fc687b91a4fe', 'Capa Proteção X-box Series S - Vertical', 'Capa Proteção X-box Series S - Vertical', 'brand 64', TRUE, 17, 0.0, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Ar e Ventilação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c06a474e-cd80-4768-b830-fc687b91a4fe', 83.81, 12.36, 30.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0332035a-2bb2-467a-94d3-1d4d00d28671', 'braço cadeira almofadas gel resfriamento almofada cotovelo cadeira pressão cadeira jogos com almofadas braço espuma memória para cadeira jogos', 'braço cadeira almofadas gel resfriamento almofada cotovelo cadeira pressão cadeira jogos com almofadas braço espuma memória para cadeira jogos', 'brand 80', TRUE, 28, 64.39, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Móveis para Escritório', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0332035a-2bb2-467a-94d3-1d4d00d28671', 12.35, 49.28, 67.35);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b0ce2845-b2af-48e0-8362-685e2fd3419c', 'DIY Fashion Star - Design Hacks Clothing Game', 'DIY Fashion Star - Design Hacks Clothing Game', 'brand 34', TRUE, 84, 0.0, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b0ce2845-b2af-48e0-8362-685e2fd3419c', 40.83, 78.04, 25.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('663d5bae-2289-46b8-b437-68c53dd9ddb6', 'Luminária Botas (Dora), 3D Light FX, Azul', 'Luminária Botas (Dora), 3D Light FX, Azul', 'brand 30', TRUE, 97, 71.46, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('663d5bae-2289-46b8-b437-68c53dd9ddb6', 54.27, 88.9, 29.18);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7ee672b6-e118-4af4-bfc2-08044258b5cd', 'PAWISE 28565 Cubo de brinquedo para gatos', 'PAWISE 28565 Cubo de brinquedo para gatos', 'brand 70', TRUE, 8, 108.44, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7ee672b6-e118-4af4-bfc2-08044258b5cd', 29.24, 58.97, 75.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0a9c17d-417a-4bab-a0ed-1da2ec1c3d8d', 'Uonlytech 2 Peças Dispositivo De Armazenamento De Dados Violino Piano Desenho Animado Presente 16G Driver USB Drive USB Flash Drive Instrumento Musical 32G Instrumento Musical Flash Drive', 'Uonlytech 2 Peças Dispositivo De Armazenamento De Dados Violino Piano Desenho Animado Presente 16G Driver USB Drive USB Flash Drive Instrumento Musical 32G Instrumento Musical Flash Drive', 'brand 69', TRUE, 61, 112.79, '03e0917a-03f5-435f-b628-845d6d5789e1', 'Memória e Armazenamento de Dados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0a9c17d-417a-4bab-a0ed-1da2ec1c3d8d', 56.26, 84.97, 57.41);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('d816a9cf-8bcd-41a4-a5c1-9d9d2655abb8', 'Pátio de Silveira, 77, Conjunto Floramar, 85032-304 Macedo da Serra / ES', 923, 'casa', 'da Mata', '36419-897', 'Araújo do Oeste', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('d816a9cf-8bcd-41a4-a5c1-9d9d2655abb8', 636498337, -1128637349, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('9e967716-7c55-48fc-b6bf-bab16ef01ef6', 'Juan Câmara', 'ycardoso@example.org', 'r#_1VD22Fu', '51 6910 3574', NULL, NOW(), NOW(), 'Jua', 'd816a9cf-8bcd-41a4-a5c1-9d9d2655abb8');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('5f1ad737-3c59-4164-b5ca-f7f028cf2eec', 'Feira de Correia, 70, Ernesto Nascimento, 16075-303 Vasconcelos / CE', 649, 'comercial', 'Freitas', '68367-744', 'Souza da Prata', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('5f1ad737-3c59-4164-b5ca-f7f028cf2eec', 309153340, 1453499657, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'das Neves S.A.', '9:00-18:00', '+55 (041) 8102-8121', '07914263516', '5f1ad737-3c59-4164-b5ca-f7f028cf2eec');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('2881d1cc-1613-427b-8188-ae0a4997dece', '9e967716-7c55-48fc-b6bf-bab16ef01ef6', '28314657964', NOW(), '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b476b987-dbd1-4d2e-a94d-a08944283a3c', 'Conjunto 2 Tomadas, Alumbra, Gracia 85335, Branco', 'Conjunto 2 Tomadas, Alumbra, Gracia 85335, Branco', 'brand 56', TRUE, 18, 19.89, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Equipamento Elétrico', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b476b987-dbd1-4d2e-a94d-a08944283a3c', 37.51, 56.96, 43.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cdbd06de-254b-4ee5-9ae3-927f75d05dd4', 'Roupa interior esportiva feminina ioga corrida fitness camiseta sem mangas de dança roupa exterior à prova de choque sutiã estereotipado colete sutiã', 'Roupa interior esportiva feminina ioga corrida fitness camiseta sem mangas de dança roupa exterior à prova de choque sutiã estereotipado colete sutiã', 'brand 20', TRUE, 6, 159.0, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Compras Internacionais em Moda', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cdbd06de-254b-4ee5-9ae3-927f75d05dd4', 34.17, 76.03, 56.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a161cea7-31ec-4646-b506-3169a5e997b5', 'Aquecedor de carro de aquecimento automático 12V 600 W ventilador para-brisa para peças de reposição acessórios interiores de automóveis, aparelhos elétricos de carro', 'Aquecedor de carro de aquecimento automático 12V 600 W ventilador para-brisa para peças de reposição acessórios interiores de automóveis, aparelhos elétricos de carro', 'brand 28', TRUE, 6, 160.19, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Peças e Acessórios para Automóveis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a161cea7-31ec-4646-b506-3169a5e997b5', 63.01, 54.02, 96.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7928185d-40a7-4441-bb85-2adf48f689f6', 'Sapatos aquáticos descalços, água leves unissex femininos para natação e mergulho - academia, ioga, fitness, surfe, mergulho, snorkeling à beira-mar banho Welts', 'Sapatos aquáticos descalços, água leves unissex femininos para natação e mergulho - academia, ioga, fitness, surfe, mergulho, snorkeling à beira-mar banho Welts', 'brand 69', TRUE, 55, 58.39, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7928185d-40a7-4441-bb85-2adf48f689f6', 34.47, 77.75, 77.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7c0669d3-11ea-4301-b2d2-33b952703d58', 'Cigooxm Aparador de pêlos e barbeador Aparador de pêlos elétrico para homens Aparador profissional à prova de s para o rosto, pescoço, nariz, sobrancelhas e pêlos do corpo', 'Cigooxm Aparador de pêlos e barbeador Aparador de pêlos elétrico para homens Aparador profissional à prova de s para o rosto, pescoço, nariz, sobrancelhas e pêlos do corpo', 'brand 69', TRUE, 63, 56.55, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7c0669d3-11ea-4301-b2d2-33b952703d58', 28.33, 27.21, 65.83);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('56774e4c-500e-4e4d-9674-2e2039e3efc0', 'Baoblaze Tigelas para gatos, Tigelas elevadas para comida de gato anti-vômito, Tigela elevada e inclinada para gatos, Tigela de cerâmica para comida para, VERDE', 'Baoblaze Tigelas para gatos, Tigelas elevadas para comida de gato anti-vômito, Tigela elevada e inclinada para gatos, Tigela de cerâmica para comida para, VERDE', 'brand 62', TRUE, 6, 83.99, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('56774e4c-500e-4e4d-9674-2e2039e3efc0', 27.01, 34.88, 93.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1412012e-0808-4186-a877-b268042a0896', 'Gatuida Câmera Fotografica Câmera De Vídeo Profissional Câmera Digital 1080P Câmera Telefoto Zoom Câmera Filmadora Abs Preto 1080P Filmadora Digital', 'Gatuida Câmera Fotografica Câmera De Vídeo Profissional Câmera Digital 1080P Câmera Telefoto Zoom Câmera Filmadora Abs Preto 1080P Filmadora Digital', 'brand 20', TRUE, 1, 198.96, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1412012e-0808-4186-a877-b268042a0896', 37.51, 31.43, 64.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ef6d9597-4392-4388-9a0b-8bc8e6571a23', '12x Cartliv Equaliv 60 Cápsulas', '12x Cartliv Equaliv 60 Cápsulas', 'brand 9', TRUE, 74, 680.9, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Vitaminas, Minerais e Suplementos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ef6d9597-4392-4388-9a0b-8bc8e6571a23', 16.65, 75.98, 65.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6c637d0c-9c53-49db-8d0b-5029461b412d', 'GARVALON Tartaruga Terraço Ventosas Decoração Terrário Tartaruga Rampa Tartarugas Plataforma De Frade Suprimentos Acessórios Para Tanque De Répteis Tartaruga Frade Animal Plástico Anfíbio', 'GARVALON Tartaruga Terraço Ventosas Decoração Terrário Tartaruga Rampa Tartarugas Plataforma De Frade Suprimentos Acessórios Para Tanque De Répteis Tartaruga Frade Animal Plástico Anfíbio', 'brand 43', TRUE, 83, 71.99, '2b7eb7cc-9901-4fdb-94d9-932cf9bcc6d1', 'Produtos para Répteis e Anfíbios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6c637d0c-9c53-49db-8d0b-5029461b412d', 23.93, 74.66, 30.65);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('7f6932a2-df3c-48ba-b546-ea0a08f14fd6', 'Passarela Monteiro, 63, Europa, 66420460 Farias / ES', 648, 'casa', 'Marques de Siqueira', '76254-156', 'Nogueira do Galho', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('7f6932a2-df3c-48ba-b546-ea0a08f14fd6', 865446131, -195386431, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('df9d7a3f-f776-4a5f-ad12-4461a851b16d', 'Enrico Pimenta', 'heitorazevedo@example.org', '%8WL^g0x3v', '(021) 2720-9163', NULL, NOW(), NOW(), 'Enr', '7f6932a2-df3c-48ba-b546-ea0a08f14fd6');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('913fc73f-dc71-4e42-baab-bad76ba207cf', 'Conjunto de Fernandes, 45, Lourdes, 83929-526 Ramos / CE', 576, 'comercial', 'Costa', '39141-505', 'Lima do Norte', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('913fc73f-dc71-4e42-baab-bad76ba207cf', -364676153, 735388273, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Pacheco Sá S.A.', '9:00-18:00', '51 9827 1734', '03694587292', '913fc73f-dc71-4e42-baab-bad76ba207cf');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('688eba66-ac25-4c5f-8732-bf877ab10308', 'df9d7a3f-f776-4a5f-ad12-4461a851b16d', '31845607244', NOW(), '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f4ad6cc3-df2e-4c04-a8c5-4c5893c98eed', 'Bewinner Extensor HDMI, transmissor e receptor HDMI sem fio 1920 x 1080P kits de até 100 m, reprodutor de streaming de áudio de vídeo de laptop, PC, telefone para monitor de projetor HDTV (EUA)', 'Bewinner Extensor HDMI, transmissor e receptor HDMI sem fio 1920 x 1080P kits de até 100 m, reprodutor de streaming de áudio de vídeo de laptop, PC, telefone para monitor de projetor HDTV (EUA)', 'brand 87', TRUE, 10, 626.06, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f4ad6cc3-df2e-4c04-a8c5-4c5893c98eed', 18.01, 50.31, 67.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4443ba1b-688d-4f2d-b853-22477c314b87', 'Mikinona Acessórios Da Barra De Café Presente Para Os Amantes Do Café Acessório Da Barra De Café Moedores De Café Café Expresso Prensa De Café Calcador De Café Máquina De Café Italiana', 'Mikinona Acessórios Da Barra De Café Presente Para Os Amantes Do Café Acessório Da Barra De Café Moedores De Café Café Expresso Prensa De Café Calcador De Café Máquina De Café Italiana', 'brand 33', TRUE, 100, 139.94, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4443ba1b-688d-4f2d-b853-22477c314b87', 39.68, 80.4, 19.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eb0d20b4-6c82-45e1-aefe-4ca30fa49275', 'Roupinha Pet Básica Luppet para Cachorro Rosa EGG', 'Roupinha Pet Básica Luppet para Cachorro Rosa EGG', 'brand 2', TRUE, 70, 63.52, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eb0d20b4-6c82-45e1-aefe-4ca30fa49275', 61.81, 22.66, 44.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('27072033-d489-4168-895f-d3fa2a920b76', 'Armário para Escritório 2 Portas PE40 Pandin Móveis Walnut', 'Armário para Escritório 2 Portas PE40 Pandin Móveis Walnut', 'brand 63', TRUE, 83, 671.82, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Móveis para Escritório', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('27072033-d489-4168-895f-d3fa2a920b76', 42.1, 74.2, 38.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e011b83e-d424-44aa-b6a2-29635c30f723', 'CALLARON 4 Pçs Antiaderente Tapete De Forno Elétrico Para Churrasco Torradeira Forno Preto Torradeira Capa De Tapete De Cozimento Grelha A Carvão Almofada Antiaderente Capas De Tapete Para', 'CALLARON 4 Pçs Antiaderente Tapete De Forno Elétrico Para Churrasco Torradeira Forno Preto Torradeira Capa De Tapete De Cozimento Grelha A Carvão Almofada Antiaderente Capas De Tapete Para', 'brand 20', TRUE, 38, 74.6, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e011b83e-d424-44aa-b6a2-29635c30f723', 45.73, 82.0, 18.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('57241aa5-c81b-40ab-b36f-37277d87d2b1', 'Reepro Barbeador elétrico multifuncional 5 em 1 com lâmina flutuante 3D, design de contato com a pele sem costura e corpo lavável na água', 'Reepro Barbeador elétrico multifuncional 5 em 1 com lâmina flutuante 3D, design de contato com a pele sem costura e corpo lavável na água', 'brand 49', TRUE, 6, 247.0, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('57241aa5-c81b-40ab-b36f-37277d87d2b1', 53.02, 25.76, 20.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1c94df23-bbcf-43c7-90ba-1051767ee2ec', '2Pcs Clipe De Mesa Acessórios De Mesa De Trabalho Suporte De Microfone De Mesa Para Telefone Boom Boom Braço Braçadeiras De Tubo Braçadeira De Retenção De Mesa Fornecimento De VICASKY', '2Pcs Clipe De Mesa Acessórios De Mesa De Trabalho Suporte De Microfone De Mesa Para Telefone Boom Boom Braço Braçadeiras De Tubo Braçadeira De Retenção De Mesa Fornecimento De VICASKY', 'brand 98', TRUE, 4, 99.53, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Instrumentos Musicais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1c94df23-bbcf-43c7-90ba-1051767ee2ec', 36.41, 18.98, 41.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('50400912-e573-4177-aeef-368426abf1da', 'Sports à Prova D' Água Relógio de Desgaste Resistente a Crianças Assistir Doméstico Relógio Digital Esportes', 'Sports à Prova D' Água Relógio de Desgaste Resistente a Crianças Assistir Doméstico Relógio Digital Esportes', 'brand 91', TRUE, 47, 0.0, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('50400912-e573-4177-aeef-368426abf1da', 55.94, 16.61, 41.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9ae6cce6-2ee0-4c3e-a5fa-2c6672828d7f', 'WOONEKY 1 Conjunto De Brinquedos Decoração Estatueta De Pinguim Mini Pinguim Modelo Pinguim Modelos Pequeno Pinguim Modelo Pinguim Brinquedo Pinguim Modelo Ornamento Pinguim Em Miniatura', 'WOONEKY 1 Conjunto De Brinquedos Decoração Estatueta De Pinguim Mini Pinguim Modelo Pinguim Modelos Pequeno Pinguim Modelo Pinguim Brinquedo Pinguim Modelo Ornamento Pinguim Em Miniatura', 'brand 63', TRUE, 32, 0.0, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Colecionáveis e Miniaturas para Hobby', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9ae6cce6-2ee0-4c3e-a5fa-2c6672828d7f', 47.33, 99.79, 39.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d18e5b8e-770e-49b0-b466-ba7d7b0f6914', '2 Conjuntos De Fones De Ouvido De Gato Fone De Ouvido Para Meninas Fones De Ouvido + Fone De Ouvido Com Luz LED Fone De Ouvido De Música Fone De Ouvido Intra-Auricular Fone', '2 Conjuntos De Fones De Ouvido De Gato Fone De Ouvido Para Meninas Fones De Ouvido + Fone De Ouvido Com Luz LED Fone De Ouvido De Música Fone De Ouvido Intra-Auricular Fone', 'brand 44', TRUE, 12, 128.4, '6e2199c1-fb38-4a52-8eb3-2e0cac0d2ac1', 'Áudio', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d18e5b8e-770e-49b0-b466-ba7d7b0f6914', 41.98, 91.91, 83.2);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4ebe5d63-98b7-4660-820b-182a823ac463', 'Parque Siqueira, Bernadete, 05511-733 Moreira / MG', 455, 'casa', 'Gonçalves', '49994-163', 'Pereira de Gomes', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4ebe5d63-98b7-4660-820b-182a823ac463', 190030096, 500524729, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('f6a7ae41-57da-4ce9-9075-e764914a9e37', 'Srta. Jade Novaes', 'ribeiroraul@example.net', 'q3JA(8vX*J', '41 5300-0916', NULL, NOW(), NOW(), 'Srt', '4ebe5d63-98b7-4660-820b-182a823ac463');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b07bf432-d7e8-463f-add2-38d66af44e77', 'Avenida de Sampaio, 8, Nossa Senhora De Fátima, 48952-545 Câmara / MG', 594, 'comercial', 'Freitas do Campo', '80063-565', 'Lima Verde', 'Roraima');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b07bf432-d7e8-463f-add2-38d66af44e77', -842223393, -665428171, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'da Rosa', '9:00-18:00', '+55 (011) 7995 9197', '13052789414', 'b07bf432-d7e8-463f-add2-38d66af44e77');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('5c62e61d-b094-489d-b7c3-560cfbfce6cc', 'f6a7ae41-57da-4ce9-9075-e764914a9e37', '73854902123', NOW(), '66d66fe0-81b2-4504-8501-d5f2307bfdd9');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eea36abf-748e-4d31-9430-6219809c3de7', 'VZ-72 - Sabonete Vitamina C - Vizzela', 'VZ-72 - Sabonete Vitamina C - Vizzela', 'brand 48', TRUE, 75, 51.32, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Beleza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eea36abf-748e-4d31-9430-6219809c3de7', 48.44, 40.02, 70.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('53c422ef-d185-421c-9759-6d74e66fc41c', 'Como Ser Solteira [DVD]', 'Como Ser Solteira [DVD]', 'brand 72', TRUE, 75, 20.0, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Filmes', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('53c422ef-d185-421c-9759-6d74e66fc41c', 82.92, 89.99, 71.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('73f5a9e6-48a2-4b8f-b23b-f48bed6a4d44', 'Apanhador de Cabelo de Dreno de Banheira Filtro de Dreno, Dreno de Banheira de Chuveiro Armadilha/Rolha de Cabelo, Coletor de Cabelo de Dreno de Banheira', 'Apanhador de Cabelo de Dreno de Banheira Filtro de Dreno, Dreno de Banheira de Chuveiro Armadilha/Rolha de Cabelo, Coletor de Cabelo de Dreno de Banheira', 'brand 54', TRUE, 44, 0.0, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('73f5a9e6-48a2-4b8f-b23b-f48bed6a4d44', 33.17, 99.51, 36.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fcf3baed-451a-454b-83db-68427e51ed20', 'O Milionário Misterioso: Romance Contemporâneo', 'O Milionário Misterioso: Romance Contemporâneo', 'brand 54', TRUE, 8, 0.0, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fcf3baed-451a-454b-83db-68427e51ed20', 25.03, 76.89, 45.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('96e1127f-3922-4228-a642-d7b460ab20f6', 'Película de Tela 5D Nano Compatível com Apple Watch Ultra 49mm', 'Película de Tela 5D Nano Compatível com Apple Watch Ultra 49mm', 'brand 43', TRUE, 5, 29.99, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('96e1127f-3922-4228-a642-d7b460ab20f6', 69.33, 21.37, 59.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('adb835d2-5492-4c21-b8c7-df977426fb8d', 'Hialu + Cafeína Botik Creme Concentrado O Boticário 15 g', 'Hialu + Cafeína Botik Creme Concentrado O Boticário 15 g', 'brand 11', TRUE, 86, 119.9, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('adb835d2-5492-4c21-b8c7-df977426fb8d', 51.14, 99.89, 74.29);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0dc8783-25f7-427d-9ae3-3d8db777a55b', 'NCIS: The Fourteenth Season', 'NCIS: The Fourteenth Season', 'brand 50', TRUE, 78, 237.68, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Programas de TV', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0dc8783-25f7-427d-9ae3-3d8db777a55b', 70.5, 24.57, 26.35);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b54e77e5-22d7-4d11-8514-5919b82bf03f', 'Oumefar Módulo de Câmera de Foco Automático, Módulo de Câmera de Foco Automático Sem Unidade Forte Compatibilidade Preto para Instrumentos Industriais', 'Oumefar Módulo de Câmera de Foco Automático, Módulo de Câmera de Foco Automático Sem Unidade Forte Compatibilidade Preto para Instrumentos Industriais', 'brand 65', TRUE, 98, 0.0, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Monitores de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b54e77e5-22d7-4d11-8514-5919b82bf03f', 46.87, 65.14, 22.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d57fce03-e455-4d7b-855e-4b8000f5055d', 'professional fisheye filter lens set camera filter for pocket camera accessories', 'professional fisheye filter lens set camera filter for pocket camera accessories', 'brand 54', TRUE, 80, 158.39, '66d66fe0-81b2-4504-8501-d5f2307bfdd9', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d57fce03-e455-4d7b-855e-4b8000f5055d', 28.18, 56.18, 90.99);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('962e2454-0a01-4a62-b0b2-2c2e20a77ba3', 'Avenida Montenegro, Conjunto Lagoa, 25201828 Oliveira / CE', 721, 'casa', 'Monteiro do Sul', '71098-964', 'Mendonça do Norte', 'São Paulo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('962e2454-0a01-4a62-b0b2-2c2e20a77ba3', 327873666, 241638229, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('b6b64046-0d1b-4759-b3cf-8dd2c8cb3b68', 'Allana Almeida', 'ida-cunha@example.org', '*xL(j%ni1S', '0500 904 0747', NULL, NOW(), NOW(), 'All', '962e2454-0a01-4a62-b0b2-2c2e20a77ba3');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4c1ad65b-232d-403b-bdd3-6d54aee75b97', 'Setor Vasconcelos, 56, Prado, 02423223 Carvalho / PE', 763, 'comercial', 'Gonçalves', '31441-494', 'Silva', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4c1ad65b-232d-403b-bdd3-6d54aee75b97', -39224943, 1686254827, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Barbosa S.A.', '9:00-18:00', '41 2845-9593', '08674139566', '4c1ad65b-232d-403b-bdd3-6d54aee75b97');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('350e0678-1124-40bb-8de6-ae45be5b09e6', 'b6b64046-0d1b-4759-b3cf-8dd2c8cb3b68', '64278109520', NOW(), '2babad1c-7bc6-4a15-9555-67fe2b0da29a');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('085eea47-a88b-4ea9-937e-21cd64dfb58a', 'Calção de banho para meninos Reflection de secagem rápida FPS 50+, Zipline Preto/Aqua, 3T', 'Calção de banho para meninos Reflection de secagem rápida FPS 50+, Zipline Preto/Aqua, 3T', 'brand 84', TRUE, 82, 209.0, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('085eea47-a88b-4ea9-937e-21cd64dfb58a', 87.86, 11.93, 68.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f36cac91-e881-44b0-89ab-a80e07394d13', 'Vaguelly 36 Peças De Arruelas Elétricas Substituíveis Almofadas De Arruelas Profissionais Porcas De Guitarra E Peças De Metal Estrela Elétrica Para Potenciômetro Porca Fornecimento Hex', 'Vaguelly 36 Peças De Arruelas Elétricas Substituíveis Almofadas De Arruelas Profissionais Porcas De Guitarra E Peças De Metal Estrela Elétrica Para Potenciômetro Porca Fornecimento Hex', 'brand 50', TRUE, 63, 0.0, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'PlayStation 4, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f36cac91-e881-44b0-89ab-a80e07394d13', 91.36, 66.86, 39.21);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('efd09bb9-5d8e-4e30-a4b0-7c3362f629ad', 'Módulo de laser de 450 nm 20 W Comprimento focal ajustável Cabeça de gravação a laser Cortador de gravador a laser Impressora 3D Roteador CNC Módulo a laser para artesanato DIY Madeira Tecido Couro Black 20W', 'Módulo de laser de 450 nm 20 W Comprimento focal ajustável Cabeça de gravação a laser Cortador de gravador a laser Impressora 3D Roteador CNC Módulo a laser para artesanato DIY Madeira Tecido Couro Black 20W', 'brand 72', TRUE, 14, 448.93, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('efd09bb9-5d8e-4e30-a4b0-7c3362f629ad', 88.65, 58.69, 89.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7f06ab7c-5dc7-4ccc-aacf-fc85d38c58bf', 'UKCOCO Fone De Ouvido Celular Fone De Ouvido Música Fone De Ouvido Fones De Ouvido Over Ear Fones De Ouvido Com Cancelamento De Ruído Fones De Ouvido Com Cancelamento De Ruído Fone De', 'UKCOCO Fone De Ouvido Celular Fone De Ouvido Música Fone De Ouvido Fones De Ouvido Over Ear Fones De Ouvido Com Cancelamento De Ruído Fones De Ouvido Com Cancelamento De Ruído Fone De', 'brand 86', TRUE, 34, 131.17, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Áudio', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7f06ab7c-5dc7-4ccc-aacf-fc85d38c58bf', 11.85, 14.89, 84.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8620aa9d-447a-4ec4-808d-4586a9aa5544', 'Lizan Gel-Cola Silver Line - Extrema Fixação - 1000G, Branco', 'Lizan Gel-Cola Silver Line - Extrema Fixação - 1000G, Branco', 'brand 91', TRUE, 15, 22.64, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8620aa9d-447a-4ec4-808d-4586a9aa5544', 95.65, 68.14, 37.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1e5f8fa3-52ea-43c5-a9b1-1393f45c80b4', 'The North Face Tênis masculino para caminhada', 'The North Face Tênis masculino para caminhada', 'brand 70', TRUE, 13, 1086.54, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1e5f8fa3-52ea-43c5-a9b1-1393f45c80b4', 44.84, 16.86, 25.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('14eec3bb-b38a-4429-989e-a156484a6fd7', '1 Conjunto De Fantasias De Halloween Para Adultos Laços De Cabelo Tiaras Vestidos De Meninas Decoração De Festa Cocar Orelhas De Gato Tiara Orelhas De Gato E Cauda', '1 Conjunto De Fantasias De Halloween Para Adultos Laços De Cabelo Tiaras Vestidos De Meninas Decoração De Festa Cocar Orelhas De Gato Tiara Orelhas De Gato E Cauda', 'brand 92', TRUE, 88, 56.89, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('14eec3bb-b38a-4429-989e-a156484a6fd7', 68.82, 84.81, 78.66);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d67c0f9a-88d9-4fcc-949a-aeab00088839', 'Conjunto de levantamento de fios de proteína - Conjunto de levantamento de fios de proteína Instalift | 20 pçs njunto Fios de Proteína Fios de Colágeno Absorvíveis para Lifting Facial, Aocate', 'Conjunto de levantamento de fios de proteína - Conjunto de levantamento de fios de proteína Instalift | 20 pçs njunto Fios de Proteína Fios de Colágeno Absorvíveis para Lifting Facial, Aocate', 'brand 12', TRUE, 21, 54.94, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Produtos para Cuidados com o Rosto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d67c0f9a-88d9-4fcc-949a-aeab00088839', 55.42, 44.81, 49.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4132c9c6-0e2c-4c70-9f9c-16b134c74c15', 'Vinho Chileno Le Petit Clos Vv 4,3 | Kit com 6 Garrafas | Oferta', 'Vinho Chileno Le Petit Clos Vv 4,3 | Kit com 6 Garrafas | Oferta', 'brand 88', TRUE, 87, 2199.0, '2babad1c-7bc6-4a15-9555-67fe2b0da29a', 'Bebidas Alcoólicas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4132c9c6-0e2c-4c70-9f9c-16b134c74c15', 68.1, 71.97, 12.27);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('27675c63-37ca-4816-bc86-0d42c11d076b', 'Quadra Lucca Fonseca, 869, Anchieta, 85647-217 Montenegro / AM', 809, 'casa', 'Cavalcanti', '43041-994', 'Campos', 'São Paulo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('27675c63-37ca-4816-bc86-0d42c11d076b', 753240028, 515373698, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2c58958e-d7a8-46b6-9d4f-c871c907e6d0', 'Srta. Hellena Freitas', 'carolina56@example.net', 'a9ss5HzT^k', '+55 (011) 3516-5231', NULL, NOW(), NOW(), 'Srt', '27675c63-37ca-4816-bc86-0d42c11d076b');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1f96dd72-a118-4154-93ba-2701ffb541a8', 'Viela Noah Abreu, 27, Virgínia, 02313840 Santos / RJ', 880, 'comercial', 'Cavalcanti', '51686-670', 'Rodrigues da Prata', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1f96dd72-a118-4154-93ba-2701ffb541a8', -124970830, -1691202022, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Marques - EI', '9:00-18:00', '+55 (071) 9477 4187', '38605971240', '1f96dd72-a118-4154-93ba-2701ffb541a8');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('7dbc66d9-5e47-4b68-bfe7-2bf1d41dd742', '2c58958e-d7a8-46b6-9d4f-c871c907e6d0', '46193720561', NOW(), '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6d1008cb-3476-4e4a-af6b-917b275e0643', 'Iluminador de LED SunGun Yongnuo YN-160 III para Foto e Vídeo', 'Iluminador de LED SunGun Yongnuo YN-160 III para Foto e Vídeo', 'brand 1', TRUE, 67, 310.0, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Produtos para Câmeras e Foto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6d1008cb-3476-4e4a-af6b-917b275e0643', 64.44, 42.86, 16.8);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7a3a903c-d896-4b3e-b871-5ee7f5515734', 'HONMEET 1 Conjunto De Paletas De Maquiagem Kit De Base De Maquiagem De Manicure Bandeja De Maquiagem Palete De Maquiagem Paleta De Esmalte Bandeja De Metal Kit De Maquiagem Bandeja De Aço', 'HONMEET 1 Conjunto De Paletas De Maquiagem Kit De Base De Maquiagem De Manicure Bandeja De Maquiagem Palete De Maquiagem Paleta De Esmalte Bandeja De Metal Kit De Maquiagem Bandeja De Aço', 'brand 56', TRUE, 23, 47.3, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7a3a903c-d896-4b3e-b871-5ee7f5515734', 71.67, 18.86, 80.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4742a6c4-59b9-4ba5-8348-02f538aac695', 'Kit 5 Pulseira Colorida Mi Band 6 - Preta Branca Azul Marinho Cinza Vermelho - (C7COMPANY)', 'Kit 5 Pulseira Colorida Mi Band 6 - Preta Branca Azul Marinho Cinza Vermelho - (C7COMPANY)', 'brand 31', TRUE, 99, 149.9, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Wearables e Tecnologia Vestível', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4742a6c4-59b9-4ba5-8348-02f538aac695', 35.99, 18.09, 87.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c817053d-8e2b-4191-a4fb-e2cedd64a13d', '1 Peça De Óculos De Sol Havaí Presentes Para Mulheres Óculos De Festa Praia Óculos De Sol Para Foto Adereços De Baile De Sol Moda Óculos De Sol Femininos Retrô Óculos De Sol', '1 Peça De Óculos De Sol Havaí Presentes Para Mulheres Óculos De Festa Praia Óculos De Sol Para Foto Adereços De Baile De Sol Moda Óculos De Sol Femininos Retrô Óculos De Sol', 'brand 90', TRUE, 60, 50.82, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c817053d-8e2b-4191-a4fb-e2cedd64a13d', 92.78, 91.42, 92.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eee7a41b-13b7-4882-906a-b9ac45ccaa81', 'SOLUSTRE Controlador Volante PC Titular Corrida Volante Titular Controlador Roda De Jogo Pedais Volante Aderência Volante De Corrida Para Controlador De Jogo Controlador De Jogo', 'SOLUSTRE Controlador Volante PC Titular Corrida Volante Titular Controlador Roda De Jogo Pedais Volante Aderência Volante De Corrida Para Controlador De Jogo Controlador De Jogo', 'brand 75', TRUE, 93, 160.24, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'PlayStation 4, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eee7a41b-13b7-4882-906a-b9ac45ccaa81', 13.73, 80.17, 44.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fc08b26e-854a-4e37-8b0c-0364a02d9397', 'Óculos CONVERSE CV 3009 001 preto fosco', 'Óculos CONVERSE CV 3009 001 preto fosco', 'brand 72', TRUE, 21, 785.0, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fc08b26e-854a-4e37-8b0c-0364a02d9397', 39.8, 57.33, 57.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eac0e2b5-84ff-4e5b-a52c-5d3dafa5b529', 'Outanaya 1 Conjunto De Jogo De Saco De Areia Mini Máquina De Lavar Brinquedos De Mesa Conjunto De Jogo Ao Ar Livre Fora Placas De Cornhole De Madeira Jogo De Cornhole Portátil Jogo', 'Outanaya 1 Conjunto De Jogo De Saco De Areia Mini Máquina De Lavar Brinquedos De Mesa Conjunto De Jogo Ao Ar Livre Fora Placas De Cornhole De Madeira Jogo De Cornhole Portátil Jogo', 'brand 4', TRUE, 85, 73.3, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Jogos e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eac0e2b5-84ff-4e5b-a52c-5d3dafa5b529', 64.94, 48.37, 48.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a7264815-63ef-4256-9a5a-0991138c1acb', '96 pçs pena arrancando dedos, remoção de cabelo, cola, pato, galinha, ganso, plucker', '96 pçs pena arrancando dedos, remoção de cabelo, cola, pato, galinha, ganso, plucker', 'brand 8', TRUE, 85, 0.0, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a7264815-63ef-4256-9a5a-0991138c1acb', 15.19, 80.13, 78.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('04ade803-ba38-4f96-bfb8-89ad3dbfea25', 'STAHAD Cortina Janela Painel De Parede Cortinas De Corda Frisada Painéis De Janela De Armário Cortinas De Macramê Persianas Para Casa Cortina De Janela Decorativa Cortina De Borla', 'STAHAD Cortina Janela Painel De Parede Cortinas De Corda Frisada Painéis De Janela De Armário Cortinas De Macramê Persianas Para Casa Cortina De Janela Decorativa Cortina De Borla', 'brand 91', TRUE, 9, 59.12, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Cortinas e Persianas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('04ade803-ba38-4f96-bfb8-89ad3dbfea25', 97.24, 13.71, 55.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ac0395d1-7657-4297-8bf5-d61d12a4e478', 'TEHAUX 6 Peças Separadores De Fichário De Partição Divisórias Para Fichários Abas Multicoloridas Abas Administrativas Para Fichários Organizador De Fichário Divisórias De Fichário Com', 'TEHAUX 6 Peças Separadores De Fichário De Partição Divisórias Para Fichários Abas Multicoloridas Abas Administrativas Para Fichários Organizador De Fichário Divisórias De Fichário Com', 'brand 96', TRUE, 54, 60.59, '2c01d2d1-2d6c-4522-aeaf-636cb07aa8af', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ac0395d1-7657-4297-8bf5-d61d12a4e478', 38.05, 26.24, 61.95);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('2ca8f06d-5b19-42ea-87f3-a930cf349085', 'Sítio Ravi Moraes, 3, Palmares, 79905225 Silveira / MG', 6, 'casa', 'Teixeira', '51801-360', 'Machado de Costa', 'Roraima');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('2ca8f06d-5b19-42ea-87f3-a930cf349085', -859483581, 1592208739, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('d2bb08aa-cdf0-46b4-9738-a2196ec4cbb7', 'Arthur Gabriel Pinto', 'marquesclarice@example.com', 'G5DM$@q&)h', '(031) 4913 6214', NULL, NOW(), NOW(), 'Art', '2ca8f06d-5b19-42ea-87f3-a930cf349085');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3df9496f-72b3-4556-864c-761d03ca42d9', 'Distrito de Ramos, 8, São Lucas, 03165883 Fernandes / RS', 963, 'comercial', 'Abreu', '79646-522', 'Vargas', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3df9496f-72b3-4556-864c-761d03ca42d9', -878800035, -363910097, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Farias', '9:00-18:00', '11 1366 0128', '81932670521', '3df9496f-72b3-4556-864c-761d03ca42d9');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('191cc4df-7402-48e9-a815-f217948e61db', 'd2bb08aa-cdf0-46b4-9738-a2196ec4cbb7', '68014925351', NOW(), 'c9b24a32-04c8-4395-9a6c-5349ce99f62e');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8e0f5d94-767d-41c9-a5c9-67ac82e386e5', 'Relógios Infantis Para Meninas De 5 A 7 Anos Relógios Infantis Para Meninas De 3 A 5 Anos Brinquedos Esportivos Infantis Brinquedos Esportivos Infantis Brinquedos Infantis Panda', 'Relógios Infantis Para Meninas De 5 A 7 Anos Relógios Infantis Para Meninas De 3 A 5 Anos Brinquedos Esportivos Infantis Brinquedos Esportivos Infantis Brinquedos Infantis Panda', 'brand 55', TRUE, 89, 44.32, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8e0f5d94-767d-41c9-a5c9-67ac82e386e5', 23.96, 10.97, 25.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d1ab31f7-a398-407f-8dae-1c683a862118', 'ciciglow Computador notebook portátil de 13,3", Jumper Tech EZbook X3 Air RAM 8GB ROM 128GB Notebook Computer, 89% de proporção tela/corpo, 16:9 Proporção, extremamente fino e leve (EUA)', 'ciciglow Computador notebook portátil de 13,3", Jumper Tech EZbook X3 Air RAM 8GB ROM 128GB Notebook Computer, 89% de proporção tela/corpo, 16:9 Proporção, extremamente fino e leve (EUA)', 'brand 66', TRUE, 75, 0.0, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Notebooks', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d1ab31f7-a398-407f-8dae-1c683a862118', 79.49, 30.33, 29.33);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dcac14af-b4f4-4ea2-a399-ed98e55a160c', '600 Peças Unhas Estrela De Cinco Pontas Sapatos De Couro Joias Artesanato Roupas Espigão Para Roupas Kit De Arte De Unhas Decoração Estrela Acessórios Rebite Amuletos Bolsa Legal', '600 Peças Unhas Estrela De Cinco Pontas Sapatos De Couro Joias Artesanato Roupas Espigão Para Roupas Kit De Arte De Unhas Decoração Estrela Acessórios Rebite Amuletos Bolsa Legal', 'brand 46', TRUE, 75, 132.63, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dcac14af-b4f4-4ea2-a399-ed98e55a160c', 30.52, 88.67, 84.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c6c965aa-18cb-40c2-a1f2-166c60ab456b', 'Frigideira Francesa 22cm Antiaderente Rochedo Smart Preta', 'Frigideira Francesa 22cm Antiaderente Rochedo Smart Preta', 'brand 76', TRUE, 8, 44.9, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Panelas e Utensílios para Cozinhar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c6c965aa-18cb-40c2-a1f2-166c60ab456b', 23.29, 70.44, 15.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a032dda1-5dcc-44cd-91af-6e64cf629fdf', 'Jethrora 4 PCS 30 * 18 * 18 cm Painéis de espuma acústica Isolamento de som de alta densidade Retardador de fogo Cinta de baixo Espuma para Home Studio Theater', 'Jethrora 4 PCS 30 * 18 * 18 cm Painéis de espuma acústica Isolamento de som de alta densidade Retardador de fogo Cinta de baixo Espuma para Home Studio Theater', 'brand 40', TRUE, 33, 82.99, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Fones de Ouvido', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a032dda1-5dcc-44cd-91af-6e64cf629fdf', 99.89, 33.4, 73.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('382de945-4107-4b2f-83b3-32c45791c1f5', 'Mochila escolar para meninos e meninas, design divertido, bolsa de ombro para meninos e meninas, leve, durável, bolsa de viagem para trilhas, acampamento, mochila de dia', 'Mochila escolar para meninos e meninas, design divertido, bolsa de ombro para meninos e meninas, leve, durável, bolsa de viagem para trilhas, acampamento, mochila de dia', 'brand 50', TRUE, 93, 146.91, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Bolsas e Mochilas Escolares', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('382de945-4107-4b2f-83b3-32c45791c1f5', 93.96, 48.78, 33.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d4717cdd-cee6-4f6e-8ba5-3aed6de257c1', 'Yes4All Acessório de cabo LAT, barra de tríceps com alça de diamante para serrilha, suporta até 399 kg (cromado - cabo D único)', 'Yes4All Acessório de cabo LAT, barra de tríceps com alça de diamante para serrilha, suporta até 399 kg (cromado - cabo D único)', 'brand 53', TRUE, 93, 85.53, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d4717cdd-cee6-4f6e-8ba5-3aed6de257c1', 68.34, 41.09, 97.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2256eb1f-174f-42f9-b58c-ce284b4e1098', 'Moon Lander FTV', 'Moon Lander FTV', 'brand 5', TRUE, 65, 6.73, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Fire TV Stick Apps', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2256eb1f-174f-42f9-b58c-ce284b4e1098', 15.38, 88.34, 51.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8d18d90d-c564-4313-b57e-98be5b6f39fe', 'TEHAUX 10 Peças Lápis Brancos Giz De Cor Giz Branco Branco Alfaiates Lápis Marcador De Alfaiate Giz Branco Alfaiates Clipes De Costura Giz De Alfaiate Giz De Costura Colorido Suprimentos', 'TEHAUX 10 Peças Lápis Brancos Giz De Cor Giz Branco Branco Alfaiates Lápis Marcador De Alfaiate Giz Branco Alfaiates Clipes De Costura Giz De Alfaiate Giz De Costura Colorido Suprimentos', 'brand 15', TRUE, 31, 44.39, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Materiais de Escrita e Correção', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8d18d90d-c564-4313-b57e-98be5b6f39fe', 36.06, 18.04, 40.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4d953b5e-daa4-439a-a30a-d572611e5de2', 'Soltad A Barrabas [Disco de Vinil]', 'Soltad A Barrabas [Disco de Vinil]', 'brand 49', TRUE, 18, 324.71, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Vinil', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4d953b5e-daa4-439a-a30a-d572611e5de2', 58.83, 16.16, 78.32);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('126d6ea9-be13-4f76-a84d-825daa337576', 'Suporte Duplo Para Box Encaixe Fácil, Stolf', 'Suporte Duplo Para Box Encaixe Fácil, Stolf', 'brand 25', TRUE, 7, 69.99, 'c9b24a32-04c8-4395-9a6c-5349ce99f62e', 'Organização e Armazenamento para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('126d6ea9-be13-4f76-a84d-825daa337576', 97.88, 29.03, 81.38);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('0b7bc6b7-6989-4463-9e3d-a65215daa496', 'Sítio Vinícius Pastor, 87, Jaqueline, 10625661 Abreu / DF', 983, 'casa', 'da Paz do Galho', '59735-391', 'Câmara do Sul', 'Amazonas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('0b7bc6b7-6989-4463-9e3d-a65215daa496', -547083576, 382434708, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('e0d078fb-77bd-413b-b626-932144f70385', 'Larissa Silveira', 'qfogaca@example.com', ')77QQKYjP*', '(011) 7964 3359', NULL, NOW(), NOW(), 'Lar', '0b7bc6b7-6989-4463-9e3d-a65215daa496');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3ee73561-02b4-4781-807f-9a27fe49c2d4', 'Quadra Cauê Montenegro, 95, Liberdade, 99999126 Moreira de Machado / PI', 112, 'comercial', 'Moreira do Galho', '20655-676', 'Fernandes das Pedras', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3ee73561-02b4-4781-807f-9a27fe49c2d4', 757959790, -56961527, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Vasconcelos Oliveira S/A', '9:00-18:00', '21 4998 7163', '03961784213', '3ee73561-02b4-4781-807f-9a27fe49c2d4');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('24985f55-e3bd-4ca1-8795-4701bd2b2dba', 'e0d078fb-77bd-413b-b626-932144f70385', '52870496338', NOW(), 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2ccdd3ff-a4fb-4261-8c24-f1d9b3967a4e', 'Suporte de TV VESA 200x200 para TV de 10 polegadas, 20 polegadas, 20, 25, 30, 32 polegadas, 37 polegadas, suporte de parede, suporte de TV de tela plana', 'Suporte de TV VESA 200x200 para TV de 10 polegadas, 20 polegadas, 20, 25, 30, 32 polegadas, 37 polegadas, suporte de parede, suporte de TV de tela plana', 'brand 9', TRUE, 4, 169.75, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Acessórios para Home Theater', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2ccdd3ff-a4fb-4261-8c24-f1d9b3967a4e', 56.26, 32.18, 22.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('012e4f8b-a519-4bc2-9971-babc8909e247', 'GLOGLOW Clipe de cachimbo de peixe, suporte de tubo de CO2, durável para casa para peixes', 'GLOGLOW Clipe de cachimbo de peixe, suporte de tubo de CO2, durável para casa para peixes', 'brand 17', TRUE, 30, 49.06, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('012e4f8b-a519-4bc2-9971-babc8909e247', 45.41, 44.06, 29.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('288e11a3-99ce-4589-8669-2b5e30d0eef0', 'Parliky 2 Pares De Alça De Borla Guidão De Bicicleta Carrinho De Bebê Com Pingente De Plástico', 'Parliky 2 Pares De Alça De Borla Guidão De Bicicleta Carrinho De Bebê Com Pingente De Plástico', 'brand 6', TRUE, 89, 39.31, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Produtos de Passeio e Viagem para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('288e11a3-99ce-4589-8669-2b5e30d0eef0', 90.57, 39.11, 61.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9236b181-eb45-4d38-9d8a-af9ed230e1ca', 'minkissy 3Pcs Rímel Preto Tubo De Rímel Vazio Frasco De Creme Para Cílios Recipiente De Rímel Tubo De Rímel Vazio Recipiente De Rímel Frasco De Recipiente De Cílios Tubo De Recipiente De', 'minkissy 3Pcs Rímel Preto Tubo De Rímel Vazio Frasco De Creme Para Cílios Recipiente De Rímel Tubo De Rímel Vazio Recipiente De Rímel Frasco De Recipiente De Cílios Tubo De Recipiente De', 'brand 46', TRUE, 12, 42.87, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9236b181-eb45-4d38-9d8a-af9ed230e1ca', 31.4, 53.55, 59.78);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8fbb0cee-d9d7-4b5b-9eae-0cdb1c3a8d3c', 'Jeff Blanc', 'Jeff Blanc', 'brand 86', TRUE, 3, 0.0, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Fire TV Stick Apps', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8fbb0cee-d9d7-4b5b-9eae-0cdb1c3a8d3c', 20.45, 93.18, 18.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4090bc6d-fbe8-41ee-8651-7dedee9b29c4', '2 Pcs gotejamento, 400ml Eficiente Filtro Papel Livre Cafeteira, Pote café vidro resistente a altas temperaturas chen', '2 Pcs gotejamento, 400ml Eficiente Filtro Papel Livre Cafeteira, Pote café vidro resistente a altas temperaturas chen', 'brand 54', TRUE, 77, 268.69, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4090bc6d-fbe8-41ee-8651-7dedee9b29c4', 87.61, 64.41, 72.74);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('691a8160-c7b8-4d4f-b193-764240d92129', '10 Peças Capas De Chapéu Para Tacos De Golfe, Capas Para Cabeça De Tacos De Golfe Para Madeiras, Mastro De Ferro De Golfe, Zíper, Capa Protetora Com Design De Zíper Impresso Numerado E Boca Larga', '10 Peças Capas De Chapéu Para Tacos De Golfe, Capas Para Cabeça De Tacos De Golfe Para Madeiras, Mastro De Ferro De Golfe, Zíper, Capa Protetora Com Design De Zíper Impresso Numerado E Boca Larga', 'brand 40', TRUE, 74, 97.19, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('691a8160-c7b8-4d4f-b193-764240d92129', 21.57, 55.13, 97.95);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8247ffc9-6a6d-4c26-ba6e-aa831b0290cd', 'BCOATH 10Pcs Limpador De Plástico Raspador De Língua De Plástico Raspador De Língua Descartável Escova Oral Limpador De Língua De Plástico Ferramenta De Raspagem De Língua Revestimento', 'BCOATH 10Pcs Limpador De Plástico Raspador De Língua De Plástico Raspador De Língua Descartável Escova Oral Limpador De Língua De Plástico Ferramenta De Raspagem De Língua Revestimento', 'brand 15', TRUE, 34, 44.41, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8247ffc9-6a6d-4c26-ba6e-aa831b0290cd', 66.85, 90.96, 90.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('23f3bd80-e421-409d-9326-28650bbd6ef5', 'Cortina de Ar 120 CM Springer 220V', 'Cortina de Ar 120 CM Springer 220V', 'brand 67', TRUE, 96, 919.0, 'e63b2147-5f5b-4cdd-a6bb-2e97b805b3df', 'Ar e Ventilação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('23f3bd80-e421-409d-9326-28650bbd6ef5', 81.91, 37.56, 70.76);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('be2f2d1b-310f-4c4b-b23b-8784a7abd15d', 'Estrada de Borges, 72, Serra Verde, 47705870 Lima de Gomes / AC', 326, 'casa', 'Almeida de Rodrigues', '52405-269', 'da Luz de Correia', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('be2f2d1b-310f-4c4b-b23b-8784a7abd15d', -175975207, -901121657, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('0588d93d-d868-4d6a-8fdd-63fc214261b6', 'João da Mata', 'samuel37@example.net', 'dErtLsn!@4', '+55 11 2047 6232', NULL, NOW(), NOW(), 'Joã', 'be2f2d1b-310f-4c4b-b23b-8784a7abd15d');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('ed51858a-7da9-4c78-97b9-f5eb88f23688', 'Campo de Pinto, 68, Buraco Quente, 80704-316 Novaes / AP', 369, 'comercial', 'da Paz Grande', '47310-373', 'Gonçalves de Brito', 'Ceará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('ed51858a-7da9-4c78-97b9-f5eb88f23688', -148021559, 874871746, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('0e1e8618-a678-44d1-a1b7-7db19f251088', 'Moraes da Cunha S.A.', '9:00-18:00', '+55 84 9042 7535', '70589126377', 'ed51858a-7da9-4c78-97b9-f5eb88f23688');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('5a6996f9-8872-4b54-85d0-c45121193ac6', '0588d93d-d868-4d6a-8fdd-63fc214261b6', '80234615915', NOW(), '0e1e8618-a678-44d1-a1b7-7db19f251088');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9a63ed1c-f325-4ffb-8dc1-d1521ff7600d', 'Jeanoko Bolsa Kiss Fecho de Bolsa Interna Moldura 10 peças 16,5 cm Carteira DIY para Porta-Moedas', 'Jeanoko Bolsa Kiss Fecho de Bolsa Interna Moldura 10 peças 16,5 cm Carteira DIY para Porta-Moedas', 'brand 51', TRUE, 14, 55.29, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Malas e Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9a63ed1c-f325-4ffb-8dc1-d1521ff7600d', 42.2, 95.91, 92.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bf4e2fe4-82ca-4621-808b-09d8042ed416', 'Ração Pegada Essencial para Gatos Adultos e Filhotes Sabor Mix de Carne 10,1kg', 'Ração Pegada Essencial para Gatos Adultos e Filhotes Sabor Mix de Carne 10,1kg', 'brand 23', TRUE, 52, 0.0, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bf4e2fe4-82ca-4621-808b-09d8042ed416', 51.5, 29.29, 59.3);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('177a91de-d089-427e-9e8d-a1cc22a86dbf', 'Abaodam 2 Peças Pingente De Carro De Quatro Folhas De Cristal Pingente De Carro Pendurado Espelho Retrovisor Acessórios De Suspensão Interior Do Carro Ornamento De Suspensão De Carro De', 'Abaodam 2 Peças Pingente De Carro De Quatro Folhas De Cristal Pingente De Carro Pendurado Espelho Retrovisor Acessórios De Suspensão Interior Do Carro Ornamento De Suspensão De Carro De', 'brand 13', TRUE, 8, 124.49, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Peças e Acessórios para Automóveis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('177a91de-d089-427e-9e8d-a1cc22a86dbf', 70.69, 55.03, 52.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2f54823c-bdc0-4a22-b1b0-8564a99ad2d3', 'Esteira Inflável do Jogo, Esteira Infantil do Jogo Dos Desenhos Animados do Teste Padrão Animal Marinho Dobrável para Atrair a Atenção do Seu bebê', 'Esteira Inflável do Jogo, Esteira Infantil do Jogo Dos Desenhos Animados do Teste Padrão Animal Marinho Dobrável para Atrair a Atenção do Seu bebê', 'brand 25', TRUE, 19, 42.97, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2f54823c-bdc0-4a22-b1b0-8564a99ad2d3', 79.0, 75.66, 51.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dc79ea64-fd47-429d-a5e6-80a89bc3472e', 'Meia Sapatilha, Lupo, feminino', 'Meia Sapatilha, Lupo, feminino', 'brand 49', TRUE, 86, 34.9, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Feminino', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dc79ea64-fd47-429d-a5e6-80a89bc3472e', 32.24, 94.02, 30.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bef53639-499c-41d9-b6a9-82319b928998', 'CIYODO Bacia De Água Para Répteis Alimentador De Água Para Répteis Alimentador De Comida Para Répteis Terrário Recipientes De Vidro Ferramenta Aenima Decoração Para Répteis Tigela De', 'CIYODO Bacia De Água Para Répteis Alimentador De Água Para Répteis Alimentador De Comida Para Répteis Terrário Recipientes De Vidro Ferramenta Aenima Decoração Para Répteis Tigela De', 'brand 99', TRUE, 85, 128.84, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Produtos para Répteis e Anfíbios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bef53639-499c-41d9-b6a9-82319b928998', 22.85, 26.28, 68.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3c8e674d-ff3f-4355-9316-664be44ce990', 'Gelatina Vegan 20G Sabor Limão W Vegan', 'Gelatina Vegan 20G Sabor Limão W Vegan', 'brand 4', TRUE, 90, 4.22, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Alimentos e Bebidas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3c8e674d-ff3f-4355-9316-664be44ce990', 79.51, 59.95, 50.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c9774b7a-0306-43dd-9f59-89fee38cbc34', 'Sandália Babuch Drip, Rider, Meninos', 'Sandália Babuch Drip, Rider, Meninos', 'brand 39', TRUE, 7, 64.9, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c9774b7a-0306-43dd-9f59-89fee38cbc34', 11.84, 20.46, 59.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bae77879-f411-4362-8011-7270e10e0dff', 'Escova de cabelo ventilada, evita deslizamento, escova de penteado, alça revestida para uso doméstico', 'Escova de cabelo ventilada, evita deslizamento, escova de penteado, alça revestida para uso doméstico', 'brand 70', TRUE, 97, 63.99, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bae77879-f411-4362-8011-7270e10e0dff', 52.38, 70.79, 93.61);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d5df46db-9315-4a79-8781-5813e0ceaa45', 'COLLBATH 4 Rolos De Papel Higiênico De Fórmula Engraçada Para Adultos Mordaça Presentes Impressão Engraçada Papel Higiênico Rolo De Papel De Banheiro Prático Tecido Doméstico Papel', 'COLLBATH 4 Rolos De Papel Higiênico De Fórmula Engraçada Para Adultos Mordaça Presentes Impressão Engraçada Papel Higiênico Rolo De Papel De Banheiro Prático Tecido Doméstico Papel', 'brand 40', TRUE, 13, 83.48, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Papel Higiênico e Lenços Umedecidos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d5df46db-9315-4a79-8781-5813e0ceaa45', 42.5, 58.68, 37.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1cff2112-bf89-420c-8f3a-5291ee207f48', 'Tênis Bebê Meninos, Preto/Cinza, 25', 'Tênis Bebê Meninos, Preto/Cinza, 25', 'brand 33', TRUE, 51, 129.99, '0e1e8618-a678-44d1-a1b7-7db19f251088', 'Loja de Calçados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1cff2112-bf89-420c-8f3a-5291ee207f48', 81.33, 38.91, 25.82);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('edd96f69-cd5c-4007-9c39-be79cee92cc7', 'Feira Leandro Costela, 95, Santa Lúcia, 85363-003 Fonseca Paulista / MT', 122, 'casa', 'Freitas', '62264-985', 'Abreu', 'Tocantins');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('edd96f69-cd5c-4007-9c39-be79cee92cc7', -304968856, 650094638, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('b0fc266a-e552-4598-9688-ce36c9d04b52', 'Maria Fernanda Silva', 'pereiraalicia@example.com', 'RxDa0Rgb(0', '+55 (011) 6650 5656', NULL, NOW(), NOW(), 'Mar', 'edd96f69-cd5c-4007-9c39-be79cee92cc7');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('658926ec-0e77-41b3-8820-84e9c2068d97', 'Vereda Câmara, 884, Alta Tensão 1ª Seção, 09155-511 Nunes / AL', 214, 'comercial', 'Araújo das Pedras', '89345-814', 'Dias', 'Amazonas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('658926ec-0e77-41b3-8820-84e9c2068d97', 367876968, -1361580730, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Santos Ltda.', '9:00-18:00', '(051) 0533-7936', '45736128900', '658926ec-0e77-41b3-8820-84e9c2068d97');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('d3d25505-1bdb-473d-b259-4f5f77b98832', 'b0fc266a-e552-4598-9688-ce36c9d04b52', '70358142997', NOW(), '48c14a23-569d-485b-bb95-dd4131cdf2b7');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('21849487-8826-4188-b078-696e070d0c32', 'NOLITOY 1Pc Acessórios De Telefone Para Mulheres Pingente De Concha De Telefone De Fácil Montagem Capa De Telefone DIY Acessórios Enfeitados Pingente De Telefone Móvel Corrente Pendurada', 'NOLITOY 1Pc Acessórios De Telefone Para Mulheres Pingente De Concha De Telefone De Fácil Montagem Capa De Telefone DIY Acessórios Enfeitados Pingente De Telefone Móvel Corrente Pendurada', 'brand 75', TRUE, 61, 0.0, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Telefones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('21849487-8826-4188-b078-696e070d0c32', 67.24, 18.23, 65.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7397bb6f-366f-4f46-b36f-dfe09fc7c367', 'BESPORTBLE Conjunto Atlético Para Ciclismo 6 Peças Joelheira Cotoveleira Joelheira Protetor De Pulso Patinação Cotoveleira Joelheira Infantil E Cotoveleira Equipamento De Proteção', 'BESPORTBLE Conjunto Atlético Para Ciclismo 6 Peças Joelheira Cotoveleira Joelheira Protetor De Pulso Patinação Cotoveleira Joelheira Infantil E Cotoveleira Equipamento De Proteção', 'brand 91', TRUE, 81, 44.8, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Skates, Patins, Patinetes e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7397bb6f-366f-4f46-b36f-dfe09fc7c367', 86.17, 93.92, 93.3);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9f18a05e-86ad-4bf2-aa23-8325b41113ba', 'SABLUTE Teclado sem fio com Bluetooth e modo de 2,4 GHz, luz de fundo, suporte para telefone – teclado multidispositivo recarregável com iluminação silenciosa para MacBook, PC, laptop, Chromebook', 'SABLUTE Teclado sem fio com Bluetooth e modo de 2,4 GHz, luz de fundo, suporte para telefone – teclado multidispositivo recarregável com iluminação silenciosa para MacBook, PC, laptop, Chromebook', 'brand 70', TRUE, 69, 289.99, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9f18a05e-86ad-4bf2-aa23-8325b41113ba', 35.38, 90.54, 63.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('992f8f94-7805-45b9-ba07-3d3fcfbfe9c2', 'Câmara de Ar Aro 700c Pirelli PR-700', 'Câmara de Ar Aro 700c Pirelli PR-700', 'brand 53', TRUE, 62, 34.06, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Equipamento de Ciclismo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('992f8f94-7805-45b9-ba07-3d3fcfbfe9c2', 85.21, 23.15, 21.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3d199a11-15e4-46c0-a84e-911136775ac0', 'Emoshayoga RC Winch Wheel, 3 X 1.2 X 1.1in RC Servo Stand Small Size Brass Aluminum Alloy Gold RC Servo Mount for TRX4 1/10 RC Crawler', 'Emoshayoga RC Winch Wheel, 3 X 1.2 X 1.1in RC Servo Stand Small Size Brass Aluminum Alloy Gold RC Servo Mount for TRX4 1/10 RC Crawler', 'brand 19', TRUE, 55, 120.99, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3d199a11-15e4-46c0-a84e-911136775ac0', 80.75, 83.67, 77.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8587c512-5b9b-4516-9ad1-059d26672e54', 'Trava de Capacete de Motocicleta Com 2 Chaves, Portátil e Durável, Fácil de Instalar, Liga de Alumínio CNC Antifurto, Substituição para Bonneville 2017-2022', 'Trava de Capacete de Motocicleta Com 2 Chaves, Portátil e Durável, Fácil de Instalar, Liga de Alumínio CNC Antifurto, Substituição para Bonneville 2017-2022', 'brand 70', TRUE, 39, 84.04, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Equipamento de Proteção para Pilotar Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8587c512-5b9b-4516-9ad1-059d26672e54', 17.83, 77.43, 29.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4105932f-4c6e-4b71-a2c1-8ecef89b9035', 'Hosioe Aquecedor de espaço portátil 1700 w aquecedor a gás multifuncional aquecedor de cerâmica ajustável ferro aquecedor de forno para barraca de acampamento ao ar livre piquenique preto', 'Hosioe Aquecedor de espaço portátil 1700 w aquecedor a gás multifuncional aquecedor de cerâmica ajustável ferro aquecedor de forno para barraca de acampamento ao ar livre piquenique preto', 'brand 37', TRUE, 40, 0.0, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4105932f-4c6e-4b71-a2c1-8ecef89b9035', 93.23, 80.57, 35.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('649564ba-b225-4f98-b049-56173047e8ee', 'Pinças para Cortar O Do, Longas Pinças para Cortar Do Suporte de Sobrancelha de Cabeça de de aço Inoxidável', 'Pinças para Cortar O Do, Longas Pinças para Cortar Do Suporte de Sobrancelha de Cabeça de de aço Inoxidável', 'brand 32', TRUE, 61, 0.0, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('649564ba-b225-4f98-b049-56173047e8ee', 98.57, 69.04, 93.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8c3c6338-7551-4a74-ab14-3e8fc55a4fdf', 'Cologne Spray (Unisex) 4 oz', 'Cologne Spray (Unisex) 4 oz', 'brand 94', TRUE, 21, 601.0, '48c14a23-569d-485b-bb95-dd4131cdf2b7', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8c3c6338-7551-4a74-ab14-3e8fc55a4fdf', 65.76, 96.4, 63.97);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('9f88d599-c1f3-407f-a3f7-5f8740696c0a', 'Vereda Kaique Peixoto, 43, Vila Nova Gameleira 2ª Seção, 17252605 Santos / RN', 680, 'casa', 'Vargas', '51676-142', 'Rodrigues', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('9f88d599-c1f3-407f-a3f7-5f8740696c0a', -329516974, 1505417260, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('246c1dff-460d-40b3-ba9e-290061a40dc1', 'Kevin Nascimento', 'liz79@example.net', '3y2lB_ra)U', '+55 (021) 1909-8629', NULL, NOW(), NOW(), 'Kev', '9f88d599-c1f3-407f-a3f7-5f8740696c0a');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f147d8e3-b672-4b9f-ab0b-386858e9abe2', 'Via Dante Lopes, 1, Camargos, 84344942 Cirino da Prata / PI', 542, 'comercial', 'Garcia', '76670-107', 'Pimenta do Oeste', 'Mato Grosso');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f147d8e3-b672-4b9f-ab0b-386858e9abe2', 796323827, -1588063234, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('35e63e98-70e4-4fb2-9826-aaad4f789430', 'Alves Castro e Filhos', '9:00-18:00', '+55 51 2645 6801', '54720619380', 'f147d8e3-b672-4b9f-ab0b-386858e9abe2');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('d8d96123-82c9-4cf5-92bd-b4bb8a39b0c7', '246c1dff-460d-40b3-ba9e-290061a40dc1', '91847605249', NOW(), '35e63e98-70e4-4fb2-9826-aaad4f789430');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('96e09634-1dad-4c84-bf1d-2d4194389a95', 'Tampa Da Bateria Porta Pilhas - Controle Xbox 360', 'Tampa Da Bateria Porta Pilhas - Controle Xbox 360', 'brand 33', TRUE, 29, 12.9, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'Games', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('96e09634-1dad-4c84-bf1d-2d4194389a95', 10.61, 95.42, 26.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9ce0c1da-52c1-4def-a3ff-19e049d382d2', 'A Saga dos Vingadores 01', 'A Saga dos Vingadores 01', 'brand 75', TRUE, 62, 39.9, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'HQs, Mangás e Graphic Novels', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9ce0c1da-52c1-4def-a3ff-19e049d382d2', 49.41, 64.3, 17.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e4291924-dd07-4f9a-aa3b-d85a7fa11fb1', 'MOOKEENONE 1x GPS Tracker Holder Anti-Lost Fixator Fixing Seat Bracket for Drone for DJI Phantom 4', 'MOOKEENONE 1x GPS Tracker Holder Anti-Lost Fixator Fixing Seat Bracket for Drone for DJI Phantom 4', 'brand 2', TRUE, 12, 55.47, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'Drones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e4291924-dd07-4f9a-aa3b-d85a7fa11fb1', 86.31, 29.72, 52.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5f47d8cb-b285-41fe-b583-d909cf0d8f18', 'UKCOCO Caixa De Areia De Gato Lateral Caixas De Areia Autolimpantes Caixa De Areia De Canto Fechada Caixas De Areia De Lado Alto Para Gatos Hamster Penico Caixa De Suprimentos Para', 'UKCOCO Caixa De Areia De Gato Lateral Caixas De Areia Autolimpantes Caixa De Areia De Canto Fechada Caixas De Areia De Lado Alto Para Gatos Hamster Penico Caixa De Suprimentos Para', 'brand 24', TRUE, 53, 135.08, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'Acessórios para Gatos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5f47d8cb-b285-41fe-b583-d909cf0d8f18', 59.35, 79.72, 64.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fa907b2f-4790-47d8-8d3a-4261601d9891', 'Conjuntos de mini batons foscos, Mini Pílula Em Forma De Batom Conjunto De Batom - Conjunto de mini batons 24 horas Stay On, mini batom de veludo nude de longa duração, batom em formato de Bairong', 'Conjuntos de mini batons foscos, Mini Pílula Em Forma De Batom Conjunto De Batom - Conjunto de mini batons 24 horas Stay On, mini batom de veludo nude de longa duração, batom em formato de Bairong', 'brand 68', TRUE, 53, 0.0, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fa907b2f-4790-47d8-8d3a-4261601d9891', 82.52, 31.25, 28.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('453024ff-ed87-4d10-90fa-bb4e94f5647a', 'GFRGFH Peixes de Aquário Água do Mar Partículas Grandes Osso de Cachorro Degradável NP Máquina de Feijão Biológico Material de Filtro Fácil de Usar', 'GFRGFH Peixes de Aquário Água do Mar Partículas Grandes Osso de Cachorro Degradável NP Máquina de Feijão Biológico Material de Filtro Fácil de Usar', 'brand 41', TRUE, 44, 123.11, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('453024ff-ed87-4d10-90fa-bb4e94f5647a', 74.78, 62.51, 27.72);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('70bd56e8-69ae-47cf-b0ee-8aa53606ba50', 'Ventilador de Teto Kovalski Dourado 3 Pás Rádica Imbuia 220V com Controle', 'Ventilador de Teto Kovalski Dourado 3 Pás Rádica Imbuia 220V com Controle', 'brand 60', TRUE, 95, 0.0, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('70bd56e8-69ae-47cf-b0ee-8aa53606ba50', 62.07, 26.83, 47.61);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('95e9bc6e-1f49-4554-95bb-19516343a700', 'Mouse Gamer Dragon War Light 2400dpi 7 Cores 70g Ultraleve Branco - MGDWL2 ELG', 'Mouse Gamer Dragon War Light 2400dpi 7 Cores 70g Ultraleve Branco - MGDWL2 ELG', 'brand 26', TRUE, 80, 49.9, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('95e9bc6e-1f49-4554-95bb-19516343a700', 65.41, 11.09, 84.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a88e2000-c946-4a17-8bf6-678b5427b47d', 'Difusor de CO2 para Aquário, Válvula de Retenção de Tubo, Ventosa, Contador de Bolhas para Tanque de Peixes Profissional Silencioso Premium Com Ventosa para Tanque Plantado de', 'Difusor de CO2 para Aquário, Válvula de Retenção de Tubo, Ventosa, Contador de Bolhas para Tanque de Peixes Profissional Silencioso Premium Com Ventosa para Tanque Plantado de', 'brand 84', TRUE, 94, 56.17, '35e63e98-70e4-4fb2-9826-aaad4f789430', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a88e2000-c946-4a17-8bf6-678b5427b47d', 12.49, 54.11, 92.92);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('97734b21-d0f8-42f8-9c7b-67710cbe0778', 'Parque Caldeira, 968, Pompéia, 42466211 Silveira / RN', 550, 'casa', 'Teixeira da Praia', '90581-494', 'Duarte da Mata', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('97734b21-d0f8-42f8-9c7b-67710cbe0778', 19255093, 669397379, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('51b1d502-b79a-4d47-a011-e5baaea88c1c', 'Diego Camargo', 'wsantos@example.com', 'NFp5ThxlG^', '+55 (011) 7208-0041', NULL, NOW(), NOW(), 'Die', '97734b21-d0f8-42f8-9c7b-67710cbe0778');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('be21fb1f-5b95-467a-a3bf-5c2156cbe40e', 'Jardim de Nunes, 65, São Sebastião, 98237-291 Cardoso / PI', 185, 'comercial', 'Farias', '39191-179', 'Porto', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('be21fb1f-5b95-467a-a3bf-5c2156cbe40e', 826097169, 857098073, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Pinto', '9:00-18:00', '0800-223-4849', '72614035980', 'be21fb1f-5b95-467a-a3bf-5c2156cbe40e');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('fd44aac3-fbad-436a-8c11-12fa9048cdbb', '51b1d502-b79a-4d47-a011-e5baaea88c1c', '28417693564', NOW(), '0232773c-3cdf-496a-ad6c-763bfc9ad7b8');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0fa2607f-6775-4f97-9bb8-52527f69ec99', 'Hidrolight SUPORTE P/PANTURRILHA OR71_5 PP, Preto', 'Hidrolight SUPORTE P/PANTURRILHA OR71_5 PP, Preto', 'brand 77', TRUE, 87, 39.9, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0fa2607f-6775-4f97-9bb8-52527f69ec99', 45.18, 77.4, 76.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('aa114491-6b33-4867-bb0d-cf020f12cf4f', 'SECFOU 1 Peça Cadeira De Massagem Para Ônibus De Carro Modificado Carregador USB Carregador De Celular Para Carro 31A Carregadores Portáteis Para Telefones Celulares Carregador De Carro', 'SECFOU 1 Peça Cadeira De Massagem Para Ônibus De Carro Modificado Carregador USB Carregador De Celular Para Carro 31A Carregadores Portáteis Para Telefones Celulares Carregador De Carro', 'brand 62', TRUE, 40, 0.0, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Carregadores de Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('aa114491-6b33-4867-bb0d-cf020f12cf4f', 88.54, 12.82, 29.37);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('adc80538-4d21-465e-8a0f-589082cbf158', 'Kit 5 Colchonetes Academia, Ginástica, Exercícios Abdominal - Preto', 'Kit 5 Colchonetes Academia, Ginástica, Exercícios Abdominal - Preto', 'brand 91', TRUE, 58, 167.7, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('adc80538-4d21-465e-8a0f-589082cbf158', 78.36, 61.62, 91.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2a4f87be-6694-499c-bb97-511690a13014', 'POPETPOP Réptil Terrário Decoração Réptil Videiras Videiras Da Selva Reptichip Terrário Réptil Réptil Répteis Rattan Tira Lagarto Animal Objeto De Escalada Trepadeiras Da Selva', 'POPETPOP Réptil Terrário Decoração Réptil Videiras Videiras Da Selva Reptichip Terrário Réptil Réptil Répteis Rattan Tira Lagarto Animal Objeto De Escalada Trepadeiras Da Selva', 'brand 88', TRUE, 19, 42.76, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Produtos para Répteis e Anfíbios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2a4f87be-6694-499c-bb97-511690a13014', 11.95, 67.25, 10.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('14382ba8-4873-4f19-b1f6-437145fcd005', 'Monitor de estacionamento, câmera frontal durável de grande alcance de visualização, para carro automotivo', 'Monitor de estacionamento, câmera frontal durável de grande alcance de visualização, para carro automotivo', 'brand 2', TRUE, 24, 48.68, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Eletrônicos e Tecnologia Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('14382ba8-4873-4f19-b1f6-437145fcd005', 40.74, 15.68, 78.77);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('72441a2e-7496-4b11-87a7-26b9d35dc76d', 'Travesseiro Inflável de Acampamento, Prensa Leve Ergonômica de Travesseiro Inflável para Inflar Tecido de Flocagem Compacto para Avião', 'Travesseiro Inflável de Acampamento, Prensa Leve Ergonômica de Travesseiro Inflável para Inflar Tecido de Flocagem Compacto para Avião', 'brand 71', TRUE, 88, 47.09, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Eletrônicos e Aparelhos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('72441a2e-7496-4b11-87a7-26b9d35dc76d', 66.24, 88.35, 97.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('638c6d52-a5c3-4ebe-b109-4a8287a794b7', 'Embreagem + Acoplamento Roçadeira 9 Estrias Tubo 28mm 43cc', 'Embreagem + Acoplamento Roçadeira 9 Estrias Tubo 28mm 43cc', 'brand 8', TRUE, 3, 139.89, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Jardim e Piscina', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('638c6d52-a5c3-4ebe-b109-4a8287a794b7', 93.63, 79.6, 44.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b6944243-10a9-48d5-b582-0562ccd0028e', 'Aditivo para Gasolinas,de Injetores Multiuso 120ml Poderoso | de injetor eficiente, de tanque universal para remoção de deposição de carbono, vida útil prolongada do motor Hochei', 'Aditivo para Gasolinas,de Injetores Multiuso 120ml Poderoso | de injetor eficiente, de tanque universal para remoção de deposição de carbono, vida útil prolongada do motor Hochei', 'brand 70', TRUE, 29, 57.95, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Óleos e Fluidos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b6944243-10a9-48d5-b582-0562ccd0028e', 98.99, 32.72, 83.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7a57193f-3fb4-43b6-8489-9d0bd0c2ca94', 'Mochila feminina com estampa de coruja, arco-íris, mochila para laptop, para negócios, mochila escolar para estudantes com alça de ombro ajustável, mochila casual para viagem e acampamento, para mulheres e homens, Multicor, Large', 'Mochila feminina com estampa de coruja, arco-íris, mochila para laptop, para negócios, mochila escolar para estudantes com alça de ombro ajustável, mochila casual para viagem e acampamento, para mulheres e homens, Multicor, Large', 'brand 37', TRUE, 38, 209.75, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7a57193f-3fb4-43b6-8489-9d0bd0c2ca94', 70.27, 61.47, 88.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('017a37ac-5b91-4d93-8b2d-20c52e5818d7', 'CRAFTHROU 22Pcs Blocos De Construção De Madeira Blocos De Construção De Madeira Para Crianças Artes E Ofícios Cubos De Artesanato Em Madeira Tijolos Para Crianças Blocos De Madeira Cubos', 'CRAFTHROU 22Pcs Blocos De Construção De Madeira Blocos De Construção De Madeira Para Crianças Artes E Ofícios Cubos De Artesanato Em Madeira Tijolos Para Crianças Blocos De Madeira Cubos', 'brand 93', TRUE, 34, 135.17, '0232773c-3cdf-496a-ad6c-763bfc9ad7b8', 'Brinquedos de Construir e de Montar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('017a37ac-5b91-4d93-8b2d-20c52e5818d7', 46.27, 16.15, 30.8);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8b4a89ae-7bd5-49a7-8b17-3ab4e56ec1f2', 'Travessa Sales, 86, Grota, 55551-341 Pimenta / MT', 178, 'casa', 'Fogaça', '51931-550', 'Sousa da Serra', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8b4a89ae-7bd5-49a7-8b17-3ab4e56ec1f2', 457741942, 135287812, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('644fb740-3fe2-4e5a-832c-26f2418958f4', 'Nicolas Lima', 'luiz-miguel50@example.org', 'Q6WQfp5*_r', '+55 (021) 2590 6161', NULL, NOW(), NOW(), 'Nic', '8b4a89ae-7bd5-49a7-8b17-3ab4e56ec1f2');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('073aff98-561f-43f0-a7de-d93b51b853de', 'Fazenda da Paz, 39, Vila Suzana Segunda Seção, 31731-664 Fogaça das Flores / PB', 715, 'comercial', 'Andrade de Caldeira', '98710-381', 'Farias da Prata', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('073aff98-561f-43f0-a7de-d93b51b853de', -826153107, 923490391, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('487387b9-d5e8-45df-ab70-e535c2113474', 'Silveira e Filhos', '9:00-18:00', '(081) 0832 0985', '32846971528', '073aff98-561f-43f0-a7de-d93b51b853de');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('d7f2ce43-0b8e-487d-8de5-bf5de2c22bec', '644fb740-3fe2-4e5a-832c-26f2418958f4', '03524697810', NOW(), '487387b9-d5e8-45df-ab70-e535c2113474');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7c5b20a6-c49f-4026-98e8-a44b5c8f05b8', 'Yinuoday Cobertor mensal para bebês com moldura, cobertor extra macio, acessório para fotografia, cobertor de bebê para adereços de fotos de bebê', 'Yinuoday Cobertor mensal para bebês com moldura, cobertor extra macio, acessório para fotografia, cobertor de bebê para adereços de fotos de bebê', 'brand 32', TRUE, 56, 77.49, '487387b9-d5e8-45df-ab70-e535c2113474', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7c5b20a6-c49f-4026-98e8-a44b5c8f05b8', 16.57, 92.76, 37.95);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9f6fbe5b-9610-4576-a981-2935805bfca9', 'Óculos de lentes vermelhas armação de gato feminina 100% elimina o cansaço dos olhos óculos lentes laranjas-AM66(c5 com lente laranja, C5 com lente laranja, M', 'Óculos de lentes vermelhas armação de gato feminina 100% elimina o cansaço dos olhos óculos lentes laranjas-AM66(c5 com lente laranja, C5 com lente laranja, M', 'brand 66', TRUE, 28, 166.83, '487387b9-d5e8-45df-ab70-e535c2113474', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9f6fbe5b-9610-4576-a981-2935805bfca9', 14.79, 59.51, 22.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a072e6be-28d9-4d2a-99d1-d7ddc0dbeaa2', 'Capa Case Capinha para iPhone 14 Pro Max - Couro Dual Preta - Gshield', 'Capa Case Capinha para iPhone 14 Pro Max - Couro Dual Preta - Gshield', 'brand 88', TRUE, 57, 110.81, '487387b9-d5e8-45df-ab70-e535c2113474', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a072e6be-28d9-4d2a-99d1-d7ddc0dbeaa2', 70.58, 82.1, 26.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('89d1de00-b693-4659-98ba-7807cdb951c4', 'KONTONTY 1 Conjunto De Suporte De Guarda-Chuva De Pátio Substituição De Acessórios De Guarda-Sol Suporte De Guarda-Sol Parte De Espigão Âncora De Solo Coberturas De Pólo De Guarda-Chuva De', 'KONTONTY 1 Conjunto De Suporte De Guarda-Chuva De Pátio Substituição De Acessórios De Guarda-Sol Suporte De Guarda-Sol Parte De Espigão Âncora De Solo Coberturas De Pólo De Guarda-Chuva De', 'brand 17', TRUE, 69, 54.26, '487387b9-d5e8-45df-ab70-e535c2113474', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('89d1de00-b693-4659-98ba-7807cdb951c4', 20.87, 41.44, 77.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8a577ab8-7594-435d-8bbe-0f94b67ef3e3', 'Macaquinho sem mangas para bebês e meninas, estilo africano, roupas de verão para bebês recém-nascidos, macaquinho + faixa de cabeça', 'Macaquinho sem mangas para bebês e meninas, estilo africano, roupas de verão para bebês recém-nascidos, macaquinho + faixa de cabeça', 'brand 55', TRUE, 98, 84.06, '487387b9-d5e8-45df-ab70-e535c2113474', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8a577ab8-7594-435d-8bbe-0f94b67ef3e3', 19.3, 51.95, 64.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4891a8fd-d992-4407-a7a5-c3cd41789f0a', 'KONG - Brinquedo de mastigar Rhino Phatz para cães médios, 1', 'KONG - Brinquedo de mastigar Rhino Phatz para cães médios, 1', 'brand 76', TRUE, 7, 80.0, '487387b9-d5e8-45df-ab70-e535c2113474', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4891a8fd-d992-4407-a7a5-c3cd41789f0a', 25.3, 68.57, 23.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('90f1e990-590b-4f69-9cbe-a86938ebbf7d', '2 Peças Pulseira De Relógio Feminino Relógios Femininos Relógio De Pulso Feminino Pulseiras Bond Para Casais Relógios De Pulso Femininos Pulseira Para Mamãe Relógio Casual Menina', '2 Peças Pulseira De Relógio Feminino Relógios Femininos Relógio De Pulso Feminino Pulseiras Bond Para Casais Relógios De Pulso Femininos Pulseira Para Mamãe Relógio Casual Menina', 'brand 34', TRUE, 79, 56.52, '487387b9-d5e8-45df-ab70-e535c2113474', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('90f1e990-590b-4f69-9cbe-a86938ebbf7d', 86.11, 54.08, 12.23);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('323bf1fc-8009-4a31-bb2c-ba9eec8fd59b', 'Óculos de Sol Carrera Flaglab 12 000-99 Dourado', 'Óculos de Sol Carrera Flaglab 12 000-99 Dourado', 'brand 37', TRUE, 13, 472.8, '487387b9-d5e8-45df-ab70-e535c2113474', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('323bf1fc-8009-4a31-bb2c-ba9eec8fd59b', 91.52, 81.78, 15.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5657e224-e660-48bd-917d-7258282acc9a', 'Protetor de Descoloração Blond Plex Veggue Profissional 300ml', 'Protetor de Descoloração Blond Plex Veggue Profissional 300ml', 'brand 73', TRUE, 80, 55.9, '487387b9-d5e8-45df-ab70-e535c2113474', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5657e224-e660-48bd-917d-7258282acc9a', 71.45, 35.08, 32.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0f9e0499-78ea-42f9-ae0d-72077336c215', 'Ciieeo 3 Pçs Notas Vintage Em Relevo Pautado Caderno De Viagem Caderno De Viagem Caderno De Escritório Caderno De Couro Retro Caderno De Capa Dura Diário Diário Bloco De Notas De Capa', 'Ciieeo 3 Pçs Notas Vintage Em Relevo Pautado Caderno De Viagem Caderno De Viagem Caderno De Escritório Caderno De Couro Retro Caderno De Capa Dura Diário Diário Bloco De Notas De Capa', 'brand 26', TRUE, 36, 235.18, '487387b9-d5e8-45df-ab70-e535c2113474', 'Cadernos, Blocos e Diários', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0f9e0499-78ea-42f9-ae0d-72077336c215', 97.44, 38.0, 68.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('010db509-6914-4e87-8281-9e7eb1c987e9', 'Creme esfoliante Murumuru, Almanati', 'Creme esfoliante Murumuru, Almanati', 'brand 51', TRUE, 65, 49.9, '487387b9-d5e8-45df-ab70-e535c2113474', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('010db509-6914-4e87-8281-9e7eb1c987e9', 22.97, 80.21, 21.21);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('013b5671-84cf-4bcf-80a4-7f4cc8894473', 'Trevo Rocha, 56, Etelvina Carneiro, 90809406 da Paz / MT', 591, 'casa', 'Rodrigues do Campo', '20490-847', 'Camargo', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('013b5671-84cf-4bcf-80a4-7f4cc8894473', -866735642, 919093515, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('9b268b35-0fac-453d-bf6a-138a945610cf', 'Aurora Araújo', 'isabellyguerra@example.org', '+))*5$Oe7(', '+55 (051) 2718 9776', NULL, NOW(), NOW(), 'Aur', '013b5671-84cf-4bcf-80a4-7f4cc8894473');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('cbab6b94-f6f1-43d7-912d-9ac523205f42', 'Estação Borges, 22, Piraja, 46243995 Peixoto / PA', 523, 'comercial', 'Fernandes', '39915-608', 'Cunha', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('cbab6b94-f6f1-43d7-912d-9ac523205f42', -368239443, 1081768031, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Pinto', '9:00-18:00', '+55 71 5302-8049', '30695148206', 'cbab6b94-f6f1-43d7-912d-9ac523205f42');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('6a33b2a5-9234-472d-be99-2c0a335f6355', '9b268b35-0fac-453d-bf6a-138a945610cf', '70184965276', NOW(), '56df18b4-8f7a-4943-8bb1-e9becba01ff1');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8253118d-66f2-42b2-93a8-353abde77914', 'Pinça Bonsai de Aço Inoxidável Pinças Longas para Soltar o e Aplainar a Grama, Ferramenta de Jardim Ideal para Os Amantes de Bonsai [EUA] (Direto)', 'Pinça Bonsai de Aço Inoxidável Pinças Longas para Soltar o e Aplainar a Grama, Ferramenta de Jardim Ideal para Os Amantes de Bonsai [EUA] (Direto)', 'brand 35', TRUE, 35, 46.61, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8253118d-66f2-42b2-93a8-353abde77914', 49.22, 50.55, 14.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('937db9df-747d-415e-a61d-7eb7abcf9587', 'zjchao Alimentadores lentos para cães, alimentador lento, tigela para animais de estimação, evita asfixia, à prova de deslizamento, promove a digestão, quebra-cabeça, tigela de alimentos para cães pequenos e médios e gatos (verde)', 'zjchao Alimentadores lentos para cães, alimentador lento, tigela para animais de estimação, evita asfixia, à prova de deslizamento, promove a digestão, quebra-cabeça, tigela de alimentos para cães pequenos e médios e gatos (verde)', 'brand 75', TRUE, 84, 38.77, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('937db9df-747d-415e-a61d-7eb7abcf9587', 40.96, 90.08, 46.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d2af84e9-43ce-4347-bf59-e01ee65f9c39', 'U LIFE Capa protetora de mala listrada com conchas de mar oceano para viagens, Multi, Only Luggage Cover Size S', 'U LIFE Capa protetora de mala listrada com conchas de mar oceano para viagens, Multi, Only Luggage Cover Size S', 'brand 75', TRUE, 61, 115.99, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Malas de Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d2af84e9-43ce-4347-bf59-e01ee65f9c39', 67.67, 20.09, 33.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('04c8359e-998f-453d-bb07-aa2ed5fe3d4c', 'Bolsa feminina - sacolas de compras de supermercado reutilizáveis com alças banana abacate frutas grande bolsa de praia bolsas de trabalho bolsa de ombro bolsas de mão resistentes para mantimentos, praia, trabalho, Multi', 'Bolsa feminina - sacolas de compras de supermercado reutilizáveis com alças banana abacate frutas grande bolsa de praia bolsas de trabalho bolsa de ombro bolsas de mão resistentes para mantimentos, praia, trabalho, Multi', 'brand 100', TRUE, 8, 100.9, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Bolsas de Mão e Ombro Femininas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('04c8359e-998f-453d-bb07-aa2ed5fe3d4c', 70.8, 25.3, 73.77);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cb93fcbf-bffb-4591-b77e-28ab8c8cc618', 'Interruptor de toque capacitivo, sensor de toque digital, toque capacitivo de baixo consumo de energia para a indústria', 'Interruptor de toque capacitivo, sensor de toque digital, toque capacitivo de baixo consumo de energia para a indústria', 'brand 76', TRUE, 10, 48.19, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Nintendo Switch, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cb93fcbf-bffb-4591-b77e-28ab8c8cc618', 32.5, 29.71, 84.9);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('792580e7-bec2-4c38-878b-a9dca4d34198', 'How to Draw Dinosaurs: Easy Step-by-Step Drawing Tutorial for Kids, Teens, and Beginners How to Learn to Draw Dinosaurs (Aspiring artist's guide Book 11) (English Edition)', 'How to Draw Dinosaurs: Easy Step-by-Step Drawing Tutorial for Kids, Teens, and Beginners How to Learn to Draw Dinosaurs (Aspiring artist's guide Book 11) (English Edition)', 'brand 39', TRUE, 51, 0.0, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('792580e7-bec2-4c38-878b-a9dca4d34198', 27.11, 85.25, 23.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d913d429-468d-43c8-9a12-3d3b026fe872', '1 Peça Relógio De Bolso Relógio De Bolso Para Caminhadas Relógio De Bolso Oco Relógio De Peito Giratório Steampunk Relógio De Bolso Steampunk Relógio De Bolso Relógio De Peito', '1 Peça Relógio De Bolso Relógio De Bolso Para Caminhadas Relógio De Bolso Oco Relógio De Peito Giratório Steampunk Relógio De Bolso Steampunk Relógio De Bolso Relógio De Peito', 'brand 48', TRUE, 22, 50.28, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d913d429-468d-43c8-9a12-3d3b026fe872', 57.44, 78.58, 26.04);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0fbf7886-681d-4dca-929d-ec27ae520586', 'Mais Mu - Refil Proteína - 900g - Chocolate', 'Mais Mu - Refil Proteína - 900g - Chocolate', 'brand 2', TRUE, 51, 169.98, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Suplementos e Pré-Treino', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0fbf7886-681d-4dca-929d-ec27ae520586', 17.05, 40.99, 51.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d1d21f4c-6fd9-427e-81d9-7a4642857275', 'O testamento e outros contos bruxos', 'O testamento e outros contos bruxos', 'brand 14', TRUE, 86, 10.99, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Novidades da Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d1d21f4c-6fd9-427e-81d9-7a4642857275', 48.54, 67.23, 36.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d420aadb-df29-4229-a650-2c21e5b14876', 'Secador de pelos para animais de estimação, secador portátil doméstico com força para cães para cuidados domésticos, secador de viagem', 'Secador de pelos para animais de estimação, secador portátil doméstico com força para cães para cuidados domésticos, secador de viagem', 'brand 70', TRUE, 96, 7719.0, '56df18b4-8f7a-4943-8bb1-e9becba01ff1', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d420aadb-df29-4229-a650-2c21e5b14876', 11.42, 14.6, 33.41);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3917c467-12f2-43b1-bdae-f227ed70f60e', 'Lagoa de Duarte, 48, Conjunto Lagoa, 03342-352 Pastor / PR', 16, 'casa', 'da Mota de Cavalcanti', '71547-450', 'Alves', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3917c467-12f2-43b1-bdae-f227ed70f60e', -339452474, -996391841, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('7b8a01a0-afb6-449f-a6c2-ce3d848cbd05', 'Ana Clara Moreira', 'spastor@example.com', 'h&sI)5ozPP', '+55 (011) 0510-6913', NULL, NOW(), NOW(), 'Ana', '3917c467-12f2-43b1-bdae-f227ed70f60e');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('edc2867c-5f9f-46cd-946c-d06ac4eca8d2', 'Lagoa de Peixoto, 28, União, 98319004 Barbosa do Galho / PR', 82, 'comercial', 'Leão', '63562-305', 'da Rocha do Oeste', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('edc2867c-5f9f-46cd-946c-d06ac4eca8d2', 427233026, -1337198063, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Mendonça Garcia Ltda.', '9:00-18:00', '61 8686-7587', '79061382521', 'edc2867c-5f9f-46cd-946c-d06ac4eca8d2');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('e8e09a0e-2dcf-49c0-a66b-f46b4c051cdc', '7b8a01a0-afb6-449f-a6c2-ce3d848cbd05', '15023986721', NOW(), '45f5ef6a-c579-46c4-91dd-db5e30cc7496');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8160e9db-a0df-417f-a7bc-b5bd6b5ea586', 'Case capa capinha Armor Para Apple Watch 40MM - Transparente - Gshield', 'Case capa capinha Armor Para Apple Watch 40MM - Transparente - Gshield', 'brand 69', TRUE, 53, 69.97, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8160e9db-a0df-417f-a7bc-b5bd6b5ea586', 40.36, 71.36, 71.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9b2bfdbb-25b8-4658-a69b-07d2ca7ba3c6', 'Refis Bom Ar Aromatizador Spray Flor de Algodão, Azul', 'Refis Bom Ar Aromatizador Spray Flor de Algodão, Azul', 'brand 41', TRUE, 95, 64.98, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Produtos de Decoração para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9b2bfdbb-25b8-4658-a69b-07d2ca7ba3c6', 88.32, 15.35, 34.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('775cb4e5-24cb-487c-8108-ffe21a49eb06', 'Capa Peniana Extensora Em Silicone Com Preenchimento Na Ponta, Estimulador Clitoriano, Textura E Saliências Estimuladoras Ca10 capa peniana capa peniana grossaCapas para Pênis', 'Capa Peniana Extensora Em Silicone Com Preenchimento Na Ponta, Estimulador Clitoriano, Textura E Saliências Estimuladoras Ca10 capa peniana capa peniana grossaCapas para Pênis', 'brand 29', TRUE, 100, 79.99, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('775cb4e5-24cb-487c-8108-ffe21a49eb06', 84.96, 92.48, 34.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bb52a80d-e6f0-44f5-a44d-9afaa627aab2', 'Generic Mini panela de sopa de aço inoxidável, panela pequena com bicos duplos, aquecedor de leite para aquecer molhos de fabricação de leite, M', 'Generic Mini panela de sopa de aço inoxidável, panela pequena com bicos duplos, aquecedor de leite para aquecer molhos de fabricação de leite, M', 'brand 53', TRUE, 57, 0.0, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Panelas e Utensílios para Cozinhar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bb52a80d-e6f0-44f5-a44d-9afaa627aab2', 94.17, 86.32, 83.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0deed3fd-68f9-4754-8b97-e3d212e51bc6', 'Conjunto de Garfos de Mesa Tramontina Ipanema com Lâminas de Aço Inox e Cabos de Polipropileno Verde Esmeralda 6 Peças', 'Conjunto de Garfos de Mesa Tramontina Ipanema com Lâminas de Aço Inox e Cabos de Polipropileno Verde Esmeralda 6 Peças', 'brand 28', TRUE, 22, 15.65, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Talheres', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0deed3fd-68f9-4754-8b97-e3d212e51bc6', 65.46, 73.81, 23.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('963f346b-e357-4141-839d-0f1d8e0ab460', 'Barbie Princesa Vestido Mágico, Multicolorido, GKH26, Mattel', 'Barbie Princesa Vestido Mágico, Multicolorido, GKH26, Mattel', 'brand 31', TRUE, 9, 219.9, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Bonecas e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('963f346b-e357-4141-839d-0f1d8e0ab460', 65.44, 90.03, 29.04);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1301732d-e9de-4cf2-af15-ef61a448ea86', 'Smartphone Android desbloqueado M4 Pro, telefone inteligente de tela de 6,1 polegadas 1G + telefone 8G máximo 256GB cartão de expansão com câmera frontal HD 2MP traseira 5MP(US)…', 'Smartphone Android desbloqueado M4 Pro, telefone inteligente de tela de 6,1 polegadas 1G + telefone 8G máximo 256GB cartão de expansão com câmera frontal HD 2MP traseira 5MP(US)…', 'brand 35', TRUE, 7, 2690.0, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1301732d-e9de-4cf2-af15-ef61a448ea86', 92.58, 21.23, 84.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e5860ccd-fe2a-4254-8588-49e29d202e6f', 'Kangnice Controlador de motor HUB de bicicleta elétrica Ebikes Escooters Drives sem escova controlador de velocidade 24V36V48V500W Regulador de voltagem controlador de velocidade para bicicletas elétricas E-Bike Scooter', 'Kangnice Controlador de motor HUB de bicicleta elétrica Ebikes Escooters Drives sem escova controlador de velocidade 24V36V48V500W Regulador de voltagem controlador de velocidade para bicicletas elétricas E-Bike Scooter', 'brand 6', TRUE, 33, 115.92, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Equipamento de Ciclismo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e5860ccd-fe2a-4254-8588-49e29d202e6f', 89.25, 52.91, 21.39);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('01d304a1-37e6-4a98-b062-432f0a0437e1', 'pelúcia chaveiros - Pingente Pelúcia Panda,Chaveiro bicho pelúcia do urso panda, pingente bicho pelúcia para carteira telefone Buniq', 'pelúcia chaveiros - Pingente Pelúcia Panda,Chaveiro bicho pelúcia do urso panda, pingente bicho pelúcia para carteira telefone Buniq', 'brand 9', TRUE, 74, 17.99, '45f5ef6a-c579-46c4-91dd-db5e30cc7496', 'Pelúcias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('01d304a1-37e6-4a98-b062-432f0a0437e1', 13.46, 13.07, 12.01);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3fd440e4-736d-45ee-b417-92769f589fb3', 'Área Miguel Pastor, 81, Xangri-Lá, 25389-876 da Cruz de Vasconcelos / RJ', 908, 'casa', 'Duarte da Prata', '17624-141', 'Guerra Alegre', 'Rio Grande do Norte');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3fd440e4-736d-45ee-b417-92769f589fb3', -770151300, 245073066, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('5d12c7ed-9963-462e-9606-2318b3bb0fa1', 'Bento Nascimento', 'beatrizpinto@example.com', '*8UVg5ebd$', '(071) 0901-9469', NULL, NOW(), NOW(), 'Ben', '3fd440e4-736d-45ee-b417-92769f589fb3');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('e62f88b1-789f-4e93-8970-0d621c5d4fab', 'Colônia de Teixeira, 10, Vila Madre Gertrudes 1ª Seção, 00779582 Gonçalves / AM', 931, 'comercial', 'Araújo', '49405-876', 'da Costa do Amparo', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('e62f88b1-789f-4e93-8970-0d621c5d4fab', 542048472, -1751591064, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('3aa9035f-8074-4672-bfae-5446f82e5900', 'Sampaio S/A', '9:00-18:00', '+55 51 5490 9090', '42135876909', 'e62f88b1-789f-4e93-8970-0d621c5d4fab');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('c496ea66-9486-4fe1-a35d-bd0e498f1c4c', '5d12c7ed-9963-462e-9606-2318b3bb0fa1', '31278509488', NOW(), '3aa9035f-8074-4672-bfae-5446f82e5900');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4bf269d5-2e50-48cc-b25e-ddb702698e27', 'SHENGX Boneca renascida renascida realista de 20 polegadas, boneca bebe reborn silicone realista - bonecas recém-nascidas sorridentes e fofas,bebê reborn menina melhor,olhos azuis', 'SHENGX Boneca renascida renascida realista de 20 polegadas, boneca bebe reborn silicone realista - bonecas recém-nascidas sorridentes e fofas,bebê reborn menina melhor,olhos azuis', 'brand 58', TRUE, 58, 364.82, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Bonecas e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4bf269d5-2e50-48cc-b25e-ddb702698e27', 22.69, 23.7, 66.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f03d4a1c-8969-4aba-8eb8-9e4eb4ac2475', 'Beavorty 1 Caixa De Acessórios De Arte Para Unhas Correntes De Arte Para Unhas 3D Tiras De Unhas De Metal Correntes De Joias Para Unhas Decoração De Arte Para Unhas Corrente De Manicure', 'Beavorty 1 Caixa De Acessórios De Arte Para Unhas Correntes De Arte Para Unhas 3D Tiras De Unhas De Metal Correntes De Joias Para Unhas Decoração De Arte Para Unhas Corrente De Manicure', 'brand 38', TRUE, 32, 44.04, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f03d4a1c-8969-4aba-8eb8-9e4eb4ac2475', 23.02, 55.84, 60.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c6639af4-fd35-47e2-939d-57782f655a8a', 'Carregador de bateria de scooter para mobilidade, bom desempenho de dissipação de calor, carregador de cadeira de rodas prático, Scooter de mobilidade para sistema de 24V (regulamentos dos EUA)', 'Carregador de bateria de scooter para mobilidade, bom desempenho de dissipação de calor, carregador de cadeira de rodas prático, Scooter de mobilidade para sistema de 24V (regulamentos dos EUA)', 'brand 21', TRUE, 56, 0.0, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Carregadores de Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c6639af4-fd35-47e2-939d-57782f655a8a', 74.25, 80.96, 99.21);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0cb4ecd5-6646-4932-ba63-cb454ba7bb19', 'Obuyke 4 Pçs Suporte De Fone De Ouvido Suporte De Fone De Ouvido Suporte De Fone De Ouvido Para Jogos Suporte De Fone De Ouvido Para Mesa De Mesa Suporte De Exibição Colar Cabide Suporte', 'Obuyke 4 Pçs Suporte De Fone De Ouvido Suporte De Fone De Ouvido Suporte De Fone De Ouvido Para Jogos Suporte De Fone De Ouvido Para Mesa De Mesa Suporte De Exibição Colar Cabide Suporte', 'brand 55', TRUE, 1, 0.0, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Áudio', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0cb4ecd5-6646-4932-ba63-cb454ba7bb19', 15.17, 73.39, 99.61);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9fc380e2-f63b-4a48-aa43-bc158611cf28', 'Colar de ouro branco 14 k com pingente de raquete de tênis duplo esportivo joias finas para mulheres presentes para ela', 'Colar de ouro branco 14 k com pingente de raquete de tênis duplo esportivo joias finas para mulheres presentes para ela', 'brand 90', TRUE, 76, 1008.79, '3aa9035f-8074-4672-bfae-5446f82e5900', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9fc380e2-f63b-4a48-aa43-bc158611cf28', 43.96, 27.87, 96.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('347e717d-70af-410d-92b8-c0bf7ad2dac2', 'Porta-retratos Digital, Função de Calendário Com Música de Fundo HD 1080P Porta-retratos Digital 100-240V 7 Polegadas para Festas (plugue americano)', 'Porta-retratos Digital, Função de Calendário Com Música de Fundo HD 1080P Porta-retratos Digital 100-240V 7 Polegadas para Festas (plugue americano)', 'brand 99', TRUE, 83, 272.49, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Produtos de Decoração para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('347e717d-70af-410d-92b8-c0bf7ad2dac2', 14.32, 66.34, 39.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b110a346-796a-4d8b-830e-3a696c01f28b', 'Calculadora Pessoal Procalc PC986-GN 8 Digitos Verde', 'Calculadora Pessoal Procalc PC986-GN 8 Digitos Verde', 'brand 80', TRUE, 11, 31.9, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Calculadoras', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b110a346-796a-4d8b-830e-3a696c01f28b', 84.65, 82.64, 38.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('32e15c97-5a4f-4ac8-82f8-9da97b945820', 'Janey II Pele de carneiro transparente', 'Janey II Pele de carneiro transparente', 'brand 68', TRUE, 59, 875.79, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Compras Internacionais em Moda', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('32e15c97-5a4f-4ac8-82f8-9da97b945820', 33.01, 68.98, 78.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e18dd11d-7880-48f3-a031-55f30f1edfe4', 'Cadeiras de jardim cadeiras reclináveis cadeiras reclináveis nova cadeira dobrável ao ar livre ultraleve cadeira de pesca portátil cadeira de esboço cadeira de acampamento portátil cadeira cadeira de acampamento (cor verde), vermelho belo cenário', 'Cadeiras de jardim cadeiras reclináveis cadeiras reclináveis nova cadeira dobrável ao ar livre ultraleve cadeira de pesca portátil cadeira de esboço cadeira de acampamento portátil cadeira cadeira de acampamento (cor verde), vermelho belo cenário', 'brand 33', TRUE, 92, 2347.78, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e18dd11d-7880-48f3-a031-55f30f1edfe4', 58.68, 44.16, 45.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8e607329-7466-4deb-aaac-01ddbf9c19f1', 'Tamanco de Dedo Feminino Modare Casual Ultraconforto Com Bolhas Napa Floater Sense Flex 7142 106', 'Tamanco de Dedo Feminino Modare Casual Ultraconforto Com Bolhas Napa Floater Sense Flex 7142 106', 'brand 15', TRUE, 87, 64.99, '3aa9035f-8074-4672-bfae-5446f82e5900', 'Loja de Calçados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8e607329-7466-4deb-aaac-01ddbf9c19f1', 35.41, 58.48, 96.31);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('6e26f848-0626-4019-8a00-c3789848581f', 'Conjunto Guerra, 6, Vila Suzana Segunda Seção, 60456-662 Moraes / CE', 879, 'casa', 'da Rocha da Serra', '40469-292', 'Santos do Galho', 'Pernambuco');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('6e26f848-0626-4019-8a00-c3789848581f', 752793423, 1476542265, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('8d25c0de-1b7d-4d0c-bb74-25f12c9f30a2', 'Théo da Costa', 'gabrielda-cruz@example.net', '#*Bt(cae7y', '(041) 0112 3723', NULL, NOW(), NOW(), 'Thé', '6e26f848-0626-4019-8a00-c3789848581f');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8c8cd27b-d555-438d-82a7-4347028a6506', 'Colônia de Ferreira, 72, Vila São Rafael, 37317-020 Fonseca / RR', 752, 'comercial', 'Garcia de Minas', '23790-616', 'Pereira', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8c8cd27b-d555-438d-82a7-4347028a6506', 19507370, -698932255, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'da Rocha S.A.', '9:00-18:00', '+55 51 5132 7138', '60457923199', '8c8cd27b-d555-438d-82a7-4347028a6506');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('34204457-8747-41c9-ba45-ebdbd3e0ebae', '8d25c0de-1b7d-4d0c-bb74-25f12c9f30a2', '97640183510', NOW(), '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('92971f9e-98b7-4ae5-999c-e0d50240fe7a', 'Sagitário Constelação Sagitário Símbolo do Zodíaco Inverno Aquecedor de Orelhas de Lã para Uso Externo', 'Sagitário Constelação Sagitário Símbolo do Zodíaco Inverno Aquecedor de Orelhas de Lã para Uso Externo', 'brand 82', TRUE, 100, 152.17, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('92971f9e-98b7-4ae5-999c-e0d50240fe7a', 62.88, 70.56, 35.66);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d8c4598e-140c-49ef-8516-91ed09cd74c8', 'Jogo de Lençol Floral Cinza e Azul 100% Algodão 200 Fios Fronha Bordada (lençol de elástico + sobre lençol + fronha(s)) (Casal)', 'Jogo de Lençol Floral Cinza e Azul 100% Algodão 200 Fios Fronha Bordada (lençol de elástico + sobre lençol + fronha(s)) (Casal)', 'brand 68', TRUE, 6, 299.9, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Cama, Mesa e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d8c4598e-140c-49ef-8516-91ed09cd74c8', 16.56, 43.96, 55.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('79a0535b-dfa2-4d01-b7a6-dd2b4a334ee3', 'Churrasqueira Portátil para Acampamento, Grelha dobrável em aço inoxidável, Piquenique para acampamento ao ar livre, ferramentas para churrasco com pernas, fogueira para acampamento Lafande', 'Churrasqueira Portátil para Acampamento, Grelha dobrável em aço inoxidável, Piquenique para acampamento ao ar livre, ferramentas para churrasco com pernas, fogueira para acampamento Lafande', 'brand 37', TRUE, 65, 364.39, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('79a0535b-dfa2-4d01-b7a6-dd2b4a334ee3', 97.92, 51.0, 96.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a2527d81-2d4c-4439-a0bd-1907fc3c5ceb', 'Batedeira Planetária Power Plus Turbo Preto 127V Britânia', 'Batedeira Planetária Power Plus Turbo Preto 127V Britânia', 'brand 49', TRUE, 89, 690.64, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a2527d81-2d4c-4439-a0bd-1907fc3c5ceb', 77.06, 90.59, 78.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9e5d664e-6a9b-4a4c-b0ac-fb02815f3811', 'Demeras Substituição de vedação de eixo mecânico, carboneto resistente a vedações de bomba, pequeno para piscina', 'Demeras Substituição de vedação de eixo mecânico, carboneto resistente a vedações de bomba, pequeno para piscina', 'brand 26', TRUE, 78, 67.79, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Piscinas, Ofurôs e Materiais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9e5d664e-6a9b-4a4c-b0ac-fb02815f3811', 65.65, 47.18, 12.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0f83cd2f-ea88-4b58-9b7f-42e1c7840a8f', 'Kit de Aromatizantes Little Trees Vanilla Pride 6 Unidades', 'Kit de Aromatizantes Little Trees Vanilla Pride 6 Unidades', 'brand 83', TRUE, 57, 59.9, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Automotivo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0f83cd2f-ea88-4b58-9b7f-42e1c7840a8f', 16.29, 66.92, 34.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('df63b6b4-e2f6-45e8-b1d8-d447f2415d7c', '6x Vitamin Gummies Cabelos, Pele E Unhas- Global- 60 Gomas', '6x Vitamin Gummies Cabelos, Pele E Unhas- Global- 60 Gomas', 'brand 6', TRUE, 86, 311.75, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Suplementos e Pré-Treino', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('df63b6b4-e2f6-45e8-b1d8-d447f2415d7c', 35.69, 32.02, 32.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('985c1027-e549-4a79-a567-99a3f220371f', 'Pulverizador agrícola, pulverizador de água de lavagem de carros Pulverizador de água de varinha de alta pressão para produção agrícola', 'Pulverizador agrícola, pulverizador de água de lavagem de carros Pulverizador de água de varinha de alta pressão para produção agrícola', 'brand 72', TRUE, 19, 0.0, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Equipamentos de Rega para Grama e Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('985c1027-e549-4a79-a567-99a3f220371f', 27.27, 11.81, 86.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0aa8cefa-aa7d-475c-9183-dd9da9bc9704', 'Capa para guiador bicicleta infantil - haste dinossauro desenho animado para bicicleta infantil - Acessórios bicicleta equilíbrio para crianças, bicicletas Kagrote', 'Capa para guiador bicicleta infantil - haste dinossauro desenho animado para bicicleta infantil - Acessórios bicicleta equilíbrio para crianças, bicicletas Kagrote', 'brand 46', TRUE, 82, 51.79, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Equipamento de Ciclismo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0aa8cefa-aa7d-475c-9183-dd9da9bc9704', 29.32, 85.15, 79.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5b5c554c-8d93-468c-8c71-50d951e430b1', 'Limpador de Microfibra para Persianas Verde 22CM', 'Limpador de Microfibra para Persianas Verde 22CM', 'brand 100', TRUE, 34, 25.9, '5f9ac8b6-d737-4d56-a0c5-4f8fc47b6669', 'Produtos de Limpeza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5b5c554c-8d93-468c-8c71-50d951e430b1', 24.58, 14.66, 55.84);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('60b1ef26-1225-4fa9-b2ad-1fa8b5ad180a', 'Condomínio Maysa Fonseca, 60, São Pedro, 02726-819 Silva Alegre / AL', 390, 'casa', 'Costela de Almeida', '76290-650', 'Leão', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('60b1ef26-1225-4fa9-b2ad-1fa8b5ad180a', 881268859, 1130210116, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('42814d26-b71e-44cd-8e0b-d614c3b8d9fc', 'Anthony Souza', 'enrico42@example.com', '_Na6$kSz$f', '(031) 0313 2713', NULL, NOW(), NOW(), 'Ant', '60b1ef26-1225-4fa9-b2ad-1fa8b5ad180a');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('ac6b173d-a0c3-4f9e-b6f9-d330af681e9a', 'Recanto de Souza, 9, Vila Do Pombal, 45071717 Novais / SC', 729, 'comercial', 'Cavalcanti Alegre', '92863-977', 'Fonseca', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('ac6b173d-a0c3-4f9e-b6f9-d330af681e9a', -656890629, -662000718, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('e5b1df40-d367-4906-adea-c218284f0974', 'Aragão Rezende - EI', '9:00-18:00', '+55 61 8636-1555', '84607925101', 'ac6b173d-a0c3-4f9e-b6f9-d330af681e9a');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('d3cb6d81-a4b7-4dd1-a3ce-5f4a8875dd22', '42814d26-b71e-44cd-8e0b-d614c3b8d9fc', '03769852400', NOW(), 'e5b1df40-d367-4906-adea-c218284f0974');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9d3d7469-7f01-44b3-badd-8e24274c2445', 'Carrinho Infantil 2 em 1 Passeio e Pedal Azul Poliquadri Com Capota Poliplac', 'Carrinho Infantil 2 em 1 Passeio e Pedal Azul Poliquadri Com Capota Poliplac', 'brand 97', TRUE, 26, 875.9, 'e5b1df40-d367-4906-adea-c218284f0974', 'Esportes e Brincadeiras ao Ar Livre', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9d3d7469-7f01-44b3-badd-8e24274c2445', 36.65, 72.23, 94.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a467b3b0-e686-4da9-b382-1d6d7ad9bf62', 'Funko Pop Harry Potter Quidditch Harry NC Games', 'Funko Pop Harry Potter Quidditch Harry NC Games', 'brand 64', TRUE, 33, 99.9, 'e5b1df40-d367-4906-adea-c218284f0974', 'Colecionáveis e Miniaturas para Hobby', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a467b3b0-e686-4da9-b382-1d6d7ad9bf62', 84.08, 60.57, 11.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('81047886-3458-4ff9-8b73-b0650cb4cb46', 'OFFSCH 5 peças clipe de carvão para churrasqueiras ao ar livre parrillas para asar carne acessórios ao ar livre pinças de carvão ferramenta de pegador de carvão pinças de churrasco pinças de cromo braçadeira de tesoura manuseada alicate de tronco elevador', 'OFFSCH 5 peças clipe de carvão para churrasqueiras ao ar livre parrillas para asar carne acessórios ao ar livre pinças de carvão ferramenta de pegador de carvão pinças de churrasco pinças de cromo braçadeira de tesoura manuseada alicate de tronco elevador', 'brand 65', TRUE, 52, 111.27, 'e5b1df40-d367-4906-adea-c218284f0974', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('81047886-3458-4ff9-8b73-b0650cb4cb46', 51.76, 41.18, 78.72);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('190006f5-8fb0-4634-8429-59d0310b4323', 'Garneck 12 Peças Clipe De Metal Para Persianas Venezianas Persianas De Substituição Fixadores De Reparação De Persianas Verticais Etiquetas De Metal Cortinas Brancas Ripas De', 'Garneck 12 Peças Clipe De Metal Para Persianas Venezianas Persianas De Substituição Fixadores De Reparação De Persianas Verticais Etiquetas De Metal Cortinas Brancas Ripas De', 'brand 91', TRUE, 68, 55.88, 'e5b1df40-d367-4906-adea-c218284f0974', 'Cortinas e Persianas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('190006f5-8fb0-4634-8429-59d0310b4323', 94.74, 85.16, 20.74);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e30873aa-6e9f-46e8-b8f9-c2275e2ed245', 'balikha Estabilizador de peso de disco, estabilizador de metal, acessório de desempenho de alumínio, grampo de peso preto para gravação HiFi para amortecimento de vibração LP', 'balikha Estabilizador de peso de disco, estabilizador de metal, acessório de desempenho de alumínio, grampo de peso preto para gravação HiFi para amortecimento de vibração LP', 'brand 9', TRUE, 58, 97.59, 'e5b1df40-d367-4906-adea-c218284f0974', 'Toca-discos para DJ', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e30873aa-6e9f-46e8-b8f9-c2275e2ed245', 31.56, 22.48, 37.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e372ce93-9ef5-4c33-b095-6e500ffb240a', 'Baralho de cartas Diamond Q Pattern Winter Ear Warmer Cable Knit Furry Fleece Earmuff Outdoor', 'Baralho de cartas Diamond Q Pattern Winter Ear Warmer Cable Knit Furry Fleece Earmuff Outdoor', 'brand 73', TRUE, 21, 152.17, 'e5b1df40-d367-4906-adea-c218284f0974', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e372ce93-9ef5-4c33-b095-6e500ffb240a', 25.5, 47.63, 79.61);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0c5b3dab-36c6-4a04-9340-f74452f193e6', 'Máscara Capilar de Tratamento Dove Ritual de Crescimento 500gr', 'Máscara Capilar de Tratamento Dove Ritual de Crescimento 500gr', 'brand 78', TRUE, 39, 24.99, 'e5b1df40-d367-4906-adea-c218284f0974', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0c5b3dab-36c6-4a04-9340-f74452f193e6', 62.63, 92.53, 23.88);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4f7acc51-b7aa-4fb4-8d60-8a212f9e049d', 'CRAFTSMAN Minialicate diagonal, CMHT82298 CFT - 11,5 cm, vermelho', 'CRAFTSMAN Minialicate diagonal, CMHT82298 CFT - 11,5 cm, vermelho', 'brand 70', TRUE, 8, 56.9, 'e5b1df40-d367-4906-adea-c218284f0974', 'Ferramentas Manuais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4f7acc51-b7aa-4fb4-8d60-8a212f9e049d', 82.37, 20.11, 99.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a24ef65f-af5c-4abe-a404-07cb8807a4d7', 'ＫＬＫＣＭＳ Divisor de fatiador de, separador de frutas, de cogumelos, banana, acessórios de cozinha para frutas, VERDE', 'ＫＬＫＣＭＳ Divisor de fatiador de, separador de frutas, de cogumelos, banana, acessórios de cozinha para frutas, VERDE', 'brand 39', TRUE, 100, 38.99, 'e5b1df40-d367-4906-adea-c218284f0974', 'Ferramentas e Equipamentos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a24ef65f-af5c-4abe-a404-07cb8807a4d7', 72.04, 29.63, 50.41);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('e891e90f-bdb9-408f-ad55-0d0f5768d4f4', 'Residencial Leonardo Moura, 87, Alípio De Melo, 07541-153 Pastor / CE', 390, 'casa', 'Sales', '97761-915', 'Martins do Sul', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('e891e90f-bdb9-408f-ad55-0d0f5768d4f4', 62448514, -1616711310, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('22d3ced6-ef82-4403-93da-5ee9a4e8aacd', 'Gael Rezende', 'ester49@example.com', '%i(q8NNx1O', '+55 (051) 5254-0806', NULL, NOW(), NOW(), 'Gae', 'e891e90f-bdb9-408f-ad55-0d0f5768d4f4');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8e2a1009-6cdc-41d9-9916-8f2c59a8bfa1', 'Ladeira de Rodrigues, 56, Confisco, 86490055 Ramos de Costa / PR', 166, 'comercial', 'Barbosa', '64424-527', 'Freitas', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8e2a1009-6cdc-41d9-9916-8f2c59a8bfa1', -439052783, 1534507878, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('b7caf158-c92c-4436-927c-08e9ada58c66', 'Mendes Câmara - EI', '9:00-18:00', '+55 (061) 5784-3300', '19352678419', '8e2a1009-6cdc-41d9-9916-8f2c59a8bfa1');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('9eeac328-20ad-4e6f-93c1-1d859997c081', '22d3ced6-ef82-4403-93da-5ee9a4e8aacd', '04781956211', NOW(), 'b7caf158-c92c-4436-927c-08e9ada58c66');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bb48a281-4df7-45c0-8b16-86cc249ef675', 'Relógio X-Games Xteel Dourado XMGS1032-P2KX Masculino', 'Relógio X-Games Xteel Dourado XMGS1032-P2KX Masculino', 'brand 80', TRUE, 46, 239.0, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bb48a281-4df7-45c0-8b16-86cc249ef675', 68.28, 59.85, 54.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('76670437-6562-4ff9-b1ac-4498ba4258b5', 'A expulsão do outro: Sociedade, percepção e comunicação hoje', 'A expulsão do outro: Sociedade, percepção e comunicação hoje', 'brand 83', TRUE, 12, 19.94, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('76670437-6562-4ff9-b1ac-4498ba4258b5', 90.72, 16.11, 62.66);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7020c70d-d979-4d5e-af24-9eb9c348c1ca', 'Totority 9 Peças De Ladrilhos De Espuma Para Crianças Ladrilhos De Espuma Para Crianças Almofada De Chão Tapete De Jogo Interligado Tapete De Quebra-Cabeça Interligado Azulejos De', 'Totority 9 Peças De Ladrilhos De Espuma Para Crianças Ladrilhos De Espuma Para Crianças Almofada De Chão Tapete De Jogo Interligado Tapete De Quebra-Cabeça Interligado Azulejos De', 'brand 83', TRUE, 15, 0.0, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7020c70d-d979-4d5e-af24-9eb9c348c1ca', 93.71, 73.19, 99.83);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('907ba490-884b-4a97-aade-2cb2e90d7d4b', 'Almofada Apoio FOM Banco de Carro', 'Almofada Apoio FOM Banco de Carro', 'brand 43', TRUE, 86, 148.0, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Produtos de Decoração para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('907ba490-884b-4a97-aade-2cb2e90d7d4b', 43.01, 12.03, 20.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e207894d-d308-403b-8d8d-10b4f960bdec', 'Aexit Conjunto de 2 conjuntos de cabo de aço inoxidável de 150 cm com gancho ajustável único para pendurar quadros', 'Aexit Conjunto de 2 conjuntos de cabo de aço inoxidável de 150 cm com gancho ajustável único para pendurar quadros', 'brand 18', TRUE, 53, 79.72, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e207894d-d308-403b-8d8d-10b4f960bdec', 61.85, 16.68, 25.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('858baafe-56cb-437d-9d99-f0dc8ef8bc2d', 'Cabeça de escova de limpeza de secador de cabelo, escova de varrer com pescoço forte e poroso de nylon macio para salão de cabeleireiro', 'Cabeça de escova de limpeza de secador de cabelo, escova de varrer com pescoço forte e poroso de nylon macio para salão de cabeleireiro', 'brand 50', TRUE, 25, 36.88, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('858baafe-56cb-437d-9d99-f0dc8ef8bc2d', 61.41, 79.87, 31.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a1052edc-ad12-429f-9eb8-58d3093a648c', 'Godox Flash V350O para câmera Olympus Panasonic 1/8000s GN36 HSS Flash com bateria recarregável de 2000mAh 500 vezes Flash de potência total 0,1s-1,7s Tempo de reciclagem para câmera Olympus Panasonic', 'Godox Flash V350O para câmera Olympus Panasonic 1/8000s GN36 HSS Flash com bateria recarregável de 2000mAh 500 vezes Flash de potência total 0,1s-1,7s Tempo de reciclagem para câmera Olympus Panasonic', 'brand 72', TRUE, 19, 939.0, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Produtos para Câmeras e Foto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a1052edc-ad12-429f-9eb8-58d3093a648c', 16.61, 32.23, 64.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6e2d36bf-7db5-4745-b94c-897abae853ce', 'Rede de Rede Respirável para Répteis, Rede Retangular de Malha para Répteis, Economia de Espaço, Suspensão Confortável para o Verão (Preto)', 'Rede de Rede Respirável para Répteis, Rede Retangular de Malha para Répteis, Economia de Espaço, Suspensão Confortável para o Verão (Preto)', 'brand 97', TRUE, 38, 37.44, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Produtos para Répteis e Anfíbios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6e2d36bf-7db5-4745-b94c-897abae853ce', 11.85, 81.11, 30.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5ca09693-0be0-44e8-a23e-b4789177599e', 'Argila Seca Ao Ar, Tinta de 6 Cores, Amplamente Utilizada, Portátil, Argila Mágica para Crianças, Fácil Operação, 1,1 Lb, Alta Segurança para Educação', 'Argila Seca Ao Ar, Tinta de 6 Cores, Amplamente Utilizada, Portátil, Argila Mágica para Crianças, Fácil Operação, 1,1 Lb, Alta Segurança para Educação', 'brand 28', TRUE, 85, 0.0, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5ca09693-0be0-44e8-a23e-b4789177599e', 91.64, 90.37, 97.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('aab87659-a273-415f-88be-774e4a8e2ec4', 'Skin PS5 Adesivo - Modelo 119', 'Skin PS5 Adesivo - Modelo 119', 'brand 67', TRUE, 56, 0.0, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'PlayStation 5, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('aab87659-a273-415f-88be-774e4a8e2ec4', 99.75, 15.16, 57.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('28dcba6c-8b6e-43b6-ab7b-0e366b354cf6', 'Amosfun Chupetas De Silicone 2 Pçs Chupeta De Silicone Corrente Chupetas Recém-Nascidos Chupetas De Silicone Chupeta De Silicone Clipe Chupetas Recém-Nascido Chupeta Infantil Brinquedo', 'Amosfun Chupetas De Silicone 2 Pçs Chupeta De Silicone Corrente Chupetas Recém-Nascidos Chupetas De Silicone Chupeta De Silicone Clipe Chupetas Recém-Nascido Chupeta Infantil Brinquedo', 'brand 10', TRUE, 79, 50.35, 'b7caf158-c92c-4436-927c-08e9ada58c66', 'Chupetas e Mordedores', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('28dcba6c-8b6e-43b6-ab7b-0e366b354cf6', 73.53, 61.17, 38.39);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1d7b720d-ce07-4fd3-b930-009d8fcb0e75', 'Recanto de Leão, 47, Cenaculo, 78125462 Sampaio / ES', 698, 'casa', 'Duarte', '35799-234', 'Lopes de das Neves', 'Rio Grande do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1d7b720d-ce07-4fd3-b930-009d8fcb0e75', -770291654, 648455185, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('5cd9a57a-bed7-455b-8025-714be5084ba9', 'Marina Cunha', 'camiladas-neves@example.org', 'qB4vvVb^w*', '81 6568-4484', NULL, NOW(), NOW(), 'Mar', '1d7b720d-ce07-4fd3-b930-009d8fcb0e75');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('ba41c2fa-6dd7-4ae2-aa93-3ab1745003d1', 'Passarela de Caldeira, Vila Nossa Senhora Do Rosário, 37006622 Fernandes Grande / TO', 178, 'comercial', 'Costa', '56946-587', 'Gomes', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('ba41c2fa-6dd7-4ae2-aa93-3ab1745003d1', -306500696, -828870072, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('b3b08564-e0e2-4994-9a22-325f0a332076', 'da Rosa Rios - EI', '9:00-18:00', '(084) 5712 9683', '93820745629', 'ba41c2fa-6dd7-4ae2-aa93-3ab1745003d1');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('c0a2faef-f877-4b5e-93de-975da9a64233', '5cd9a57a-bed7-455b-8025-714be5084ba9', '92681473519', NOW(), 'b3b08564-e0e2-4994-9a22-325f0a332076');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8f118a45-5f61-4d08-8594-4da8bfa41d13', 'HONMEET Máscara De Disfarce 6 Pçs A Máscara De Máscara De Papel Máscara De Crânio De Halloween Máscara De Crânio De Esqueleto Para Festa De Formatura De Halloween Máscara De Crânio', 'HONMEET Máscara De Disfarce 6 Pçs A Máscara De Máscara De Papel Máscara De Crânio De Halloween Máscara De Crânio De Esqueleto Para Festa De Formatura De Halloween Máscara De Crânio', 'brand 53', TRUE, 53, 40.78, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Brinquedos para Faz de Conta e Casinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8f118a45-5f61-4d08-8594-4da8bfa41d13', 83.92, 10.59, 61.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f8b494a4-9348-4947-a3eb-f5e1fad372f2', 'Wp infantil para meninos, Preto, XP', 'Wp infantil para meninos, Preto, XP', 'brand 32', TRUE, 35, 242.04, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f8b494a4-9348-4947-a3eb-f5e1fad372f2', 21.0, 27.03, 87.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('97792fa7-ac9e-4e78-a5b1-813b418fc49b', 'Óculos De Sol Esportivo P/ Beach Tennis Mormaii Gamboa Air 5', 'Óculos De Sol Esportivo P/ Beach Tennis Mormaii Gamboa Air 5', 'brand 93', TRUE, 85, 409.99, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('97792fa7-ac9e-4e78-a5b1-813b418fc49b', 81.39, 52.78, 17.29);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('41962567-a946-41ff-b5a4-4e4ce388d1c2', 'Bola De Basquete Tamanho Oficial Padrão Basketball', 'Bola De Basquete Tamanho Oficial Padrão Basketball', 'brand 14', TRUE, 7, 53.5, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Esportes e Aventura', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('41962567-a946-41ff-b5a4-4e4ce388d1c2', 17.96, 52.48, 43.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a30e2d10-7480-4e77-9e6e-5d2b0d0ce552', 'Sky Whale', 'Sky Whale', 'brand 9', TRUE, 76, 0.0, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a30e2d10-7480-4e77-9e6e-5d2b0d0ce552', 52.07, 91.82, 19.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5d012b99-d52e-4e80-b73a-5c77e3c2ed41', 'Ita Nest Peças sobressalentes para kits de reparo de pistão de cilindro de longa duração. Adequado para motosserra Husqvarna 435 435E 440 440E 440II', 'Ita Nest Peças sobressalentes para kits de reparo de pistão de cilindro de longa duração. Adequado para motosserra Husqvarna 435 435E 440 440E 440II', 'brand 63', TRUE, 88, 200.26, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Cortadores e Ferramentas Elétricas para Ambientes Externos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5d012b99-d52e-4e80-b73a-5c77e3c2ed41', 68.0, 16.92, 18.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('737bcd2f-e3d6-4339-a4d1-30438809f4dc', 'Vonder Disco De Lixa Grão 100 Para A Lixadeira Lpv 600 E Lpv 1000 225 Mm', 'Vonder Disco De Lixa Grão 100 Para A Lixadeira Lpv 600 E Lpv 1000 225 Mm', 'brand 91', TRUE, 5, 66.61, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Acessórios de Ferramentas Elétricas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('737bcd2f-e3d6-4339-a4d1-30438809f4dc', 30.36, 62.03, 31.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0701ff28-351a-4db5-a1d1-a9becfe13f8d', 'Toddmomy 27 Pçs Asas De Dardo Voos De Dardo Para Suprimentos De Dardo Voadores Suaves Para Jogo De Dardos Profissionais Dardos Portáteis Caudas De Dardo Caudas De Voo Substituição De Asa', 'Toddmomy 27 Pçs Asas De Dardo Voos De Dardo Para Suprimentos De Dardo Voadores Suaves Para Jogo De Dardos Profissionais Dardos Portáteis Caudas De Dardo Caudas De Voo Substituição De Asa', 'brand 7', TRUE, 83, 36.47, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0701ff28-351a-4db5-a1d1-a9becfe13f8d', 74.57, 20.42, 39.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fd13e5b9-2641-487d-a621-aa74809ba6cb', 'Par Amortecedor Tampa Traseira Fiat Palio ano 1996 até 2011', 'Par Amortecedor Tampa Traseira Fiat Palio ano 1996 até 2011', 'brand 42', TRUE, 97, 81.5, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Automotivo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fd13e5b9-2641-487d-a621-aa74809ba6cb', 45.26, 35.41, 42.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e70c8349-28a2-47dc-9f42-22c4bc7d1572', 'UGREEN Adaptador USB 3.0 para Ethernet 5 em 1 Multiportas Hub com Gigabit RJ45 e adaptador de rede LAN com porta de alimentação tipo C, compatível com laptop, PC, MacBook, MacMini, Surface XPS Windows Linux MacOS e mais', 'UGREEN Adaptador USB 3.0 para Ethernet 5 em 1 Multiportas Hub com Gigabit RJ45 e adaptador de rede LAN com porta de alimentação tipo C, compatível com laptop, PC, MacBook, MacMini, Surface XPS Windows Linux MacOS e mais', 'brand 64', TRUE, 79, 175.98, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Acessórios para Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e70c8349-28a2-47dc-9f42-22c4bc7d1572', 10.37, 65.46, 73.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('74c66d29-a045-4347-bb62-40f861a08b9d', 'Pedra jade,Placa de raspagem Pedra de jade Ferramenta de massagem para raspagem Massageador facial para rosto Olhos Pescoço Corpo Pele Levantamento e firmeza', 'Pedra jade,Placa de raspagem Pedra de jade Ferramenta de massagem para raspagem Massageador facial para rosto Olhos Pescoço Corpo Pele Levantamento e firmeza', 'brand 94', TRUE, 69, 40.77, 'b3b08564-e0e2-4994-9a22-325f0a332076', 'Produtos para Cuidados com o Rosto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('74c66d29-a045-4347-bb62-40f861a08b9d', 33.06, 13.82, 46.4);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b61b7f94-de43-456a-bf67-3f4dc8300046', 'Lagoa Davi Lucas Peixoto, 601, Minas Caixa, 75780328 Nascimento / DF', 46, 'casa', 'da Cunha', '89841-426', 'Sales', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b61b7f94-de43-456a-bf67-3f4dc8300046', -336607714, 473251464, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('233237be-1bad-4840-bbef-ac05b091a316', 'Camila Machado', 'silvasofia@example.net', 'Yb3B3z2L%L', '(041) 2732-7658', NULL, NOW(), NOW(), 'Cam', 'b61b7f94-de43-456a-bf67-3f4dc8300046');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('19bf1cd3-8106-4aab-a6bb-fc4098dc376a', 'Condomínio Aparecida, 425, Vila Calafate, 30013798 Nascimento da Prata / SE', 982, 'comercial', 'Aparecida da Prata', '28572-954', 'Caldeira Verde', 'Rondônia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('19bf1cd3-8106-4aab-a6bb-fc4098dc376a', 600428098, 889590914, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Dias', '9:00-18:00', '(051) 4649 0487', '96105237812', '19bf1cd3-8106-4aab-a6bb-fc4098dc376a');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('89568862-9b88-43e9-bdda-85b0dfeac9b7', '233237be-1bad-4840-bbef-ac05b091a316', '35219847619', NOW(), 'ce5748d2-5c06-4157-837a-9dc6c5eb307b');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4294213d-8728-4272-a197-83aa95d9a2f0', 'POPETPOP 9 Pçs Pingente Layout Tanques De Figura De Brinquedo Peixe Estatueta Decoração De Aquário Flutuante Decoração Desenhos Animados Tanque Decorações De Plástico Água', 'POPETPOP 9 Pçs Pingente Layout Tanques De Figura De Brinquedo Peixe Estatueta Decoração De Aquário Flutuante Decoração Desenhos Animados Tanque Decorações De Plástico Água', 'brand 98', TRUE, 71, 98.78, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4294213d-8728-4272-a197-83aa95d9a2f0', 50.85, 80.96, 42.32);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('62d20eca-3bde-49ac-92f5-0060c7ba4eea', 'Toca com Túnel 2 em 1 Braskit', 'Toca com Túnel 2 em 1 Braskit', 'brand 20', TRUE, 39, 249.13, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Esportes e Brincadeiras ao Ar Livre', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('62d20eca-3bde-49ac-92f5-0060c7ba4eea', 48.45, 93.97, 59.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f8c3b456-aa1d-426c-a53b-f665358ff73a', 'Kxtffeect Natural Horsehair Shoes Escova de limpeza de couro com alça de madeira longa para estofamento, interior de carro mais limpo, móveis de estofamento, sapatos, roupas de couro, bolsas, sofá', 'Kxtffeect Natural Horsehair Shoes Escova de limpeza de couro com alça de madeira longa para estofamento, interior de carro mais limpo, móveis de estofamento, sapatos, roupas de couro, bolsas, sofá', 'brand 58', TRUE, 51, 375.78, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Utensílios de Limpeza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f8c3b456-aa1d-426c-a53b-f665358ff73a', 54.56, 65.35, 30.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eb1530c8-2d2b-4393-b2e9-c361bda1e7bb', 'Chinelo, B, Coca-Cola, Feminino', 'Chinelo, B, Coca-Cola, Feminino', 'brand 63', TRUE, 43, 59.99, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Loja de Calçados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eb1530c8-2d2b-4393-b2e9-c361bda1e7bb', 73.44, 95.88, 45.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('684ecc1c-6c20-44cd-86a2-247768aac782', 'TOYANDONA 3 Pçs Brinquedo De Madeira Do Bebê Brinquedos Montessori Para Bebês 6-12 Meses Montessori Forma Classificador Bloco Madeira Mão Olho Coordenação Brinquedos Brinquedos Montesorri', 'TOYANDONA 3 Pçs Brinquedo De Madeira Do Bebê Brinquedos Montessori Para Bebês 6-12 Meses Montessori Forma Classificador Bloco Madeira Mão Olho Coordenação Brinquedos Brinquedos Montesorri', 'brand 4', TRUE, 60, 213.38, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('684ecc1c-6c20-44cd-86a2-247768aac782', 72.1, 81.78, 18.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c95800ff-7807-42fa-b6bc-7990179ecd5b', 'Aexit Trava de freio a disco portátil antifurto de metal preto com 2 chaves', 'Aexit Trava de freio a disco portátil antifurto de metal preto com 2 chaves', 'brand 23', TRUE, 11, 81.35, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Acessórios e Peças para Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c95800ff-7807-42fa-b6bc-7990179ecd5b', 68.09, 40.73, 80.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dba7d5f4-6c17-45aa-84ad-bf4d78b92ef3', 'Carteira para passaporte com desenho de gato fofo, capa de couro para passaporte, acessórios de viagem para homens e mulheres', 'Carteira para passaporte com desenho de gato fofo, capa de couro para passaporte, acessórios de viagem para homens e mulheres', 'brand 9', TRUE, 27, 106.05, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Acessórios para Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dba7d5f4-6c17-45aa-84ad-bf4d78b92ef3', 71.63, 57.44, 85.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('aab6c32d-bd36-44cd-982f-f6a363a9bbdf', 'marine screw bolt, wear resistant marine bolt high hardness for pump impeller', 'marine screw bolt, wear resistant marine bolt high hardness for pump impeller', 'brand 51', TRUE, 27, 61.09, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('aab6c32d-bd36-44cd-982f-f6a363a9bbdf', 34.06, 42.54, 54.95);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0e7f911b-d1ec-4bc0-8a32-ecd7755c37dd', 'Toyvian Rede De Brinquedos De Banho Organizador De Banheiro Para Brinquedos Organizador De Brinquedos De Chuveiro Suporte De Brinquedos De Banheira Saco De Brinquedos De Banho Sacos De', 'Toyvian Rede De Brinquedos De Banho Organizador De Banheiro Para Brinquedos Organizador De Brinquedos De Chuveiro Suporte De Brinquedos De Banheira Saco De Brinquedos De Banho Sacos De', 'brand 24', TRUE, 1, 74.09, 'ce5748d2-5c06-4157-837a-9dc6c5eb307b', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0e7f911b-d1ec-4bc0-8a32-ecd7755c37dd', 54.19, 55.89, 82.28);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('274bde69-7876-48f9-a503-3c6827b2bbb6', 'Fazenda de Dias, 59, Mantiqueira, 00110230 Moreira / AL', 456, 'casa', 'Câmara de Minas', '37102-990', 'Lima da Mata', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('274bde69-7876-48f9-a503-3c6827b2bbb6', 447003467, 1483108809, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('7c6b6e1a-36a3-4f7c-a7a6-64d9466b5e65', 'Henry Campos', 'mendesisaac@example.net', '$T!0lZ1lQ4', '+55 71 8417 3579', NULL, NOW(), NOW(), 'Hen', '274bde69-7876-48f9-a503-3c6827b2bbb6');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c4f4a609-bad6-456d-be13-06cf3cdef410', 'Área de Dias, 96, Vila Aeroporto, 24563254 Gomes / PB', 408, 'comercial', 'da Conceição', '67133-978', 'Alves', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c4f4a609-bad6-456d-be13-06cf3cdef410', -789119551, 1243565097, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'da Cruz S.A.', '9:00-18:00', '(071) 1992 5126', '57426089347', 'c4f4a609-bad6-456d-be13-06cf3cdef410');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('f928e4e8-4a1f-4dbf-aa6e-9232036c341d', '7c6b6e1a-36a3-4f7c-a7a6-64d9466b5e65', '97564132043', NOW(), '69b16192-5b57-4256-a8a9-68c6b8bbd8f4');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('27bf5afe-29ec-40bf-abff-db8d57d15beb', 'Obuyke Bolsa Para Câmera Crossbody Bolsa Para Câmera Corporal Bolsa Para Câmera Mini Bolsa Bolsa Para Câmera Instantânea Bolsas De Ombro Brancas Capa Protetora Bolsa Para Câmera', 'Obuyke Bolsa Para Câmera Crossbody Bolsa Para Câmera Corporal Bolsa Para Câmera Mini Bolsa Bolsa Para Câmera Instantânea Bolsas De Ombro Brancas Capa Protetora Bolsa Para Câmera', 'brand 33', TRUE, 95, 0.0, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('27bf5afe-29ec-40bf-abff-db8d57d15beb', 18.31, 88.02, 39.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c655a217-c1c9-4484-b8f0-2323f6da098c', 'ibasenice 3 Peças Babadores Infantis Carrinhos De Enfermagem Xale Para Crianças Lenço De Amamentação Assento De Carro Poncho Babadores De Alimentação Capas De Alimentação Xale Toalha De', 'ibasenice 3 Peças Babadores Infantis Carrinhos De Enfermagem Xale Para Crianças Lenço De Amamentação Assento De Carro Poncho Babadores De Alimentação Capas De Alimentação Xale Toalha De', 'brand 68', TRUE, 83, 136.63, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c655a217-c1c9-4484-b8f0-2323f6da098c', 82.28, 53.16, 63.1);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d9003f00-bcc2-4df7-830c-7adf99a8ed6b', '(2021 Atualizado) Transmissor FM Criacr V5.0 Bluetooth para carro, Carregamento QC3.0 & 7 RGB Adaptador de Rádio FM sem fio com luz de fundo, Suporte Siri Google Assitant, Disco U, Cartão SD, Kit de Chamadas Mãos-livres', '(2021 Atualizado) Transmissor FM Criacr V5.0 Bluetooth para carro, Carregamento QC3.0 & 7 RGB Adaptador de Rádio FM sem fio com luz de fundo, Suporte Siri Google Assitant, Disco U, Cartão SD, Kit de Chamadas Mãos-livres', 'brand 48', TRUE, 46, 0.0, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Eletrônicos e Tecnologia Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d9003f00-bcc2-4df7-830c-7adf99a8ed6b', 17.39, 97.09, 79.88);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3c01f17b-3f74-437b-875e-60065ea14381', 'IWOWHERO Vara De Dentição Para Mastigar Brinquedos Mordedor Infantil Brinquedos Infantis Para Bebês Mordedor De Silicone Mordedor De Brinquedo Para Bebês Molar De Bebê Nano Prata Sílica', 'IWOWHERO Vara De Dentição Para Mastigar Brinquedos Mordedor Infantil Brinquedos Infantis Para Bebês Mordedor De Silicone Mordedor De Brinquedo Para Bebês Molar De Bebê Nano Prata Sílica', 'brand 6', TRUE, 57, 55.87, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Chupetas e Mordedores', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3c01f17b-3f74-437b-875e-60065ea14381', 68.81, 26.69, 22.15);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c9d7b681-5cfa-4053-8469-7583dfbdeebe', 'Kit Shampoo Johnson's Baby Cheirinho Prolongado 200ml c/4 unidades', 'Kit Shampoo Johnson's Baby Cheirinho Prolongado 200ml c/4 unidades', 'brand 46', TRUE, 63, 87.69, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c9d7b681-5cfa-4053-8469-7583dfbdeebe', 92.72, 33.38, 50.3);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('46f8513e-4f9c-4c2e-8200-29d361ef4dfc', 'PIGGY Sugador de Clitóris e Vibrador Feminino Vibrador Língua Clitóris Estimular 10 Velocidades Brinquedos Sexuais Femin', 'PIGGY Sugador de Clitóris e Vibrador Feminino Vibrador Língua Clitóris Estimular 10 Velocidades Brinquedos Sexuais Femin', 'brand 73', TRUE, 56, 228.1, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('46f8513e-4f9c-4c2e-8200-29d361ef4dfc', 81.34, 54.56, 78.56);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c77e660c-5ac6-4334-b9cc-308514b9cebc', 'Fatias de Alcaçuz Chá de Ervas China Original Chá Perfumado Bom Chá Chá de Flores Orgânicas Naturais Alimentos Verdes Sem Aditivos Chá de Ervas (250g)', 'Fatias de Alcaçuz Chá de Ervas China Original Chá Perfumado Bom Chá Chá de Flores Orgânicas Naturais Alimentos Verdes Sem Aditivos Chá de Ervas (250g)', 'brand 94', TRUE, 82, 82.0, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Café, Chá e outras Bebidas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c77e660c-5ac6-4334-b9cc-308514b9cebc', 65.46, 46.5, 99.1);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('15601563-aa95-4bee-86b4-699d53b55c75', 'Balacoo Brinquedos De Escalada Brinquedos De Periquito Brinquedos Para Animais De Estimação Brinquedo De Corda De Papagaio Brinquedo De Mordida De Papagaio Brinquedo De Corda De Algodão', 'Balacoo Brinquedos De Escalada Brinquedos De Periquito Brinquedos Para Animais De Estimação Brinquedo De Corda De Papagaio Brinquedo De Mordida De Papagaio Brinquedo De Corda De Algodão', 'brand 13', TRUE, 62, 0.0, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('15601563-aa95-4bee-86b4-699d53b55c75', 33.49, 23.02, 57.19);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('37d1187b-c7ec-46aa-ad6f-ffe753917d34', 'limpadortraseiro para jeep grand cherokee hatchback 2006-2009, limpador de para-brisa traseiro de 365mm', 'limpadortraseiro para jeep grand cherokee hatchback 2006-2009, limpador de para-brisa traseiro de 365mm', 'brand 32', TRUE, 56, 176.99, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Produtos de Limpeza para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('37d1187b-c7ec-46aa-ad6f-ffe753917d34', 49.74, 87.05, 55.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fd03e611-0d88-483d-bf8f-1a173a9a9edc', 'Tapete de cabeleireiro de barbeiro, tapete antiderrapante para cabeleireiro, padrão de letras BH, antiderrapante, resistente ao calor, salão de beleza, tapete de barbeiro para corte de cabelo, tesoura de corte de cabelo', 'Tapete de cabeleireiro de barbeiro, tapete antiderrapante para cabeleireiro, padrão de letras BH, antiderrapante, resistente ao calor, salão de beleza, tapete de barbeiro para corte de cabelo, tesoura de corte de cabelo', 'brand 5', TRUE, 47, 108.27, '69b16192-5b57-4256-a8a9-68c6b8bbd8f4', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fd03e611-0d88-483d-bf8f-1a173a9a9edc', 64.58, 58.12, 62.43);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('d659ae8b-43e4-488d-9ee5-90ced49bff92', 'Parque de Duarte, 64, Bonsucesso, 21831192 Jesus / RS', 936, 'casa', 'Nogueira', '29188-110', 'Silva das Pedras', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('d659ae8b-43e4-488d-9ee5-90ced49bff92', -216535580, 881942195, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4cdfcfb5-4604-48d8-a52c-8b68a70630d2', 'Allana da Rocha', 'fogacaanna-liz@example.org', 'M6*4YrQm@z', '+55 (081) 5961-0032', NULL, NOW(), NOW(), 'All', 'd659ae8b-43e4-488d-9ee5-90ced49bff92');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('2019df36-5c89-4f01-901e-b2cc1a551c34', 'Área Cavalcanti, 256, Alto Barroca, 62967-369 Caldeira / PB', 510, 'comercial', 'Fernandes do Sul', '68276-114', 'Castro de Souza', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('2019df36-5c89-4f01-901e-b2cc1a551c34', 319852915, -368752622, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('4ba02731-e39a-4d59-a458-5d42006506df', 'Vieira', '9:00-18:00', '(041) 0254-5765', '20791536840', '2019df36-5c89-4f01-901e-b2cc1a551c34');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('34c9fa33-b662-4857-98de-926291990b64', '4cdfcfb5-4604-48d8-a52c-8b68a70630d2', '64302591889', NOW(), '4ba02731-e39a-4d59-a458-5d42006506df');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7d039c22-0647-4b3b-a4ef-48cf7d7cbaa4', 'carregador portátil chaveiro | Bateria Pequeno 1500mAh Para Celulares Para Telefone,Mini bateria ultracompacta carregador rápido banco energia backup para Fovolat', 'carregador portátil chaveiro | Bateria Pequeno 1500mAh Para Celulares Para Telefone,Mini bateria ultracompacta carregador rápido banco energia backup para Fovolat', 'brand 49', TRUE, 91, 0.0, '4ba02731-e39a-4d59-a458-5d42006506df', 'Xbox Series X e S, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7d039c22-0647-4b3b-a4ef-48cf7d7cbaa4', 63.64, 33.52, 40.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5d08802d-fffb-494f-a16e-eb2da2598b50', 'TOYANDONA Foguete Chuveiro Nave Espacial Brinquedo De Banho Chuveiro Banheira Brinquedos Banho Spray De Água Brinquedo Brinquedos Para Bebê Recém-Nascido Banheira Espaço Brinquedos Criança', 'TOYANDONA Foguete Chuveiro Nave Espacial Brinquedo De Banho Chuveiro Banheira Brinquedos Banho Spray De Água Brinquedo Brinquedos Para Bebê Recém-Nascido Banheira Espaço Brinquedos Criança', 'brand 95', TRUE, 57, 90.31, '4ba02731-e39a-4d59-a458-5d42006506df', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5d08802d-fffb-494f-a16e-eb2da2598b50', 56.67, 25.04, 61.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2d9e3368-cb94-49ce-a3bf-155b6653bbe8', 'Pais & Filhos Lança Dardos C/Muniçao e Alvo - Elite, Amarelo', 'Pais & Filhos Lança Dardos C/Muniçao e Alvo - Elite, Amarelo', 'brand 5', TRUE, 79, 58.42, '4ba02731-e39a-4d59-a458-5d42006506df', 'Esportes e Brincadeiras ao Ar Livre', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2d9e3368-cb94-49ce-a3bf-155b6653bbe8', 17.9, 91.07, 54.19);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('78cc7dd7-c75b-406b-a27a-ce13a3970728', 'RA5291U Óculos de sol femininos quadrados de ajuste universal, marrom degradê, 56 mm', 'RA5291U Óculos de sol femininos quadrados de ajuste universal, marrom degradê, 56 mm', 'brand 36', TRUE, 38, 450.5, '4ba02731-e39a-4d59-a458-5d42006506df', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('78cc7dd7-c75b-406b-a27a-ce13a3970728', 19.7, 93.86, 99.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('150f3080-87f2-4df3-b9d1-6885b8747d13', 'CLISPEED Decoração De Mesa Modelo de Projetor de Cinema Projetor de Filme Antigo Do Vintage Decora??es de Mesa Artesanato De Mesa', 'CLISPEED Decoração De Mesa Modelo de Projetor de Cinema Projetor de Filme Antigo Do Vintage Decora??es de Mesa Artesanato De Mesa', 'brand 13', TRUE, 70, 135.98, '4ba02731-e39a-4d59-a458-5d42006506df', 'Eletrônicos e Tecnologia para Escritório', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('150f3080-87f2-4df3-b9d1-6885b8747d13', 65.06, 73.67, 54.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('78a5c182-9e84-4a0d-9679-429bbd70d2ad', 'Jogo De Tabuleiro Infantil Quem Sou Eu?', 'Jogo De Tabuleiro Infantil Quem Sou Eu?', 'brand 26', TRUE, 33, 32.99, '4ba02731-e39a-4d59-a458-5d42006506df', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('78a5c182-9e84-4a0d-9679-429bbd70d2ad', 45.32, 45.29, 75.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('92bc21be-fcc1-4304-a832-7c3dd976c9b1', '5 Pçs Padrão Ornamento De Desenho Animado Para Crianças Pulso Festival De Moda Meninas Acessório Bonito Moda Para Adorável Festa De Menina Para Crianças Estudantes Relógio', '5 Pçs Padrão Ornamento De Desenho Animado Para Crianças Pulso Festival De Moda Meninas Acessório Bonito Moda Para Adorável Festa De Menina Para Crianças Estudantes Relógio', 'brand 53', TRUE, 2, 132.49, '4ba02731-e39a-4d59-a458-5d42006506df', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('92bc21be-fcc1-4304-a832-7c3dd976c9b1', 21.53, 70.97, 35.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ffb6839d-4b1f-43a2-8bc6-05cca519ebfb', 'Mochila leve embalável II 21L, preta, tamanho único', 'Mochila leve embalável II 21L, preta, tamanho único', 'brand 96', TRUE, 12, 249.0, '4ba02731-e39a-4d59-a458-5d42006506df', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ffb6839d-4b1f-43a2-8bc6-05cca519ebfb', 57.76, 67.54, 49.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8aed5ed6-099a-4357-ad32-bd26fecb92af', 'Seventeen Wishes: A Best Friends to Lovers Romance (English Edition)', 'Seventeen Wishes: A Best Friends to Lovers Romance (English Edition)', 'brand 53', TRUE, 8, 0.0, '4ba02731-e39a-4d59-a458-5d42006506df', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8aed5ed6-099a-4357-ad32-bd26fecb92af', 43.06, 60.76, 44.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a9e35fa4-ac2f-48e5-8bc8-f54f7f0361bf', 'FastUU Saco de areia de peso, tenda de areia fixa, dossel de pesos, sacos de areia para ambientes externos, dossel instantâneo, saco de peso para tenda para abrigo de sol para saco de areia', 'FastUU Saco de areia de peso, tenda de areia fixa, dossel de pesos, sacos de areia para ambientes externos, dossel instantâneo, saco de peso para tenda para abrigo de sol para saco de areia', 'brand 58', TRUE, 4, 0.0, '4ba02731-e39a-4d59-a458-5d42006506df', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a9e35fa4-ac2f-48e5-8bc8-f54f7f0361bf', 34.11, 91.82, 54.06);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('108fa4c3-acb5-45db-b9ac-f0565e4e3821', 'Trecho Melina Macedo, 57, Nazare, 37859-946 Pacheco do Campo / ES', 387, 'casa', 'da Costa de Goiás', '39764-609', 'Porto de Goiás', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('108fa4c3-acb5-45db-b9ac-f0565e4e3821', 153276125, -938197728, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('542290fc-9a70-46c2-bd4d-419bbe6bf2b3', 'Fernando Castro', 'mborges@example.net', '#leCZwXAS3', '(041) 2921 2202', NULL, NOW(), NOW(), 'Fer', '108fa4c3-acb5-45db-b9ac-f0565e4e3821');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('56b0842c-6f80-48cd-8fa8-5d3c72d5c0bd', 'Quadra Eduardo Ferreira, 95, Barão Homem De Melo 3ª Seção, 59619241 Pacheco de Nascimento / GO', 23, 'comercial', 'Azevedo', '94941-679', 'Caldeira Verde', 'Maranhão');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('56b0842c-6f80-48cd-8fa8-5d3c72d5c0bd', 798969177, -537293230, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'da Cruz - ME', '9:00-18:00', '0800 966 3357', '12467895076', '56b0842c-6f80-48cd-8fa8-5d3c72d5c0bd');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('b93ea647-8789-41c9-a5bd-c4b95f6fe0be', '542290fc-9a70-46c2-bd4d-419bbe6bf2b3', '18729530695', NOW(), '174e29ec-cc05-42b9-8d12-4a8b95a94a15');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('77dbd8dd-5645-4096-a000-0c6ea9798884', 'Ame Ofertas - Kit com 4 Drenos E Ralo Eliminadores De Odores Banheiros Cozinha', 'Ame Ofertas - Kit com 4 Drenos E Ralo Eliminadores De Odores Banheiros Cozinha', 'brand 35', TRUE, 36, 46.9, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Instalações de Cozinha e Banheiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('77dbd8dd-5645-4096-a000-0c6ea9798884', 57.07, 57.14, 34.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a9916121-9056-47e3-a792-fe1bca98d196', 'Alça de Pulso de Relógio, Fivela de Metal Ajustável para a Pele, Pulseira de Relógio de Substituição Estilo étnico Elegante para Relógio Inteligente', 'Alça de Pulso de Relógio, Fivela de Metal Ajustável para a Pele, Pulseira de Relógio de Substituição Estilo étnico Elegante para Relógio Inteligente', 'brand 68', TRUE, 29, 0.0, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a9916121-9056-47e3-a792-fe1bca98d196', 53.39, 49.37, 89.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ed17288b-0209-4c4e-8449-ab36014fc510', 'G1/4" bicos de névoa fêmea para bocal, 5 peças, 3 cabeças, bocal de névoa para jardim, sistema de resfriamento de irrigação ao ar livre', 'G1/4" bicos de névoa fêmea para bocal, 5 peças, 3 cabeças, bocal de névoa para jardim, sistema de resfriamento de irrigação ao ar livre', 'brand 75', TRUE, 43, 119.89, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Equipamentos de Rega para Grama e Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ed17288b-0209-4c4e-8449-ab36014fc510', 23.84, 35.62, 46.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3e8dc6a7-0a63-42eb-b45b-240dd116d66e', 'AVerMedia PLACA DE CAPTURA EXTREMECAP UVC BU110 - INDICADA PARA SMARTPHONES - CÂMERAS E FILMADORAS PROFISSIONAIS -, multi-colored, HDMI to USB3.0', 'AVerMedia PLACA DE CAPTURA EXTREMECAP UVC BU110 - INDICADA PARA SMARTPHONES - CÂMERAS E FILMADORAS PROFISSIONAIS -, multi-colored, HDMI to USB3.0', 'brand 100', TRUE, 58, 578.56, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3e8dc6a7-0a63-42eb-b45b-240dd116d66e', 81.22, 29.2, 99.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e0a352f0-992f-44a8-be7a-bfac630b072e', 'SAFIGLE 6 Peças Brinquedos Educativos Para Brinquedos Educativos Mastro De Madeira Acessório De Placa De Substituição Brinquedos Para Crianças Polos Criativos Magnéticos Para Crianças Ímã', 'SAFIGLE 6 Peças Brinquedos Educativos Para Brinquedos Educativos Mastro De Madeira Acessório De Placa De Substituição Brinquedos Para Crianças Polos Criativos Magnéticos Para Crianças Ímã', 'brand 58', TRUE, 73, 79.86, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e0a352f0-992f-44a8-be7a-bfac630b072e', 29.66, 70.91, 53.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('69c38eae-bd57-4b05-b3c7-44beed2309ec', 'Bolsa transversal BAstin', 'Bolsa transversal BAstin', 'brand 8', TRUE, 44, 756.6, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Bolsas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('69c38eae-bd57-4b05-b3c7-44beed2309ec', 56.38, 17.13, 88.93);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c56d602b-d5ec-46c6-b10d-b363d2eb92ff', '6 em 1 armação de óculos homens mulheres com 5 pcs clip on óculos polarizados óculos magnéticos masculino.', '6 em 1 armação de óculos homens mulheres com 5 pcs clip on óculos polarizados óculos magnéticos masculino.', 'brand 1', TRUE, 84, 89.0, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c56d602b-d5ec-46c6-b10d-b363d2eb92ff', 81.21, 61.97, 89.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9df552a9-809c-4007-b2e0-18c491b5f4bc', 'Suporte para impressora de mesa Fácil de mover a impressora Super Super Load-Bearing Stand Impressora Secretária sob o suporte da impressora de mesa com 4 rodas para mini impressora 3D Prateleira para', 'Suporte para impressora de mesa Fácil de mover a impressora Super Super Load-Bearing Stand Impressora Secretária sob o suporte da impressora de mesa com 4 rodas para mini impressora 3D Prateleira para', 'brand 11', TRUE, 40, 1653.49, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9df552a9-809c-4007-b2e0-18c491b5f4bc', 10.46, 42.15, 33.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('acd80380-62f9-4802-8ddc-ece711e1b0d4', 'Toddmomy 2 Pçs Cobertor Para Meninas Cobertor De Pelúcia Cobertor De Bebê Felpudo Cobertor De Lã De Algodão Cobertor De Travessas Para Cobertores De Bebê Para Meninas Recebendo Cobertor De', 'Toddmomy 2 Pçs Cobertor Para Meninas Cobertor De Pelúcia Cobertor De Bebê Felpudo Cobertor De Lã De Algodão Cobertor De Travessas Para Cobertores De Bebê Para Meninas Recebendo Cobertor De', 'brand 37', TRUE, 95, 118.89, '174e29ec-cc05-42b9-8d12-4a8b95a94a15', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('acd80380-62f9-4802-8ddc-ece711e1b0d4', 43.22, 15.4, 54.49);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('63c58e40-816b-4190-90fe-8a815294aff9', 'Rua Mathias Almeida, 529, Confisco, 57313-741 Vieira Verde / RO', 330, 'casa', 'Nascimento', '81224-964', 'Costela', 'Roraima');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('63c58e40-816b-4190-90fe-8a815294aff9', 369391349, 459603526, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('a8828cea-f664-4717-a2a9-46620822aa18', 'Benício Marques', 'monteirocatarina@example.org', '*4pq(P)jcT', '+55 71 9209 8727', NULL, NOW(), NOW(), 'Ben', '63c58e40-816b-4190-90fe-8a815294aff9');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('63ef8a8c-0b2b-4955-a0a2-9baf391a788e', 'Estação Ribeiro, 724, Delta, 99529531 Ramos / AC', 328, 'comercial', 'Vieira', '14963-458', 'Nunes de Goiás', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('63ef8a8c-0b2b-4955-a0a2-9baf391a788e', 271342006, 1524158126, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('fb3d3501-0609-40ad-a757-21688a5e8866', 'Porto e Filhos', '9:00-18:00', '+55 11 9252-9088', '81625743017', '63ef8a8c-0b2b-4955-a0a2-9baf391a788e');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('b0d27775-0926-4d40-94fd-e5fb90e55949', 'a8828cea-f664-4717-a2a9-46620822aa18', '31428976582', NOW(), 'fb3d3501-0609-40ad-a757-21688a5e8866');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e8ca3bff-25b9-44da-ba6e-3721c2c92796', 'Cabo óptico Btuty Toslink, banhado a ouro, Mini Toslink Digital Fibra Óptica Quadrado para Interface Redonda 3.5mm, Cabo de Áudio de 150cm (preto)', 'Cabo óptico Btuty Toslink, banhado a ouro, Mini Toslink Digital Fibra Óptica Quadrado para Interface Redonda 3.5mm, Cabo de Áudio de 150cm (preto)', 'brand 29', TRUE, 63, 0.0, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Ferramentas Elétricas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e8ca3bff-25b9-44da-ba6e-3721c2c92796', 38.19, 96.08, 33.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('61e9faac-5173-4010-b8a2-346365df6d0d', 'Muda De Laranja Valencia', 'Muda De Laranja Valencia', 'brand 78', TRUE, 3, 48.7, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Jardim e Piscina', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('61e9faac-5173-4010-b8a2-346365df6d0d', 78.14, 86.47, 59.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bf9ef9dc-2734-4227-9f86-d467e7f55f53', 'Potencializador Hidratante Explosao De Brilho 30Ml (1001145)', 'Potencializador Hidratante Explosao De Brilho 30Ml (1001145)', 'brand 73', TRUE, 41, 23.32, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bf9ef9dc-2734-4227-9f86-d467e7f55f53', 30.83, 85.28, 75.13);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e00ab68c-89a1-41ee-bdc6-f0592a4593ba', 'Computador Completo 3green Graphics Intel Core i5 16GB SSD 1TB Placa de vídeo Geforce Monitor LED 21.5" Windows 10 3GG-018', 'Computador Completo 3green Graphics Intel Core i5 16GB SSD 1TB Placa de vídeo Geforce Monitor LED 21.5" Windows 10 3GG-018', 'brand 30', TRUE, 70, 1869.99, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Computadores Desktop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e00ab68c-89a1-41ee-bdc6-f0592a4593ba', 40.22, 77.16, 82.23);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('50a69e2f-b8f2-41ba-ae99-ed1eed5a1771', 'PROD sanity - MCM-74921884', 'PROD sanity - MCM-74921884', 'brand 47', TRUE, 18, 0.0, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Fire TV Stick Apps', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('50a69e2f-b8f2-41ba-ae99-ed1eed5a1771', 44.58, 54.81, 81.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('41f87f68-0271-436f-8368-7b6234706841', 'Barraca Carajas 4 Pessoas - Quati', 'Barraca Carajas 4 Pessoas - Quati', 'brand 77', TRUE, 93, 168.58, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Equipamento para Trilha e Acampamento', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('41f87f68-0271-436f-8368-7b6234706841', 99.29, 30.12, 71.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6a3497c5-bf59-4ab7-889c-26e087d51835', 'Suporte Estendido para Computador de Bicicleta, Confiável, Estável, Colorido, Liga de Alumínio, Forte e Durável, Suporte para Computador de Bicicleta para Câmera GoPro SARGO Xiao-Yi', 'Suporte Estendido para Computador de Bicicleta, Confiável, Estável, Colorido, Liga de Alumínio, Forte e Durável, Suporte para Computador de Bicicleta para Câmera GoPro SARGO Xiao-Yi', 'brand 62', TRUE, 82, 91.89, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Eletrônicos e Aparelhos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6a3497c5-bf59-4ab7-889c-26e087d51835', 90.92, 17.32, 33.1);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('35c59c51-261e-4ed8-84be-cd4dc8b423da', 'Roteador 4G à prova d'água para ambientes externos com ranhura para cartão SIM Antena 5Dbi Roteador de montagem em parede para IPC Max 15 Dispositivos Versão UE POPQ', 'Roteador 4G à prova d'água para ambientes externos com ranhura para cartão SIM Antena 5Dbi Roteador de montagem em parede para IPC Max 15 Dispositivos Versão UE POPQ', 'brand 46', TRUE, 44, 246.0, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Roteadores, Modems e Dispositivos de Rede', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('35c59c51-261e-4ed8-84be-cd4dc8b423da', 61.39, 55.74, 56.04);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ebb17c05-036c-4ccc-8ce6-37aa6496bbe7', 'XPT Bolsa De Maquiagem Com Alça Portátil Impermeável De Couro Sintético Bolsas Cosméticas De Viagem Para Passeio Em Casa Cor de rosa', 'XPT Bolsa De Maquiagem Com Alça Portátil Impermeável De Couro Sintético Bolsas Cosméticas De Viagem Para Passeio Em Casa Cor de rosa', 'brand 10', TRUE, 90, 80.58, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ebb17c05-036c-4ccc-8ce6-37aa6496bbe7', 75.49, 71.65, 12.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('48cbd6d6-02d3-4cb2-b627-6a817cd3a163', 'Generic Ventilador USB Refrigerador De Carro Ventilador Automático Ar Condicionado De Carro Ventilador De Carro Movido A Energia Solar Ventiladores De Resfriamento Ventilador Solar Para', 'Generic Ventilador USB Refrigerador De Carro Ventilador Automático Ar Condicionado De Carro Ventilador De Carro Movido A Energia Solar Ventiladores De Resfriamento Ventilador Solar Para', 'brand 87', TRUE, 44, 0.0, 'fb3d3501-0609-40ad-a757-21688a5e8866', 'Ar e Ventilação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('48cbd6d6-02d3-4cb2-b627-6a817cd3a163', 16.25, 95.69, 11.01);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('040e5de9-ab35-41c4-bfe2-02f7155ae621', 'Sítio da Cruz, Engenho Nogueira, 38576-559 Sales da Mata / AL', 321, 'casa', 'Vargas Verde', '71432-206', 'Pacheco', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('040e5de9-ab35-41c4-bfe2-02f7155ae621', 115351300, 1647485828, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('dceb2307-c055-4be5-b336-2f6122136937', 'Lucas Novaes', 'zfernandes@example.net', '!y$N8CJ@O4', '+55 61 6609-9480', NULL, NOW(), NOW(), 'Luc', '040e5de9-ab35-41c4-bfe2-02f7155ae621');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4ae4b446-dd20-4099-ab01-c0b72e2cfdcb', 'Viela Mirella Peixoto, 37, Santa Inês, 60707-406 Garcia do Oeste / BA', 47, 'comercial', 'Almeida do Campo', '94509-342', 'Pacheco de Campos', 'Rondônia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4ae4b446-dd20-4099-ab01-c0b72e2cfdcb', -135813554, 1766383694, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Peixoto', '9:00-18:00', '+55 (031) 1538 2231', '27413609525', '4ae4b446-dd20-4099-ab01-c0b72e2cfdcb');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('701b333b-c092-4de9-998b-cd297e7a20c6', 'dceb2307-c055-4be5-b336-2f6122136937', '70941823504', NOW(), 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b7dcd66e-14db-4d9e-bcf2-89e36a15d1b3', 'HEMOTON Filtro de Piscina Spa Limpador a Jato Banheira de Hidromassagem Spa Varinha de Ãgua Cartucho Limpador Manual Remove Detritos Sujeira para Suprimentos de Piscina', 'HEMOTON Filtro de Piscina Spa Limpador a Jato Banheira de Hidromassagem Spa Varinha de Ãgua Cartucho Limpador Manual Remove Detritos Sujeira para Suprimentos de Piscina', 'brand 8', TRUE, 60, 94.14, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Talheres', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b7dcd66e-14db-4d9e-bcf2-89e36a15d1b3', 85.47, 30.44, 49.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('48f69980-012e-4c1c-88a0-c9abe35b467c', 'Óculos DRAGON DR 2023 002 preto fosco', 'Óculos DRAGON DR 2023 002 preto fosco', 'brand 57', TRUE, 93, 0.0, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('48f69980-012e-4c1c-88a0-c9abe35b467c', 70.2, 72.83, 63.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a14a4078-9b44-4d3b-890f-5c852315dfbb', 'Andoer 1,8 x 2,8 m tela de fundo de fotografia retrato cenários de fotografia adereços de estúdio fotográfico durável lavável com 4 peças clipes elásticos, verde', 'Andoer 1,8 x 2,8 m tela de fundo de fotografia retrato cenários de fotografia adereços de estúdio fotográfico durável lavável com 4 peças clipes elásticos, verde', 'brand 44', TRUE, 30, 136.99, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Produtos para Câmeras e Foto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a14a4078-9b44-4d3b-890f-5c852315dfbb', 62.2, 83.71, 60.83);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('814e2efd-4d2d-4583-8305-edd2d699b315', 'GABINETE DE VIDRO ARMÊNIA 40CM AC BRANCO EK', 'GABINETE DE VIDRO ARMÊNIA 40CM AC BRANCO EK', 'brand 22', TRUE, 60, 416.13, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Peças e Componentes de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('814e2efd-4d2d-4583-8305-edd2d699b315', 30.78, 71.24, 80.66);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('76fea18f-d3a4-42c5-9b27-cc74324e6d71', 'Cafeteira Italiana Aço Inox 9 Xicaras 450ml Café Expresso B805', 'Cafeteira Italiana Aço Inox 9 Xicaras 450ml Café Expresso B805', 'brand 49', TRUE, 83, 129.0, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('76fea18f-d3a4-42c5-9b27-cc74324e6d71', 91.63, 28.59, 63.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8dbad247-660e-450b-b4f0-605192e8b0f0', 'Pijama curto de manga de desenho animado para bebê menina menino roupa de dormir tops + calças meninas Falls Creek pijama', 'Pijama curto de manga de desenho animado para bebê menina menino roupa de dormir tops + calças meninas Falls Creek pijama', 'brand 15', TRUE, 21, 59.74, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Compras Internacionais em Moda', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8dbad247-660e-450b-b4f0-605192e8b0f0', 11.95, 31.28, 19.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c88f7f3c-4f40-4ac9-a8c3-147eaee908ec', 'Xarope Dilute, Tônica de Quinino sem açúcar, 500ml', 'Xarope Dilute, Tônica de Quinino sem açúcar, 500ml', 'brand 63', TRUE, 87, 27.99, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Café, Chá e outras Bebidas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c88f7f3c-4f40-4ac9-a8c3-147eaee908ec', 92.23, 53.11, 87.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('60135328-5d70-438b-ac17-7caf965b6d2b', 'Aspirador de Pó Robô WAP ROBOT W300 Bivolt Automático Limpeza Varre Aspira Controle Remoto e Base de Autorrecarga', 'Aspirador de Pó Robô WAP ROBOT W300 Bivolt Automático Limpeza Varre Aspira Controle Remoto e Base de Autorrecarga', 'brand 93', TRUE, 13, 1040.14, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Casa Inteligente', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('60135328-5d70-438b-ac17-7caf965b6d2b', 24.89, 53.37, 80.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2bfd0975-ac73-41b4-a7cd-520dcd7d489b', 'Whey Protein Concentrado Ultrafiltrado Gourmet Coffee Whey Cappuccino Performance Nutrition 700 g Kit 3 Unidades', 'Whey Protein Concentrado Ultrafiltrado Gourmet Coffee Whey Cappuccino Performance Nutrition 700 g Kit 3 Unidades', 'brand 78', TRUE, 95, 0.0, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Suplementos e Pré-Treino', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2bfd0975-ac73-41b4-a7cd-520dcd7d489b', 84.9, 51.69, 52.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('63803749-6411-4ac6-a5f2-627d2d7b11be', 'Relógio Orient Feminino Automático 559EB1X B1KX', 'Relógio Orient Feminino Automático 559EB1X B1KX', 'brand 26', TRUE, 95, 889.9, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('63803749-6411-4ac6-a5f2-627d2d7b11be', 60.94, 90.89, 51.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eba79bc7-5c46-4bfe-b7b7-62f24cdfb122', 'Tesouras Elétricas Cabras 850w, Aparador Serviço Pesado 6 Velocidades, Kit Preparação Para Gado Fazenda, Para Barbear Lã Pele Em Ovelhas, Cabras, Gado, Gado De Fazenda,Yellow-220V', 'Tesouras Elétricas Cabras 850w, Aparador Serviço Pesado 6 Velocidades, Kit Preparação Para Gado Fazenda, Para Barbear Lã Pele Em Ovelhas, Cabras, Gado, Gado De Fazenda,Yellow-220V', 'brand 93', TRUE, 94, 1996.99, 'e93b10a0-d4f9-4662-8f9a-de0126cfa39f', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eba79bc7-5c46-4bfe-b7b7-62f24cdfb122', 28.8, 39.83, 47.2);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('967561bb-e441-4638-8481-859503f34089', 'Feira Luísa Costela, 64, Chácara Leonina, 35151-991 Ramos da Mata / AM', 565, 'casa', 'Montenegro das Pedras', '17331-742', 'Abreu dos Dourados', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('967561bb-e441-4638-8481-859503f34089', 361267298, 358864528, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4d6ced34-f81c-4eac-9a96-ef5dad8052c3', 'Evelyn da Paz', 'da-cunhabella@example.net', 'jZUo0KFsF)', '11 0176-4988', NULL, NOW(), NOW(), 'Eve', '967561bb-e441-4638-8481-859503f34089');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1ad5e4ef-1f13-4d95-8e97-5d86187c984d', 'Alameda Luiza Montenegro, 73, Santa Rita, 07207-958 Silveira da Prata / AL', 10, 'comercial', 'Montenegro do Campo', '17534-118', 'Vargas', 'São Paulo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1ad5e4ef-1f13-4d95-8e97-5d86187c984d', 783274912, -999713617, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Duarte Barros - EI', '9:00-18:00', '+55 (021) 7166 3924', '04123978541', '1ad5e4ef-1f13-4d95-8e97-5d86187c984d');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('94520762-b9f1-47ac-a5bd-e7534d3bf8d7', '4d6ced34-f81c-4eac-9a96-ef5dad8052c3', '57428603153', NOW(), '1faaa5e0-618a-4d14-b7fa-d017b0fee105');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9a816fdf-20d0-4680-9b3c-f00d97690dd9', 'Sabonete Líquido Corporal Nativa Spa Morango Ruby 200Ml', 'Sabonete Líquido Corporal Nativa Spa Morango Ruby 200Ml', 'brand 98', TRUE, 32, 48.9, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9a816fdf-20d0-4680-9b3c-f00d97690dd9', 49.71, 36.89, 13.29);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ae31f6fd-8e3a-4cd4-80d5-57789d5e0a58', 'Perfil Avatar Maker', 'Perfil Avatar Maker', 'brand 86', TRUE, 39, 0.0, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ae31f6fd-8e3a-4cd4-80d5-57789d5e0a58', 51.94, 32.52, 55.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('95815c40-fd80-451f-a2c8-0694b876cb56', 'ORFOFE 3 Rolos Falsos Cortinas De Casamento Sombra De Projeto Cortina De Janela M Imitação De Pérola Embreagem Pés Talão Jóias Artesanato Persianas Corda Romana Re Guirlanda Pérolas', 'ORFOFE 3 Rolos Falsos Cortinas De Casamento Sombra De Projeto Cortina De Janela M Imitação De Pérola Embreagem Pés Talão Jóias Artesanato Persianas Corda Romana Re Guirlanda Pérolas', 'brand 26', TRUE, 46, 137.26, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Cortinas e Persianas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('95815c40-fd80-451f-a2c8-0694b876cb56', 84.51, 97.54, 97.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('437a4930-cd73-4914-9151-558edd9b2766', 'BCOATH Escada De Brinquedo Para Periquito Acessórios Para Gaiola De Pássaro Escada De Brinquedo Para Papagaio Escada De Treinamento De Pássaro Playset De Madeira Escada De Brinquedo Para', 'BCOATH Escada De Brinquedo Para Periquito Acessórios Para Gaiola De Pássaro Escada De Brinquedo Para Papagaio Escada De Treinamento De Pássaro Playset De Madeira Escada De Brinquedo Para', 'brand 67', TRUE, 68, 60.48, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('437a4930-cd73-4914-9151-558edd9b2766', 64.66, 42.74, 37.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('16e2f6ea-624f-4505-9d4e-8eec0ed3c65b', 'Kadimendium Drone Propeller Case, Dustproof Small Aircraft Propeller Fall Prevention Prevent Shaking with Sponge Washer for Outdoor Flight', 'Kadimendium Drone Propeller Case, Dustproof Small Aircraft Propeller Fall Prevention Prevent Shaking with Sponge Washer for Outdoor Flight', 'brand 79', TRUE, 17, 64.79, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Drones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('16e2f6ea-624f-4505-9d4e-8eec0ed3c65b', 84.28, 30.95, 67.8);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('640f9ebc-de09-47da-b922-2bbaf9886a45', 'Carrinho de bebê para recém-nascido e criança 3 em 1 carrinho de bebê dobrável de alta visão carrinho de luxo carrinho de bebê com molas de absorção de choque carrinho de bebê com bolsa de mamãe', 'Carrinho de bebê para recém-nascido e criança 3 em 1 carrinho de bebê dobrável de alta visão carrinho de luxo carrinho de bebê com molas de absorção de choque carrinho de bebê com bolsa de mamãe', 'brand 59', TRUE, 35, 4445.4, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Produtos de Passeio e Viagem para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('640f9ebc-de09-47da-b922-2bbaf9886a45', 36.34, 39.98, 76.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5adc0145-6c29-4ead-8bb0-f3d203037890', 'Suporte Base Para Tv Pé Tv Universal Madeira De 30 a 55 Polegadas Com Figura', 'Suporte Base Para Tv Pé Tv Universal Madeira De 30 a 55 Polegadas Com Figura', 'brand 40', TRUE, 71, 0.0, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Acessórios para Home Theater', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5adc0145-6c29-4ead-8bb0-f3d203037890', 77.94, 93.06, 70.78);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('438906e0-594d-489d-a573-dc2bb6c5d4ef', 'Caçarola de Alumínio Revestida em Cerâmica e Cabo de Silicone com Tampa de Vidro Granilite Preta', 'Caçarola de Alumínio Revestida em Cerâmica e Cabo de Silicone com Tampa de Vidro Granilite Preta', 'brand 38', TRUE, 17, 176.14, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Panelas e Utensílios para Cozinhar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('438906e0-594d-489d-a573-dc2bb6c5d4ef', 53.64, 97.2, 34.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6d520e34-ad51-4847-96c0-131829f7c1e0', 'NÓCA DO ACORDEON VOL. 2, 1973 (NACIONAL) [LP]', 'NÓCA DO ACORDEON VOL. 2, 1973 (NACIONAL) [LP]', 'brand 41', TRUE, 60, 0.0, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Música Nacional', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6d520e34-ad51-4847-96c0-131829f7c1e0', 89.09, 62.3, 51.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1670dd80-ce16-4e39-a476-6af4d31fd555', 'Kit Cuba R30 C/Válvula Metal 1'' (2,6cm) Bege', 'Kit Cuba R30 C/Válvula Metal 1'' (2,6cm) Bege', 'brand 80', TRUE, 80, 114.04, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Instalações de Cozinha e Banheiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1670dd80-ce16-4e39-a476-6af4d31fd555', 20.27, 52.26, 44.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5f7abdc7-4fff-462b-bd14-84c38a2214c2', 'Laptop para Jogos de 16 Polegadas, 2 Em 1 para para Core I7 Dual Screen Com Subtela de Toque HD de 14 Polegadas, para Laptop Com 11, Suporte para Placa Gráfica (plugue da ue)', 'Laptop para Jogos de 16 Polegadas, 2 Em 1 para para Core I7 Dual Screen Com Subtela de Toque HD de 14 Polegadas, para Laptop Com 11, Suporte para Placa Gráfica (plugue da ue)', 'brand 91', TRUE, 76, 0.0, '1faaa5e0-618a-4d14-b7fa-d017b0fee105', 'Notebooks', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5f7abdc7-4fff-462b-bd14-84c38a2214c2', 13.9, 97.91, 22.25);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('96ea47db-1f5a-441f-b551-57a2248888ec', 'Alameda de Cirino, 67, Outro, 44995980 Vieira das Pedras / PE', 618, 'casa', 'Sá', '70560-646', 'da Costa de da Conceição', 'Mato Grosso');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('96ea47db-1f5a-441f-b551-57a2248888ec', 173371779, 1054977466, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('dfc59c8a-a053-474d-8a17-67781059dc04', 'Sr. Matteo Dias', 'dbrito@example.com', '7#0@yQZda9', '+55 71 2575 6975', NULL, NOW(), NOW(), 'Sr.', '96ea47db-1f5a-441f-b551-57a2248888ec');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('44867808-65f8-4e34-8b8a-00ff73128c95', 'Parque Cirino, Inconfidência, 75741-386 Aragão / BA', 734, 'comercial', 'Nunes de Marques', '16806-185', 'Rezende', 'Rondônia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('44867808-65f8-4e34-8b8a-00ff73128c95', -747208001, 792186395, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('b58677cd-e410-4187-a5ae-e45d2773863e', 'Porto da Conceição Ltda.', '9:00-18:00', '+55 (041) 1464-6370', '63410278508', '44867808-65f8-4e34-8b8a-00ff73128c95');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('2c90d06e-4ccb-404b-a364-2f55c4e02295', 'dfc59c8a-a053-474d-8a17-67781059dc04', '65724319080', NOW(), 'b58677cd-e410-4187-a5ae-e45d2773863e');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ef207da9-4b4e-4d33-8ab8-85d6e4af8386', 'Monitor gráfico de 7 polegadas, exibição de extensão de PC HD 800:1 Taxa de contraste estático 60-75 Taxa de atualização 1024x600 Resolução para equipamentos(Versão de toque HD TN)', 'Monitor gráfico de 7 polegadas, exibição de extensão de PC HD 800:1 Taxa de contraste estático 60-75 Taxa de atualização 1024x600 Resolução para equipamentos(Versão de toque HD TN)', 'brand 15', TRUE, 89, 0.0, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Monitores de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ef207da9-4b4e-4d33-8ab8-85d6e4af8386', 78.43, 30.62, 28.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('971e685a-79e5-4d37-96d7-23145ebf3d9e', 'Ar-condicionado Springer Midea Airvolution 18.000 Btu/h Frio Branco 42affcg18s5/38tfcb18s5-220v', 'Ar-condicionado Springer Midea Airvolution 18.000 Btu/h Frio Branco 42affcg18s5/38tfcb18s5-220v', 'brand 51', TRUE, 40, 0.0, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Ar e Ventilação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('971e685a-79e5-4d37-96d7-23145ebf3d9e', 16.74, 55.01, 74.39);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f34fc3dc-07bd-45ef-8b4d-e97e95b4dd63', 'ERINGOGO 6 Peças Anel De Puxar Decoração Sakura Decoração Japonesa Decoração Cereja Acessórios Externos Automotivos Acessórios Kawaii Acessórios De Carro Para Adolescentes Anel De Alça De', 'ERINGOGO 6 Peças Anel De Puxar Decoração Sakura Decoração Japonesa Decoração Cereja Acessórios Externos Automotivos Acessórios Kawaii Acessórios De Carro Para Adolescentes Anel De Alça De', 'brand 45', TRUE, 43, 142.49, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Cuidados Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f34fc3dc-07bd-45ef-8b4d-e97e95b4dd63', 50.13, 93.49, 43.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1409c794-26a5-4068-b0de-a2bda9300fdf', 'Rogerio Skylab', 'Rogerio Skylab', 'brand 97', TRUE, 35, 32.8, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Filmes', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1409c794-26a5-4068-b0de-a2bda9300fdf', 33.55, 19.09, 27.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('411ca0f3-52b6-4c5a-ac6d-52689dbb56f7', 'Kit Mochila Escolar Rodinhas Feminina Menina Infantil Love Azul Chaveiro Lancheira Térmica Estojo Impermeável Yins', 'Kit Mochila Escolar Rodinhas Feminina Menina Infantil Love Azul Chaveiro Lancheira Térmica Estojo Impermeável Yins', 'brand 76', TRUE, 9, 320.68, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('411ca0f3-52b6-4c5a-ac6d-52689dbb56f7', 53.67, 86.07, 63.56);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4ac3dad7-f556-42a4-b0e2-b4a5ee47acab', 'Suporte de fone de ouvido, forte durável suave estável Estável ecologicamente correto suporte de fone de ouvido para estúdio para escritório para casa', 'Suporte de fone de ouvido, forte durável suave estável Estável ecologicamente correto suporte de fone de ouvido para estúdio para escritório para casa', 'brand 75', TRUE, 49, 0.0, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Fones de Ouvido', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4ac3dad7-f556-42a4-b0e2-b4a5ee47acab', 24.96, 73.3, 36.32);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cdf04c55-0d39-4d28-818f-c594e17f019b', 'Kadimendium Guia de corte circular para marcenaria, liga de aço, fácil operação, cortador circular, guia de aparar, prata para processamento de madeira', 'Kadimendium Guia de corte circular para marcenaria, liga de aço, fácil operação, cortador circular, guia de aparar, prata para processamento de madeira', 'brand 96', TRUE, 16, 0.0, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Acessórios de Ferramentas Elétricas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cdf04c55-0d39-4d28-818f-c594e17f019b', 50.1, 90.24, 21.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('79b34207-07b8-4384-a75e-51649385592c', 'Coifa de Parede Oster, Touch Control, Inox, 90cm, 110V, OCFA690', 'Coifa de Parede Oster, Touch Control, Inox, 90cm, 110V, OCFA690', 'brand 47', TRUE, 31, 1445.77, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Eletrodomésticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('79b34207-07b8-4384-a75e-51649385592c', 20.61, 12.49, 63.97);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5e8691b7-40e3-4a70-88a2-050cd0f121be', 'Cabo Carregador Magnético Para Apple Watch Series 1 2 3 4 5 6 7 8 e Ultra - Carregamento Rápido e Seguro', 'Cabo Carregador Magnético Para Apple Watch Series 1 2 3 4 5 6 7 8 e Ultra - Carregamento Rápido e Seguro', 'brand 92', TRUE, 26, 69.99, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5e8691b7-40e3-4a70-88a2-050cd0f121be', 64.73, 51.38, 31.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d200e53b-963c-4ce7-9464-869b1b968c47', 'Chaveiro emborrachado cute Droide R2d2', 'Chaveiro emborrachado cute Droide R2d2', 'brand 33', TRUE, 20, 14.9, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d200e53b-963c-4ce7-9464-869b1b968c47', 22.9, 23.83, 19.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f4983959-df8d-4c11-a0cf-9d390743dd67', 'Aprenda em casa Matemática: Tabuada', 'Aprenda em casa Matemática: Tabuada', 'brand 33', TRUE, 100, 2.67, 'b58677cd-e410-4187-a5ae-e45d2773863e', 'Livros Infantis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f4983959-df8d-4c11-a0cf-9d390743dd67', 39.68, 58.57, 94.92);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('cee377bc-f918-4f5d-b38f-66c6d798c5fa', 'Estrada de Costela, 78, Aarão Reis, 02608540 Azevedo da Praia / GO', 222, 'casa', 'Borges', '70039-967', 'da Costa do Sul', 'Rio Grande do Norte');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('cee377bc-f918-4f5d-b38f-66c6d798c5fa', 636471957, 1078608281, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('3d6b9d47-e745-43bd-88d1-79fb1a729e09', 'Srta. Sara Andrade', 'bento96@example.net', 'W9e4ORfk)m', '21 9277-8847', NULL, NOW(), NOW(), 'Srt', 'cee377bc-f918-4f5d-b38f-66c6d798c5fa');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('77940984-a73b-495f-a6be-588eb58093ea', 'Morro Caldeira, 45, Inconfidência, 12145-377 Machado do Oeste / PA', 44, 'comercial', 'Sampaio', '74660-745', 'da Luz', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('77940984-a73b-495f-a6be-588eb58093ea', -776976336, -1770612112, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('20e0b062-d52c-4a77-bd67-51e668c325f4', 'da Rosa Ltda.', '9:00-18:00', '31 6440-4417', '25764938074', '77940984-a73b-495f-a6be-588eb58093ea');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('e5e71ad0-436d-4c42-b328-155bb039ff86', '3d6b9d47-e745-43bd-88d1-79fb1a729e09', '71348596228', NOW(), '20e0b062-d52c-4a77-bd67-51e668c325f4');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('78933949-d68b-40b7-b6c5-93017a17fb16', 'Pulseira Milanese Compatível Com Samsung Galaxy Watch 3 45mm - (C7COMPANY)', 'Pulseira Milanese Compatível Com Samsung Galaxy Watch 3 45mm - (C7COMPANY)', 'brand 8', TRUE, 65, 57.9, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Wearables e Tecnologia Vestível', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('78933949-d68b-40b7-b6c5-93017a17fb16', 96.39, 73.35, 14.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b7782920-2817-40d4-951d-e6536abcbdeb', 'Planetary Spacecraft Buscando Humanos Cortador de unhas de dedo Tesoura Cortador de aço inoxidável', 'Planetary Spacecraft Buscando Humanos Cortador de unhas de dedo Tesoura Cortador de aço inoxidável', 'brand 80', TRUE, 8, 154.64, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b7782920-2817-40d4-951d-e6536abcbdeb', 31.71, 61.01, 76.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ee0c6095-e4f0-4d5e-baca-6dd440509a06', 'Ecos da alma brasileira #02', 'Ecos da alma brasileira #02', 'brand 1', TRUE, 21, 0.0, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ee0c6095-e4f0-4d5e-baca-6dd440509a06', 87.73, 67.14, 96.29);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bfd48c52-818d-4909-84ad-27469b08ea30', '1 Peça De Óculos De Sol Sem Aro Óculos Engraçados Óculos De Sol Retrô Óculos De Fogo Sem Armação Óculos Elegantes Para Mulheres Óculos De Sol Para Crianças Óculos', '1 Peça De Óculos De Sol Sem Aro Óculos Engraçados Óculos De Sol Retrô Óculos De Fogo Sem Armação Óculos Elegantes Para Mulheres Óculos De Sol Para Crianças Óculos', 'brand 49', TRUE, 60, 42.45, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bfd48c52-818d-4909-84ad-27469b08ea30', 44.19, 90.72, 56.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('93b3e9a2-f37e-4f99-9465-b36723f78904', 'Conjunto de brincos de argola de prata esterlina 925 de 1,5 x 40 mm de espessura, redondo, joias finas para mulheres, presentes para ela, Prata esterlina Cristal', 'Conjunto de brincos de argola de prata esterlina 925 de 1,5 x 40 mm de espessura, redondo, joias finas para mulheres, presentes para ela, Prata esterlina Cristal', 'brand 97', TRUE, 16, 670.98, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('93b3e9a2-f37e-4f99-9465-b36723f78904', 87.32, 17.2, 23.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5b2b7f8a-73c2-495b-9c00-c77f95d69dda', 'Kit Capa Capinha Para Xiaomi Redmi Note 12s Tela de 6.43 Case Air Anti Impacto Transparente + Película De Vidro Temperado 3d Full Cover (Transparente + Vidro 3d)', 'Kit Capa Capinha Para Xiaomi Redmi Note 12s Tela de 6.43 Case Air Anti Impacto Transparente + Película De Vidro Temperado 3d Full Cover (Transparente + Vidro 3d)', 'brand 48', TRUE, 43, 29.99, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5b2b7f8a-73c2-495b-9c00-c77f95d69dda', 84.62, 25.41, 13.97);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4037b55c-088e-4231-969c-f435c779b3ef', 'Nova mochila de hidratação - UltRun S Pack Evo 15 New - COMPRESSPORT', 'Nova mochila de hidratação - UltRun S Pack Evo 15 New - COMPRESSPORT', 'brand 98', TRUE, 51, 1449.9, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4037b55c-088e-4231-969c-f435c779b3ef', 43.88, 27.4, 83.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('918f6669-1029-4e52-8e0a-dddef8a16ede', 'Bala Mastigável Hot Wheels Sortida 600g - Riclan', 'Bala Mastigável Hot Wheels Sortida 600g - Riclan', 'brand 49', TRUE, 19, 12.99, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Lanches e Doces', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('918f6669-1029-4e52-8e0a-dddef8a16ede', 94.31, 58.02, 28.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1a3d3ee1-511f-4e96-b262-94d14f2f2ef1', 'Dry Rub 400g', 'Dry Rub 400g', 'brand 19', TRUE, 47, 48.9, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Alimentos e Bebidas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1a3d3ee1-511f-4e96-b262-94d14f2f2ef1', 73.5, 95.52, 27.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a93bd892-74c1-4ca3-8421-1c1639ace9e7', 'Skin Xbox Series X Adesivo - Modelo 093', 'Skin Xbox Series X Adesivo - Modelo 093', 'brand 20', TRUE, 53, 0.0, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Xbox Series X e S, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a93bd892-74c1-4ca3-8421-1c1639ace9e7', 24.68, 66.65, 89.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e630cdd7-a206-4e0e-ab99-ca716278c557', 'Shampoo Professional Clean Baby Sweet Friend - 5 Litros', 'Shampoo Professional Clean Baby Sweet Friend - 5 Litros', 'brand 17', TRUE, 43, 201.3, '20e0b062-d52c-4a77-bd67-51e668c325f4', 'Produtos para Cães', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e630cdd7-a206-4e0e-ab99-ca716278c557', 65.94, 55.71, 83.93);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('436e19fa-ec2a-418d-bd7c-f8e10ae4e5c8', 'Loteamento de Rios, 11, Ribeiro De Abreu, 03699081 Macedo de Azevedo / AC', 599, 'casa', 'Abreu Verde', '22040-868', 'da Mata', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('436e19fa-ec2a-418d-bd7c-f8e10ae4e5c8', -676856172, -1607495008, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('79ec9a2b-0b4f-474a-813a-59e01242e71f', 'Ester da Rocha', 'gomesdavi-miguel@example.org', 'q*qg7JiVY^', '0800-903-2570', NULL, NOW(), NOW(), 'Est', '436e19fa-ec2a-418d-bd7c-f8e10ae4e5c8');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('51323a59-7c1c-4500-8db8-ce1ad1624c74', 'Jardim de Fogaça, 583, Serra, 00068874 da Paz / PR', 1, 'comercial', 'Leão', '21158-333', 'Moraes da Serra', 'Minas Gerais');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('51323a59-7c1c-4500-8db8-ce1ad1624c74', -784030893, 1162435054, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('a491d409-e715-47ca-82c5-0e795e84675a', 'Macedo Oliveira e Filhos', '9:00-18:00', '81 4230-7412', '73026985465', '51323a59-7c1c-4500-8db8-ce1ad1624c74');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('5cbc19a3-af9e-4e0e-b60d-b2eb29698b63', '79ec9a2b-0b4f-474a-813a-59e01242e71f', '84501736208', NOW(), 'a491d409-e715-47ca-82c5-0e795e84675a');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3800293b-17a2-4034-a9c8-dcfe347b89b6', 'JAPI 1196AZ Torneira para Lavatorio Mesa Media Arezzo, 1/4 Volta', 'JAPI 1196AZ Torneira para Lavatorio Mesa Media Arezzo, 1/4 Volta', 'brand 41', TRUE, 77, 419.46, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Instalações de Cozinha e Banheiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3800293b-17a2-4034-a9c8-dcfe347b89b6', 10.33, 44.52, 89.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5dae06da-e126-4a11-83fe-d261e2789f44', 'UKCOCO Controlador Suporte Moai Suporte De Mesa Suporte De Exibição Alça De Carregamento Controlador De Tablet Suporte Para Tablet Mesa Doca Para Celular Suporte Para Selfie Suporte Para', 'UKCOCO Controlador Suporte Moai Suporte De Mesa Suporte De Exibição Alça De Carregamento Controlador De Tablet Suporte Para Tablet Mesa Doca Para Celular Suporte Para Selfie Suporte Para', 'brand 89', TRUE, 42, 0.0, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Tablets', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5dae06da-e126-4a11-83fe-d261e2789f44', 54.84, 51.38, 97.21);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c688cbe0-399b-4605-a8c9-bf4ba08f7341', 'AC DC 5V 6V 8V 9V 10V 12V 13V 14V 15V 24V Adaptador de fonte de alimentação 1A 2A 3A 5A 6A 8A 220V para 12V Carregador universal para driver LED (Cor: 15V, Tamanho: 2_10A)', 'AC DC 5V 6V 8V 9V 10V 12V 13V 14V 15V 24V Adaptador de fonte de alimentação 1A 2A 3A 5A 6A 8A 220V para 12V Carregador universal para driver LED (Cor: 15V, Tamanho: 2_10A)', 'brand 86', TRUE, 32, 271.02, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Peças e Componentes de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c688cbe0-399b-4605-a8c9-bf4ba08f7341', 95.69, 77.01, 69.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f258b0d5-5b73-4579-9ffc-2424ff63d76a', 'Gin Tanqueray Gift Pack com 4 unidades de 50ml', 'Gin Tanqueray Gift Pack com 4 unidades de 50ml', 'brand 18', TRUE, 97, 84.9, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Gin', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f258b0d5-5b73-4579-9ffc-2424ff63d76a', 52.69, 22.97, 24.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dbc70f99-9316-4be9-94f7-71981694c7d4', 'Gourmet Settings Conjunto de talheres de aço inoxidável polido coleção Willow de 20 peças – Serviço para 4 – Talheres de cozinha faca/garfo/colheres, pode ser lavado na lava-louças', 'Gourmet Settings Conjunto de talheres de aço inoxidável polido coleção Willow de 20 peças – Serviço para 4 – Talheres de cozinha faca/garfo/colheres, pode ser lavado na lava-louças', 'brand 35', TRUE, 23, 541.2, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Talheres', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dbc70f99-9316-4be9-94f7-71981694c7d4', 45.87, 66.54, 56.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fd607aa0-8e2e-4277-8b92-5c9cd80476f4', '2 Pçs Faixa De Cabeça Faixa De Mulher Adereços Fotográficos Meninas Acessórios De Cabelo Faixa De Cabeça Boêmia Faixa De Cabeça Indiana Acessório De Cabeça Festival Colorido Cocar', '2 Pçs Faixa De Cabeça Faixa De Mulher Adereços Fotográficos Meninas Acessórios De Cabelo Faixa De Cabeça Boêmia Faixa De Cabeça Indiana Acessório De Cabeça Festival Colorido Cocar', 'brand 47', TRUE, 57, 74.95, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fd607aa0-8e2e-4277-8b92-5c9cd80476f4', 54.24, 96.51, 92.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eb342cbe-5ba6-44f7-8a7c-edb21a54c8e5', 'Caderno de ilustração de crânio colorido floral circular folha solta diário recarregável papelaria diário', 'Caderno de ilustração de crânio colorido floral circular folha solta diário recarregável papelaria diário', 'brand 48', TRUE, 67, 0.0, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Cadernos, Blocos e Diários', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eb342cbe-5ba6-44f7-8a7c-edb21a54c8e5', 88.57, 96.08, 59.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1cd56843-9385-4324-a8ef-3afcf5d3ce5a', 'Testador Brix, refratômetro portátil para suco de vinho e cerveja, 1.000-1.120 para medir o Brix e a gravidade específica para teste de conteúdo de açúcar', 'Testador Brix, refratômetro portátil para suco de vinho e cerveja, 1.000-1.120 para medir o Brix e a gravidade específica para teste de conteúdo de açúcar', 'brand 95', TRUE, 40, 93.96, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Ferramentas de Medição', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1cd56843-9385-4324-a8ef-3afcf5d3ce5a', 53.14, 53.08, 28.72);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ecc40f8d-25ed-4e8f-a1c7-565017015509', 'Cesto De Roupas Fibra Sintética 38x28x57 Branco', 'Cesto De Roupas Fibra Sintética 38x28x57 Branco', 'brand 47', TRUE, 85, 189.99, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Organização e Armazenamento para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ecc40f8d-25ed-4e8f-a1c7-565017015509', 88.68, 74.81, 92.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dc43b585-3afe-49ee-b206-90699a9baac0', 'Produto Para Bebe Kit Alimentacao, Lolly, Azul', 'Produto Para Bebe Kit Alimentacao, Lolly, Azul', 'brand 76', TRUE, 7, 41.9, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dc43b585-3afe-49ee-b206-90699a9baac0', 90.69, 26.15, 24.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('165d1cec-30d0-4137-a935-80899de12a03', 'ORFOFE 10 Conjuntos De Brinquedos Sopradores Kidcraft Playset Mini Brinquedos Infantis Quebra-Cabeças Soprando Dardos Tubo De Dardos Infantis Conjunto De Plástico Molde De Maçarico', 'ORFOFE 10 Conjuntos De Brinquedos Sopradores Kidcraft Playset Mini Brinquedos Infantis Quebra-Cabeças Soprando Dardos Tubo De Dardos Infantis Conjunto De Plástico Molde De Maçarico', 'brand 76', TRUE, 64, 77.79, 'a491d409-e715-47ca-82c5-0e795e84675a', 'Brinquedos de Construir e de Montar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('165d1cec-30d0-4137-a935-80899de12a03', 42.58, 43.54, 92.21);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('9053a94e-1f8c-4daf-a919-4f04d8e496ec', 'Morro João Lucas Mendonça, 323, Bonsucesso, 78202-692 Mendes de da Mota / PI', 318, 'casa', 'Alves', '77952-324', 'Rocha', 'Maranhão');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('9053a94e-1f8c-4daf-a919-4f04d8e496ec', 745296623, 467499736, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('34427dc8-acb1-4bc7-bfc6-47edd2c7a5b8', 'Maria Júlia Caldeira', 'sabrina33@example.net', 'jvlW0XSut%', '+55 (071) 0891 0976', NULL, NOW(), NOW(), 'Mar', '9053a94e-1f8c-4daf-a919-4f04d8e496ec');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f2b3efd5-02e5-4ab7-84f2-a9e7cb9a3ce1', 'Trevo de da Mata, 31, Cinquentenário, 98391-066 Costela do Norte / SP', 312, 'comercial', 'Rios', '36898-472', 'da Mota Paulista', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f2b3efd5-02e5-4ab7-84f2-a9e7cb9a3ce1', -336700010, 644450326, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Câmara', '9:00-18:00', '+55 (051) 6948 8502', '58293406151', 'f2b3efd5-02e5-4ab7-84f2-a9e7cb9a3ce1');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('f41f86e0-e72f-427d-9376-1cdcb45c4bf8', '34427dc8-acb1-4bc7-bfc6-47edd2c7a5b8', '95014763839', NOW(), '23059d20-c593-4bdf-b7ea-0935f0b05fb6');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('51930591-804b-4957-b7a8-94080fe622bf', 'Acessórios de escavadeira, resistência ao desgaste padrão, 4 peças, válvula de controle de joystick empurrador, longa vida útil, boa vedação para SH120', 'Acessórios de escavadeira, resistência ao desgaste padrão, 4 peças, válvula de controle de joystick empurrador, longa vida útil, boa vedação para SH120', 'brand 24', TRUE, 61, 165.99, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Wearables e Tecnologia Vestível', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('51930591-804b-4957-b7a8-94080fe622bf', 26.29, 86.66, 55.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('59234d02-4691-43f2-af23-f2c53a7717af', 'Vibrador e Sugador G-Vibe 10 Intensidades Controle Remoto Flexível Toque Macio e Aveludado Recarregável', 'Vibrador e Sugador G-Vibe 10 Intensidades Controle Remoto Flexível Toque Macio e Aveludado Recarregável', 'brand 25', TRUE, 11, 219.0, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('59234d02-4691-43f2-af23-f2c53a7717af', 39.63, 54.63, 87.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4234bb47-a2b2-4755-a270-75ebb7a1da03', 'Wemay 30ml Colágeno Essência Hidratante Anti-oxidante Anti-envelhecimento Anti-rugas Reparação Pele Faical Essência Firmadora', 'Wemay 30ml Colágeno Essência Hidratante Anti-oxidante Anti-envelhecimento Anti-rugas Reparação Pele Faical Essência Firmadora', 'brand 20', TRUE, 47, 35.84, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Produtos para Cuidados com o Rosto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4234bb47-a2b2-4755-a270-75ebb7a1da03', 61.08, 57.13, 52.73);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('84154c7b-0253-409e-be39-19dda21553f1', 'Alça de bolsa de de couro com 2 cm de largura Acessórios para alça de bolsa à mão de substituição para bolsas crossbody', 'Alça de bolsa de de couro com 2 cm de largura Acessórios para alça de bolsa à mão de substituição para bolsas crossbody', 'brand 17', TRUE, 76, 38.09, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('84154c7b-0253-409e-be39-19dda21553f1', 60.0, 16.53, 36.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('58106851-c571-468c-acf6-1f98d6801816', 'Hey, Juliet!', 'Hey, Juliet!', 'brand 97', TRUE, 57, 0.0, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'eBooks Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('58106851-c571-468c-acf6-1f98d6801816', 68.51, 94.16, 24.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('14bbd026-072b-4015-9d42-47fc0f04b550', 'YARNOW Conector De Válvula De Fechamento De 1/4 De Polegada Conector De Mangueira De Latão Adaptador De Latão Juntas Esféricas Mangueira De Pressão Conector De Desligamento De', 'YARNOW Conector De Válvula De Fechamento De 1/4 De Polegada Conector De Mangueira De Latão Adaptador De Latão Juntas Esféricas Mangueira De Pressão Conector De Desligamento De', 'brand 7', TRUE, 41, 67.97, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('14bbd026-072b-4015-9d42-47fc0f04b550', 13.97, 24.49, 61.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('70d54a88-a478-40e4-b947-510e3fd19627', 'POP! MARVEL: AVENGERS GAME - IRON MAN (STARK TECH S) - REF: #626', 'POP! MARVEL: AVENGERS GAME - IRON MAN (STARK TECH S) - REF: #626', 'brand 61', TRUE, 60, 135.65, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Colecionáveis e Miniaturas para Hobby', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('70d54a88-a478-40e4-b947-510e3fd19627', 55.78, 61.82, 35.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0399e3ba-1cac-492b-8b0b-02628ff84272', 'UGPLM 3D British Titanic Ship DIY Assemble Paper for Paper Collectables', 'UGPLM 3D British Titanic Ship DIY Assemble Paper for Paper Collectables', 'brand 7', TRUE, 25, 82.99, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Colecionáveis e Miniaturas para Hobby', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0399e3ba-1cac-492b-8b0b-02628ff84272', 55.07, 74.12, 70.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('96001b9e-9a88-4464-bc1f-46d7c577f8f3', 'Caixa de Aranha Brinquedo Assustador,Assustador Prank Prop Rubber Spider - Surpresa Prop Trick Toys para festa de aniversário, presente de formatura, reunião, dia da mentira, dia das bruxas Iytefeki', 'Caixa de Aranha Brinquedo Assustador,Assustador Prank Prop Rubber Spider - Surpresa Prop Trick Toys para festa de aniversário, presente de formatura, reunião, dia da mentira, dia das bruxas Iytefeki', 'brand 84', TRUE, 34, 47.19, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Brinquedos de Construir e de Montar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('96001b9e-9a88-4464-bc1f-46d7c577f8f3', 82.08, 95.42, 50.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7b30ffe5-c7b4-497e-97f2-1d21a488f924', 'Cranberry, 60 Caps de 500mg, Apisnutri', 'Cranberry, 60 Caps de 500mg, Apisnutri', 'brand 72', TRUE, 66, 35.0, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Vitaminas, Minerais e Suplementos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7b30ffe5-c7b4-497e-97f2-1d21a488f924', 59.1, 66.79, 10.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f180a23e-808b-4daa-8490-45a494196f6b', 'Pinguim Recheado,Almofada Fofo Pingüim - pelúcia animal pelúcia boneca pelúcia presente para crianças meninas meninos namoradas crianças Stenua', 'Pinguim Recheado,Almofada Fofo Pingüim - pelúcia animal pelúcia boneca pelúcia presente para crianças meninas meninos namoradas crianças Stenua', 'brand 68', TRUE, 31, 0.0, '23059d20-c593-4bdf-b7ea-0935f0b05fb6', 'Pelúcias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f180a23e-808b-4daa-8490-45a494196f6b', 97.53, 38.67, 57.25);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('94d2c1ba-bd66-439e-9749-6e1d41cd5fea', 'Chácara de Sampaio, 15, Suzana, 77532644 Aparecida do Norte / PR', 836, 'casa', 'Martins', '81110-333', 'Costela Verde', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('94d2c1ba-bd66-439e-9749-6e1d41cd5fea', 299040565, -759742597, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('bad70d8a-a4eb-4cba-9891-d2adeaf900ef', 'Matheus Cardoso', 'cda-rocha@example.net', '*175dBds0+', '+55 71 0910 0502', NULL, NOW(), NOW(), 'Mat', '94d2c1ba-bd66-439e-9749-6e1d41cd5fea');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f64bee34-7d0a-4191-a1fd-4012daeceee3', 'Quadra da Paz, 71, Outro, 67573369 Caldeira de Goiás / BA', 604, 'comercial', 'Cavalcanti', '63766-895', 'Sá', 'Maranhão');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f64bee34-7d0a-4191-a1fd-4012daeceee3', -176199035, 150907087, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('d879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Gonçalves - ME', '9:00-18:00', '+55 61 1390-5156', '63289750159', 'f64bee34-7d0a-4191-a1fd-4012daeceee3');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('ac33cd77-e53d-4c48-9990-e797f862ad18', 'bad70d8a-a4eb-4cba-9891-d2adeaf900ef', '79560328140', NOW(), 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d6f7d1e8-c83f-437b-951f-a9ef4c2021cb', 'Amosfun 3 Pçs Cocar De Natal Cintillos De Navidad Acessórios De Cabelo Para Meninas Arcos De Cabelo Para Bebês Acessórios Para Cabelo De Bebê Para Meninas Faixa De Natal Infantil Faixa De', 'Amosfun 3 Pçs Cocar De Natal Cintillos De Navidad Acessórios De Cabelo Para Meninas Arcos De Cabelo Para Bebês Acessórios Para Cabelo De Bebê Para Meninas Faixa De Natal Infantil Faixa De', 'brand 40', TRUE, 84, 56.13, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d6f7d1e8-c83f-437b-951f-a9ef4c2021cb', 67.4, 60.08, 29.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6c52c4af-6f7e-44ef-87e0-dfe807d4712e', 'Laptops, 2.4G 5G WIFI Experiência Visual Confortável HD Laptop 6GB RAM 1TB 14 Polegadas 2K Tela IPS Com Câmera para Windows 11 for Work (6+1 TB plugue americano)', 'Laptops, 2.4G 5G WIFI Experiência Visual Confortável HD Laptop 6GB RAM 1TB 14 Polegadas 2K Tela IPS Com Câmera para Windows 11 for Work (6+1 TB plugue americano)', 'brand 88', TRUE, 22, 0.0, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Notebooks', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6c52c4af-6f7e-44ef-87e0-dfe807d4712e', 50.04, 75.35, 22.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('69c9c9de-c521-4df7-9ddb-447c712dd6dd', 'mochila antifurto, mochila para computador armazenamento conveniente à prova d'água multifuncional para armazenar laptop de 17 polegadas', 'mochila antifurto, mochila para computador armazenamento conveniente à prova d'água multifuncional para armazenar laptop de 17 polegadas', 'brand 48', TRUE, 13, 237.65, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('69c9c9de-c521-4df7-9ddb-447c712dd6dd', 56.55, 78.75, 40.33);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('01631fe6-0030-4f29-8c2f-8cf63975b0af', 'Bolsa feminina de cristal diamante com letras brilhantes, grande bolsa de armazenamento de embreagem noturna', 'Bolsa feminina de cristal diamante com letras brilhantes, grande bolsa de armazenamento de embreagem noturna', 'brand 28', TRUE, 57, 171.92, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Bolsas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('01631fe6-0030-4f29-8c2f-8cf63975b0af', 21.12, 13.87, 32.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e1ed12c8-92ab-4029-8fef-e2b2a743638e', 'Toddmomy 1 Conjunto 2 Peças Garfo Colher Utensílios De Alimentação Para Crianças Talheres Utensílios De Silicone Acessórios Para Crianças Acessórios Para Crianças Talheres De Treinamento', 'Toddmomy 1 Conjunto 2 Peças Garfo Colher Utensílios De Alimentação Para Crianças Talheres Utensílios De Silicone Acessórios Para Crianças Acessórios Para Crianças Talheres De Treinamento', 'brand 78', TRUE, 80, 0.0, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Calculadoras', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e1ed12c8-92ab-4029-8fef-e2b2a743638e', 54.6, 21.06, 79.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('730420c6-a219-4ac3-beff-968e0a727203', 'JWTPRO Pulseira + Capa para Apple Watch Strap 8 Ultra 49 mm iWatch Series 8 Ultra 49mm Sports Wrist Pulseira de silicone transparente', 'JWTPRO Pulseira + Capa para Apple Watch Strap 8 Ultra 49 mm iWatch Series 8 Ultra 49mm Sports Wrist Pulseira de silicone transparente', 'brand 78', TRUE, 4, 95.53, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Wearables e Tecnologia Vestível', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('730420c6-a219-4ac3-beff-968e0a727203', 93.29, 18.46, 47.13);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0fe70b9-958e-4b25-9e3f-0bda6ce8ab28', 'Bolsa de mão feminina Dinosaur Stars Bolsa de trabalho de grande capacidade, bolsa de ombro, Estrelas de dinossauro', 'Bolsa de mão feminina Dinosaur Stars Bolsa de trabalho de grande capacidade, bolsa de ombro, Estrelas de dinossauro', 'brand 97', TRUE, 50, 99.94, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Bolsas de Mão e Ombro Femininas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0fe70b9-958e-4b25-9e3f-0bda6ce8ab28', 32.74, 66.93, 79.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9e4d481a-386d-4cec-abbc-51d319ebfee4', 'Sapatênis Infantil Masculino Microfibra Nobucado Preto Pinhão Pegada 370418-06', 'Sapatênis Infantil Masculino Microfibra Nobucado Preto Pinhão Pegada 370418-06', 'brand 6', TRUE, 50, 195.49, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9e4d481a-386d-4cec-abbc-51d319ebfee4', 73.2, 91.31, 67.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b7f930cd-b09f-4dad-bc71-345f43660bf9', 'Aspirador Automotivo De Pó Sem Fio Mini Portátil De Carro Proffisional Cleaner Potente Sem Saco Soprador Bivolt Usb Recarregável Vassoura kit de acessórios automotivos Premium BEBIDEX', 'Aspirador Automotivo De Pó Sem Fio Mini Portátil De Carro Proffisional Cleaner Potente Sem Saco Soprador Bivolt Usb Recarregável Vassoura kit de acessórios automotivos Premium BEBIDEX', 'brand 49', TRUE, 83, 53.9, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Automotivo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b7f930cd-b09f-4dad-bc71-345f43660bf9', 46.98, 67.99, 21.47);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3ed5ae65-b67f-423e-8d71-0329b861ea72', 'Leefasy Caixa de Ferramentas de Metal Resistente Portátil Caixa de Ferramentas para Oficina em Casa', 'Leefasy Caixa de Ferramentas de Metal Resistente Portátil Caixa de Ferramentas para Oficina em Casa', 'brand 82', TRUE, 67, 147.99, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'Organizadores de Ferramentas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3ed5ae65-b67f-423e-8d71-0329b861ea72', 23.41, 16.13, 94.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('aebc5764-5ed0-432f-a27e-c698f25ddcec', 'Return [Disco de Vinil]', 'Return [Disco de Vinil]', 'brand 4', TRUE, 78, 179.53, 'd879c6b7-9c7a-4c7d-9e93-deb15e1860b7', 'CD e Vinil', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('aebc5764-5ed0-432f-a27e-c698f25ddcec', 53.79, 27.35, 85.15);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('64817be0-0d0b-4a44-93fe-802895c0e17a', 'Via da Paz, 83, Leticia, 28129315 Marques de Borges / AL', 174, 'casa', 'Cardoso', '63857-316', 'Cunha', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('64817be0-0d0b-4a44-93fe-802895c0e17a', -777195183, 717138983, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('ea0d2e8f-1e3a-4ca4-9e43-ee35e57cfbb6', 'Srta. Alícia Vieira', 'vinicius95@example.com', '@8J$+vfWgZ', '+55 (011) 7936 6451', NULL, NOW(), NOW(), 'Srt', '64817be0-0d0b-4a44-93fe-802895c0e17a');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c1b1ff0a-ae20-4606-aa5f-0780eeaadd18', 'Alameda Lívia Sampaio, 30, Braúnas, 54509159 da Cruz / PE', 574, 'comercial', 'Martins', '41416-692', 'Costa Alegre', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c1b1ff0a-ae20-4606-aa5f-0780eeaadd18', -741925917, 1578086303, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Costela', '9:00-18:00', '(061) 9589-0763', '80479216304', 'c1b1ff0a-ae20-4606-aa5f-0780eeaadd18');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('0bd6cfba-6657-4697-88a2-bc71c8a583ad', 'ea0d2e8f-1e3a-4ca4-9e43-ee35e57cfbb6', '83205691415', NOW(), 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('49d507b2-ee45-4ac5-932a-8c48715a2a45', 'DDDHL Gravata masculina com calça moletom com capuz plus lazer inverno lã com capuz pelúcia mulheres ternos suéteres e calças suéter O, Preto, XG', 'DDDHL Gravata masculina com calça moletom com capuz plus lazer inverno lã com capuz pelúcia mulheres ternos suéteres e calças suéter O, Preto, XG', 'brand 93', TRUE, 75, 142.77, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Luta e Artes Marciais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('49d507b2-ee45-4ac5-932a-8c48715a2a45', 88.6, 48.62, 98.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b9452915-8617-483e-9328-78208747c3ad', 'Capa Peniana Veias Salientes Com Cinta Elástica Ca05 capa peniana extensora em ultra macio e grossa capa peniana extensora em ultra macio e grossaCapas para Pênis', 'Capa Peniana Veias Salientes Com Cinta Elástica Ca05 capa peniana extensora em ultra macio e grossa capa peniana extensora em ultra macio e grossaCapas para Pênis', 'brand 45', TRUE, 70, 63.97, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b9452915-8617-483e-9328-78208747c3ad', 53.14, 59.78, 84.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9b903d1c-2a1b-4970-84cf-320bc69f8984', 'Suporte para coxa frango - Rack Coxas Frango em Aço Inoxidável,Rack portátil para pernas frango com pingadeira, suporte assadeimetal lavável na lava-louças Shrigm', 'Suporte para coxa frango - Rack Coxas Frango em Aço Inoxidável,Rack portátil para pernas frango com pingadeira, suporte assadeimetal lavável na lava-louças Shrigm', 'brand 95', TRUE, 25, 0.0, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9b903d1c-2a1b-4970-84cf-320bc69f8984', 11.09, 49.93, 19.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fb805c00-9636-4528-9480-4e62b6f82951', 'Generic Ferramentas faciais gua sha aquecidas elétricas ferramenta de raspagem corporal massagem facial placa de raspagem, rosa', 'Generic Ferramentas faciais gua sha aquecidas elétricas ferramenta de raspagem corporal massagem facial placa de raspagem, rosa', 'brand 14', TRUE, 43, 151.99, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fb805c00-9636-4528-9480-4e62b6f82951', 73.61, 69.74, 13.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a4784c5b-a5d8-459b-9273-3f02cacf6130', 'Relógios De Enfermagem Para Enfermeiras Relógio Fob Pendurado 2 Pçs Relógio De Lapela Broche Pin-On Design De Borboleta Enfermeiros Assistem', 'Relógios De Enfermagem Para Enfermeiras Relógio Fob Pendurado 2 Pçs Relógio De Lapela Broche Pin-On Design De Borboleta Enfermeiros Assistem', 'brand 6', TRUE, 8, 58.75, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a4784c5b-a5d8-459b-9273-3f02cacf6130', 12.92, 13.41, 71.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7174ce46-aba2-47d9-9f08-93f502b61eaa', 'Carregador por indu��o Esta��o de carregamento sem fio, 3 em 1 carregador sem fio compat�vel para iPhone 14/13/12/11/Pro/XS, Airpods 3/2/1/Pro, iWath S�ries 7/6/5/4/3 e Telefones Samsung, iWill', 'Carregador por indu��o Esta��o de carregamento sem fio, 3 em 1 carregador sem fio compat�vel para iPhone 14/13/12/11/Pro/XS, Airpods 3/2/1/Pro, iWath S�ries 7/6/5/4/3 e Telefones Samsung, iWill', 'brand 52', TRUE, 35, 279.9, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7174ce46-aba2-47d9-9f08-93f502b61eaa', 52.2, 35.33, 28.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3df7e794-2f2c-465a-bd84-1e56c8e4d31e', 'Sabonete Cremoso para as Mãos Erva Doce - 250ml', 'Sabonete Cremoso para as Mãos Erva Doce - 250ml', 'brand 9', TRUE, 44, 49.9, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3df7e794-2f2c-465a-bd84-1e56c8e4d31e', 57.74, 20.13, 13.3);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e536a215-ead3-471b-9c9f-e896a7019d31', 'ibasenice Os Carros Carcan Organizador Traseiro Automático Organizador De Carro Encosto De Cabeça Armazenamento De Ventilação De Carro Organizador De Painel De Carro Organizador De', 'ibasenice Os Carros Carcan Organizador Traseiro Automático Organizador De Carro Encosto De Cabeça Armazenamento De Ventilação De Carro Organizador De Painel De Carro Organizador De', 'brand 60', TRUE, 93, 74.19, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Cuidados Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e536a215-ead3-471b-9c9f-e896a7019d31', 87.86, 73.38, 42.97);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2e18cbb0-b82e-43b6-b9a7-59864a858405', 'Chuteira Futsal Topper Cup Vi Preto/prata Tp04380001 44', 'Chuteira Futsal Topper Cup Vi Preto/prata Tp04380001 44', 'brand 13', TRUE, 19, 149.8, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Roupas, Calçados e Joias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2e18cbb0-b82e-43b6-b9a7-59864a858405', 79.03, 97.13, 41.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d25b64d0-3959-44ed-89c6-7e869a7eeeec', 'Óculos de Titânio Armação Feminina Lentes Fotocromáticas Rosa Roxo cor Oculos Miopia -3.0 Oculos Femininos 8301', 'Óculos de Titânio Armação Feminina Lentes Fotocromáticas Rosa Roxo cor Oculos Miopia -3.0 Oculos Femininos 8301', 'brand 86', TRUE, 71, 219.99, 'c2eb32aa-4ac8-4c65-bccd-d2b79a7f2765', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d25b64d0-3959-44ed-89c6-7e869a7eeeec', 11.83, 52.49, 97.17);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('add7546f-2a7c-4f5f-9144-898def1665fe', 'Recanto Cecilia Pereira, 70, Bonsucesso, 74714065 Pinto / ES', 984, 'casa', 'Oliveira', '30783-778', 'Moura de Minas', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('add7546f-2a7c-4f5f-9144-898def1665fe', -647047659, -1785263515, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('97dd3f2b-6701-44e5-acd9-0a50e6074b59', 'Sophie Gomes', 'josue06@example.com', 'm(7rbPwg3)', '61 5518-6439', NULL, NOW(), NOW(), 'Sop', 'add7546f-2a7c-4f5f-9144-898def1665fe');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f9d79988-ddad-4d91-9ac7-113fcf417625', 'Praia Borges, Mineirão, 07214236 Duarte / RJ', 411, 'comercial', 'Nascimento da Serra', '28405-905', 'da Mota Alegre', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f9d79988-ddad-4d91-9ac7-113fcf417625', -836162015, 467268103, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'da Paz - EI', '9:00-18:00', '(071) 6207-9520', '32678490122', 'f9d79988-ddad-4d91-9ac7-113fcf417625');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('18b8c5e4-6412-4653-9b23-2244f53165f1', '97dd3f2b-6701-44e5-acd9-0a50e6074b59', '72406598365', NOW(), 'a4f68599-7636-42ae-9b85-aa8f9e4598c9');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b583e30c-7f99-46fc-a64a-166bf3ca8ade', 'Mochila para mulheres e homens, aquarela, panda, borboleta, viagem, laptop, mochila à prova d'água, mochila diária com vários bolsos, mochila casual para escola, acampamento, caminhada, trabalho, Multicor, Medium', 'Mochila para mulheres e homens, aquarela, panda, borboleta, viagem, laptop, mochila à prova d'água, mochila diária com vários bolsos, mochila casual para escola, acampamento, caminhada, trabalho, Multicor, Medium', 'brand 66', TRUE, 48, 173.23, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b583e30c-7f99-46fc-a64a-166bf3ca8ade', 37.29, 58.16, 49.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a363ca72-b04c-485a-b187-d591a8c9d7dd', 'Acessórios de irrigação, conector de tubulação Design sofisticado Desempenho superior para família para casa', 'Acessórios de irrigação, conector de tubulação Design sofisticado Desempenho superior para família para casa', 'brand 76', TRUE, 87, 59.22, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Equipamentos de Rega para Grama e Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a363ca72-b04c-485a-b187-d591a8c9d7dd', 47.71, 87.16, 61.39);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a127a41e-4bae-4395-bb50-a950a409a5dd', 'Óculos de Sol Polarizado Quadrado Premium Maya Dustin + Case', 'Óculos de Sol Polarizado Quadrado Premium Maya Dustin + Case', 'brand 22', TRUE, 90, 77.91, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a127a41e-4bae-4395-bb50-a950a409a5dd', 92.57, 39.53, 28.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0387cdf5-9cb6-4838-8b4f-19002a47e7f7', 'Amosfun 3Pcs Calculadora De Bolso Linda Calculadora Mini Calculadora Calculadora Básica Novidade Calculadora Chaveiro Calculadora Com Chaveiro Calculadora Chaveiro Pequeno Saco De', 'Amosfun 3Pcs Calculadora De Bolso Linda Calculadora Mini Calculadora Calculadora Básica Novidade Calculadora Chaveiro Calculadora Com Chaveiro Calculadora Chaveiro Pequeno Saco De', 'brand 7', TRUE, 72, 0.0, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Calculadoras', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0387cdf5-9cb6-4838-8b4f-19002a47e7f7', 58.19, 83.7, 31.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('623dd8e5-d53a-4ce9-9009-9c638da22366', 'KIT COM 3 LÂMPADAS LED BULBO 15W BIVOLT 6500K Branco Frio AVANT- 335441473', 'KIT COM 3 LÂMPADAS LED BULBO 15W BIVOLT 6500K Branco Frio AVANT- 335441473', 'brand 52', TRUE, 53, 35.88, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Iluminação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('623dd8e5-d53a-4ce9-9009-9c638da22366', 41.59, 39.62, 50.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5fbfc7fa-b8b5-4276-aaac-2e637c3eaf50', 'Cuba Sobrepor/Embutir Retan 565x405mm Branco Deca', 'Cuba Sobrepor/Embutir Retan 565x405mm Branco Deca', 'brand 23', TRUE, 9, 1099.9, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Instalações de Cozinha e Banheiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5fbfc7fa-b8b5-4276-aaac-2e637c3eaf50', 28.81, 33.09, 96.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('47f3deb4-0713-4afe-92d7-5e2e04c3cddd', 'Haste De Aquecimento Segmentada De Cartucho 24v De Alta Confiabilidade Haste De Aquecimento Seccional Tubo De Aquecimento De Impressora 3D Haste De Aquecimento De Impressora 3D Para Impressora Creality Cr-10s Pro 3D (24V,40W)', 'Haste De Aquecimento Segmentada De Cartucho 24v De Alta Confiabilidade Haste De Aquecimento Seccional Tubo De Aquecimento De Impressora 3D Haste De Aquecimento De Impressora 3D Para Impressora Creality Cr-10s Pro 3D (24V,40W)', 'brand 84', TRUE, 53, 0.0, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Impressoras e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('47f3deb4-0713-4afe-92d7-5e2e04c3cddd', 75.02, 18.31, 58.73);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a05fbec1-ab64-40f5-8bd8-8d0bbf79501d', '1 Conjunto De Relógios Femininos Para Meninas Pulseiras Femininas Ternos Femininos Pulseiras Femininas Relógios Automáticos Femininos Relógios Casuais Femininos Relógios De', '1 Conjunto De Relógios Femininos Para Meninas Pulseiras Femininas Ternos Femininos Pulseiras Femininas Relógios Automáticos Femininos Relógios Casuais Femininos Relógios De', 'brand 14', TRUE, 13, 0.0, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a05fbec1-ab64-40f5-8bd8-8d0bbf79501d', 93.59, 96.87, 73.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('51533a52-d821-42f6-b304-8ccfd0c0b450', 'FIFA 23 Legacy Edition [ Edición Legado ] - Nintendo Switch', 'FIFA 23 Legacy Edition [ Edición Legado ] - Nintendo Switch', 'brand 61', TRUE, 74, 255.8, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Nintendo Switch, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('51533a52-d821-42f6-b304-8ccfd0c0b450', 79.86, 25.86, 86.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9d6c9350-d0bd-437a-ad5e-de76b25c9b8d', 'Óculos de Sol Dobráveis para Mulheres/Homens, Oculos Dobráveis com Proteção UV de Lente Polarizada Armação TR90 Ultraleves', 'Óculos de Sol Dobráveis para Mulheres/Homens, Oculos Dobráveis com Proteção UV de Lente Polarizada Armação TR90 Ultraleves', 'brand 17', TRUE, 10, 199.99, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9d6c9350-d0bd-437a-ad5e-de76b25c9b8d', 37.24, 68.23, 90.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5ef76a52-ca41-4ae2-b119-a4f7060bf700', 'Unicórnio Mãos Infantis Relógios Para Meninas Relógios Para Estudantes Relógios Para Jovens Relógios Para Crianças Presentes Para Crianças Em Aço Inoxidável Relógio De Presente', 'Unicórnio Mãos Infantis Relógios Para Meninas Relógios Para Estudantes Relógios Para Jovens Relógios Para Crianças Presentes Para Crianças Em Aço Inoxidável Relógio De Presente', 'brand 81', TRUE, 61, 53.62, 'a4f68599-7636-42ae-9b85-aa8f9e4598c9', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5ef76a52-ca41-4ae2-b119-a4f7060bf700', 42.3, 44.13, 36.95);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('d1ab4381-fe4e-4904-ac4d-7104a078caab', 'Chácara Thomas Pinto, 51, Santo Antônio, 91776940 Rios da Praia / PB', 436, 'casa', 'Machado', '57653-320', 'Moura', 'Tocantins');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('d1ab4381-fe4e-4904-ac4d-7104a078caab', 61488971, 260954580, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('cc504d2b-dd9d-4b7f-8f08-07cf39afc153', 'João Mendes', 'nataliafarias@example.org', 'd&_#c9JfQf', '71 6969 5861', NULL, NOW(), NOW(), 'Joã', 'd1ab4381-fe4e-4904-ac4d-7104a078caab');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('5d794811-5406-425d-8e10-4958c09dd462', 'Jardim Marques, Prado, 34736-321 da Mata do Amparo / RJ', 866, 'comercial', 'Rodrigues', '82645-138', 'Sá', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('5d794811-5406-425d-8e10-4958c09dd462', -70702806, -1521566105, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Rios', '9:00-18:00', '+55 11 8148 0230', '15647308244', '5d794811-5406-425d-8e10-4958c09dd462');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('25ba6b7f-bbe5-4d4e-af68-6d2216bc0888', 'cc504d2b-dd9d-4b7f-8f08-07cf39afc153', '53784692010', NOW(), '423db6b3-6dbf-4854-a14e-fbe2ea335ec0');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b2775a53-4143-4f1f-b4df-5c9b367355e1', 'Cobertura da agulha de teste, 50 peças para teste eletrônico PCB manga longa da sonda de teste de 34 mm UB189-4S', 'Cobertura da agulha de teste, 50 peças para teste eletrônico PCB manga longa da sonda de teste de 34 mm UB189-4S', 'brand 65', TRUE, 96, 0.0, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Ferramentas e Equipamentos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b2775a53-4143-4f1f-b4df-5c9b367355e1', 11.56, 81.44, 22.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bbed213d-5700-4509-8ae6-2809f17cf177', 'Sandália infantil unissex L.30 Slide, Preto/branco, 4 Toddler', 'Sandália infantil unissex L.30 Slide, Preto/branco, 4 Toddler', 'brand 85', TRUE, 70, 209.0, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bbed213d-5700-4509-8ae6-2809f17cf177', 10.66, 85.06, 65.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('96d63eb6-22a7-4cdb-9eb3-f085d676ced0', 'ALCON LABCON ANTIALGAS 100ML', 'ALCON LABCON ANTIALGAS 100ML', 'brand 5', TRUE, 36, 34.0, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('96d63eb6-22a7-4cdb-9eb3-f085d676ced0', 83.56, 45.04, 40.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eb7a4315-a85b-4ccd-8f17-6a9e5f728434', 'POPETPOP Rede De Pássaro Quente Pássaros Cabana Cama De Pássaro Triângulo Rede Cama De Dormir Para Animais De Estimação Cama De Papagaio Cama De Pássaro De Estimação Escalada Cama De Rede', 'POPETPOP Rede De Pássaro Quente Pássaros Cabana Cama De Pássaro Triângulo Rede Cama De Dormir Para Animais De Estimação Cama De Papagaio Cama De Pássaro De Estimação Escalada Cama De Rede', 'brand 70', TRUE, 70, 49.5, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eb7a4315-a85b-4ccd-8f17-6a9e5f728434', 92.19, 52.89, 59.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('27db5663-a00b-4f91-9c1f-8804e4b2862c', 'arquivo lixamento manual | Ajuste forma flexível o tamanho das superfícies Placa moagem manual | Flexível Ajustável Para Enceramento Carro Ranhura Traseira Esmerilhada', 'arquivo lixamento manual | Ajuste forma flexível o tamanho das superfícies Placa moagem manual | Flexível Ajustável Para Enceramento Carro Ranhura Traseira Esmerilhada', 'brand 41', TRUE, 53, 109.59, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Acessórios de Ferramentas Elétricas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('27db5663-a00b-4f91-9c1f-8804e4b2862c', 56.68, 56.2, 64.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2a6b0c16-c6a4-4a71-b696-a69411cbcc95', 'Adcos Reduxcel Anticelulite e Redutor 200g', 'Adcos Reduxcel Anticelulite e Redutor 200g', 'brand 18', TRUE, 66, 232.49, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2a6b0c16-c6a4-4a71-b696-a69411cbcc95', 83.16, 14.42, 67.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('539216e5-1ba9-46b1-a77b-db42817666f3', 'Jaqueta infantil infantil infantil para meninos e meninas, camisa xadrez, manga comprida, flanela, botão, inverno', 'Jaqueta infantil infantil infantil para meninos e meninas, camisa xadrez, manga comprida, flanela, botão, inverno', 'brand 45', TRUE, 40, 85.3, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('539216e5-1ba9-46b1-a77b-db42817666f3', 71.18, 43.93, 26.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('49cbbca3-0ac4-4b0d-b5a3-76d64e38f008', 'Bolsa de presente Market Tote-Never RV Alone-, multi, 39,4 x 38,7 cm x 15,2 cm, Multi, 15.50" x 15.25" x 6"', 'Bolsa de presente Market Tote-Never RV Alone-, multi, 39,4 x 38,7 cm x 15,2 cm, Multi, 15.50" x 15.25" x 6"', 'brand 20', TRUE, 37, 75.61, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Bolsas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('49cbbca3-0ac4-4b0d-b5a3-76d64e38f008', 75.03, 87.79, 72.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9a621803-5678-4a2c-930c-cfb13ccd2e92', 'Armação de Óculos Nautica N7318 030 - Cinza Gunmetal 55', 'Armação de Óculos Nautica N7318 030 - Cinza Gunmetal 55', 'brand 54', TRUE, 37, 745.0, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9a621803-5678-4a2c-930c-cfb13ccd2e92', 64.46, 87.37, 43.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b1df5733-6f75-48d5-9c72-f0ead164e4d9', 'Tigela de Barbear Aço Inoxidável Metal Sabão de Barbear Tigela de Espuma Caneca de Barbear Barbeiro Barba Navalha Xícara de Barbear Limpeza de Cabelo Facial Masculino Ferramenta de Barbear Xícara de Barbear,Tigela de Barbear,Tigela de Barbear,Sabonete de barbear de metal,Tigela de Espuma de Sabão Silver', 'Tigela de Barbear Aço Inoxidável Metal Sabão de Barbear Tigela de Espuma Caneca de Barbear Barbeiro Barba Navalha Xícara de Barbear Limpeza de Cabelo Facial Masculino Ferramenta de Barbear Xícara de Barbear,Tigela de Barbear,Tigela de Barbear,Sabonete de barbear de metal,Tigela de Espuma de Sabão Silver', 'brand 1', TRUE, 49, 73.93, '423db6b3-6dbf-4854-a14e-fbe2ea335ec0', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b1df5733-6f75-48d5-9c72-f0ead164e4d9', 51.13, 25.2, 32.77);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('fcef98c3-d0a2-4e83-a0e6-576af8304d2e', 'Travessa Vitor Gabriel Porto, 59, Candelaria, 42046-185 Farias / PA', 568, 'casa', 'Castro', '13991-392', 'Rezende', 'Rio Grande do Norte');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('fcef98c3-d0a2-4e83-a0e6-576af8304d2e', -254138930, 1223942445, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('a24f4a3b-ef47-46c0-8152-6adbc425640f', 'Vitor Carvalho', 'carolina67@example.com', '$*e8UmRv0s', '0500-577-1398', NULL, NOW(), NOW(), 'Vit', 'fcef98c3-d0a2-4e83-a0e6-576af8304d2e');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('70685d1a-f53d-4d4b-afa0-3263416f0495', 'Favela de Rezende, 22, Flavio Marques Lisboa, 45187843 Gonçalves do Campo / AP', 37, 'comercial', 'Nascimento do Norte', '88675-825', 'da Cunha', 'São Paulo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('70685d1a-f53d-4d4b-afa0-3263416f0495', 636418239, -615444741, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Pires', '9:00-18:00', '+55 (084) 1036 4857', '15864973246', '70685d1a-f53d-4d4b-afa0-3263416f0495');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('63e6d49c-b35e-47b4-9107-5d2f90aca68d', 'a24f4a3b-ef47-46c0-8152-6adbc425640f', '10634982524', NOW(), '0194020b-033b-42b1-bcfc-d978ca2e3fdb');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eb8eb18d-165e-40db-a50c-ea2b7ad281c7', 'Tela Raspberry Pi de 7, Monitor Touchscreen de 7 polegadas 1024x600 HDMI Display Portátil para Raspberry Pi 4/3/2/Zero/B/B+, compatível com Win10/8/7', 'Tela Raspberry Pi de 7, Monitor Touchscreen de 7 polegadas 1024x600 HDMI Display Portátil para Raspberry Pi 4/3/2/Zero/B/B+, compatível com Win10/8/7', 'brand 46', TRUE, 2, 0.0, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Monitores de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eb8eb18d-165e-40db-a50c-ea2b7ad281c7', 49.57, 22.95, 65.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('140018f6-6800-4b0b-85d7-c77fa3a39b84', 'Persiana de rolo externa,Persiana blackout com ventosas temporárias,portátil para janela cortina para-sol blackout cortina rolo para-sol,Carro Do Escritório Em Casa,Blackout Cego Cortina (40x125cm)', 'Persiana de rolo externa,Persiana blackout com ventosas temporárias,portátil para janela cortina para-sol blackout cortina rolo para-sol,Carro Do Escritório Em Casa,Blackout Cego Cortina (40x125cm)', 'brand 58', TRUE, 13, 162.92, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Cortinas e Persianas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('140018f6-6800-4b0b-85d7-c77fa3a39b84', 13.04, 55.68, 97.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('64e1bbb2-d3fa-4c80-8727-5389a2f857ae', 'Barbeador viagem | Barbeadores Elétricos Para Rosto Masculino,Máquina barbear móvel tamanho bolso Power Display, lavável, USB, recarregável, máquina barbear portátil, Iytefeki', 'Barbeador viagem | Barbeadores Elétricos Para Rosto Masculino,Máquina barbear móvel tamanho bolso Power Display, lavável, USB, recarregável, máquina barbear portátil, Iytefeki', 'brand 83', TRUE, 55, 67.99, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('64e1bbb2-d3fa-4c80-8727-5389a2f857ae', 15.08, 70.98, 86.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1df4e3c9-bcb5-4438-9b68-adead734c1df', 'ifundom 4 Peças Ninho De Cerâmica Hamster Casa De Cogumelo Casa De Ouriço Esconderijo De Resfriamento De Hamster Mini Casa Abrigo De Caverna De Hamster Ninho Legal Gaiola De Hamster', 'ifundom 4 Peças Ninho De Cerâmica Hamster Casa De Cogumelo Casa De Ouriço Esconderijo De Resfriamento De Hamster Mini Casa Abrigo De Caverna De Hamster Ninho Legal Gaiola De Hamster', 'brand 54', TRUE, 4, 197.68, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Produtos para Roedores e Pequenos Animais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1df4e3c9-bcb5-4438-9b68-adead734c1df', 57.94, 33.68, 92.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('71f97ecf-1b9d-4fb9-b11a-2167b7d72c29', 'Jogo de Caçarolas 05 Peças Cereja com Tampa de Vidro + Utensílios', 'Jogo de Caçarolas 05 Peças Cereja com Tampa de Vidro + Utensílios', 'brand 39', TRUE, 65, 204.9, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Panelas e Utensílios para Cozinhar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('71f97ecf-1b9d-4fb9-b11a-2167b7d72c29', 19.41, 35.56, 18.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5cdbe117-531f-4c42-9d2d-b49585e3d848', 'Toyvian 4 Peças Brinquedos Infantis Brinquedos De Banho De Bebê Brinquedos Infantis Organizador De Brinquedos De Malha Brinquedos Pendurados Rede De Brinquedos De Banho Saco De Malha', 'Toyvian 4 Peças Brinquedos Infantis Brinquedos De Banho De Bebê Brinquedos Infantis Organizador De Brinquedos De Malha Brinquedos Pendurados Rede De Brinquedos De Banho Saco De Malha', 'brand 48', TRUE, 38, 50.42, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Banho, Higiene e Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5cdbe117-531f-4c42-9d2d-b49585e3d848', 22.69, 73.22, 18.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('913bfa61-cce9-4b1e-a7de-ed0d175a6368', 'OCULOS SOLAR SWAROVSKI SK0381 5501A', 'OCULOS SOLAR SWAROVSKI SK0381 5501A', 'brand 42', TRUE, 71, 2232.93, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('913bfa61-cce9-4b1e-a7de-ed0d175a6368', 93.89, 52.44, 89.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4ae5d870-b187-43bd-a672-f62aab2d9368', 'Bauer Bateria de lítio de alta capacidade 20V HyperMax de 3,0 Ah', 'Bauer Bateria de lítio de alta capacidade 20V HyperMax de 3,0 Ah', 'brand 51', TRUE, 71, 0.0, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Cortadores e Ferramentas Elétricas para Ambientes Externos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4ae5d870-b187-43bd-a672-f62aab2d9368', 84.6, 43.09, 60.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('76627947-6138-42bc-947d-4e0cd1492baf', 'FOMIYES 1 Peça Bolsa De Balde De Pérolas Bolsa De Mão Feminina Bolsas Femininas Bolsas Da Moda Para Mulheres Moda Bolsa Feminina Bolsa Transversal Feminina Bolsa De Ombro Ao Ar Livre', 'FOMIYES 1 Peça Bolsa De Balde De Pérolas Bolsa De Mão Feminina Bolsas Femininas Bolsas Da Moda Para Mulheres Moda Bolsa Feminina Bolsa Transversal Feminina Bolsa De Ombro Ao Ar Livre', 'brand 91', TRUE, 44, 0.0, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Bolsas de Mão e Ombro Femininas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('76627947-6138-42bc-947d-4e0cd1492baf', 78.08, 88.23, 63.96);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0c0c3686-5f44-4890-a3b6-eff29fcfd01c', 'Lustre Pendente Duplo Aladim Aramado Cobre', 'Lustre Pendente Duplo Aladim Aramado Cobre', 'brand 94', TRUE, 2, 149.9, '0194020b-033b-42b1-bcfc-d978ca2e3fdb', 'Iluminação', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0c0c3686-5f44-4890-a3b6-eff29fcfd01c', 66.97, 93.92, 36.06);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('38141f1a-7fbf-465e-87e9-f80a72dabe5f', 'Área de Rios, 60, Vila Satélite, 13690688 Guerra / TO', 20, 'casa', 'Moura', '70567-768', 'Porto', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('38141f1a-7fbf-465e-87e9-f80a72dabe5f', -299058548, 1549277414, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('0361a2a0-8843-4ec4-bc3b-a92ea7ef8661', 'Clara Vargas', 'luigicastro@example.com', '@MWxr4tm9#', '0300-199-1024', NULL, NOW(), NOW(), 'Cla', '38141f1a-7fbf-465e-87e9-f80a72dabe5f');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('57226ac3-11bc-47d0-9d09-5af264ed3312', 'Quadra de Sampaio, 4, Ipe, 95997-220 Fogaça Alegre / AM', 855, 'comercial', 'Vargas do Galho', '47851-421', 'Lima Alegre', 'Paraná');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('57226ac3-11bc-47d0-9d09-5af264ed3312', 559324630, 462079586, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'da Mata Vargas S/A', '9:00-18:00', '+55 (011) 3797 7272', '31257068903', '57226ac3-11bc-47d0-9d09-5af264ed3312');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('5242fd75-6292-4b4a-937c-d82b5eb7dd23', '0361a2a0-8843-4ec4-bc3b-a92ea7ef8661', '69041238778', NOW(), '1a722408-a1fd-4fc8-ba28-a69957caa8fa');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('edcf85f8-f9ff-4915-8d97-8915b1e8b9ec', 'Tesoura para afinar o cabelo de 6 polegadas, tesoura de cabeleireiro, para uso doméstico pessoal barbearia', 'Tesoura para afinar o cabelo de 6 polegadas, tesoura de cabeleireiro, para uso doméstico pessoal barbearia', 'brand 11', TRUE, 5, 108.26, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('edcf85f8-f9ff-4915-8d97-8915b1e8b9ec', 96.75, 34.3, 48.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('000d1c6c-af23-4415-ac22-dbe1597415c1', 'Cabo Lightining para P2 -GShield', 'Cabo Lightining para P2 -GShield', 'brand 74', TRUE, 36, 59.97, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('000d1c6c-af23-4415-ac22-dbe1597415c1', 98.36, 77.15, 63.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('061b9ecd-c539-47c1-a264-3acb307741ca', 'Capacete Ciclismo Bike Scooter Elétrica Patins Skate Profissional Dourado - Viseira Cristal', 'Capacete Ciclismo Bike Scooter Elétrica Patins Skate Profissional Dourado - Viseira Cristal', 'brand 68', TRUE, 54, 139.97, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Equipamento de Ciclismo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('061b9ecd-c539-47c1-a264-3acb307741ca', 66.45, 97.67, 42.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9a76db5d-77c0-4b35-9f58-bff01b14d2fa', 'Brinquedo Para Cães Filhotes Kong Puppy Médio Rosa', 'Brinquedo Para Cães Filhotes Kong Puppy Médio Rosa', 'brand 93', TRUE, 75, 128.0, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9a76db5d-77c0-4b35-9f58-bff01b14d2fa', 75.34, 67.17, 52.31);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('01631298-0746-409f-b640-b45a9645908c', 'Ornamento Exclusivo para Capacete de Motocicleta Com Chifre do Diabo, Sugador de Borracha Universal, Melhor Presente', 'Ornamento Exclusivo para Capacete de Motocicleta Com Chifre do Diabo, Sugador de Borracha Universal, Melhor Presente', 'brand 74', TRUE, 13, 34.31, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Equipamento de Proteção para Pilotar Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('01631298-0746-409f-b640-b45a9645908c', 73.19, 12.94, 62.74);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ad1a9107-3798-4991-b168-1d6a30286f6c', 'TOYANDONA 2 Conjuntos De Brinquedos Correspondentes Blocos De Construção Para Crianças Brinquedos De Madeira Crianças Playset Kidcraft Playset Bebê Brinquedos Educativos Bebê Menino', 'TOYANDONA 2 Conjuntos De Brinquedos Correspondentes Blocos De Construção Para Crianças Brinquedos De Madeira Crianças Playset Kidcraft Playset Bebê Brinquedos Educativos Bebê Menino', 'brand 72', TRUE, 77, 111.33, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ad1a9107-3798-4991-b168-1d6a30286f6c', 19.9, 28.59, 20.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('56dd18f5-cc04-44ae-99c0-61688edbf358', 'Capa protetora de proteção contra quedas da Arashi para SUZUKI GSR 600 2006-2012 Acessórios para motocicleta GSR600 2007 2008 2009 2010 2011', 'Capa protetora de proteção contra quedas da Arashi para SUZUKI GSR 600 2006-2012 Acessórios para motocicleta GSR600 2007 2008 2009 2010 2011', 'brand 47', TRUE, 13, 426.44, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Acessórios e Peças para Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('56dd18f5-cc04-44ae-99c0-61688edbf358', 69.04, 40.43, 14.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ad62bbb1-662a-4dac-b0fc-037082b4c1e6', 'Desodorante Colônia Masculina Portiolli Titanium Essence, 100 ml', 'Desodorante Colônia Masculina Portiolli Titanium Essence, 100 ml', 'brand 54', TRUE, 99, 119.0, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ad62bbb1-662a-4dac-b0fc-037082b4c1e6', 75.15, 50.63, 22.83);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('17b1b07b-a40d-4ff4-bd43-f6abe4c9cef6', 'Mokylor Copos de coquetel de Martini de 220 ml, copos de Martini de aço inoxidável ouro rosa, copos de vinho reutilizáveis com metal, taças duráveis para festa, bares, aniversário, casamento', 'Mokylor Copos de coquetel de Martini de 220 ml, copos de Martini de aço inoxidável ouro rosa, copos de vinho reutilizáveis com metal, taças duráveis para festa, bares, aniversário, casamento', 'brand 26', TRUE, 7, 78.45, '1a722408-a1fd-4fc8-ba28-a69957caa8fa', 'Copos e Taças', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('17b1b07b-a40d-4ff4-bd43-f6abe4c9cef6', 22.83, 51.75, 83.95);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b03c1e77-da93-4515-b891-7741184f30c7', 'Aeroporto de Costela, 335, Conjunto Floramar, 69901502 da Rosa de Minas / SE', 48, 'casa', 'Albuquerque da Prata', '25097-765', 'Andrade de Vieira', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b03c1e77-da93-4515-b891-7741184f30c7', 331959086, -1598214654, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('241e3e1c-5dd6-45be-bbd7-db5aa239dc86', 'Alexandre Gomes', 'estervasconcelos@example.net', 'KJw1BzWv&^', '+55 81 2084 3234', NULL, NOW(), NOW(), 'Ale', 'b03c1e77-da93-4515-b891-7741184f30c7');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4cd47670-9403-46a9-b9e6-048b28b29b42', 'Travessa Heloisa Ferreira, 34, São Gabriel, 23422321 Rezende do Amparo / AM', 608, 'comercial', 'Montenegro do Oeste', '94248-137', 'Ramos', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4cd47670-9403-46a9-b9e6-048b28b29b42', 834957770, 534257029, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Silva Rocha Ltda.', '9:00-18:00', '41 3186 6047', '18370659420', '4cd47670-9403-46a9-b9e6-048b28b29b42');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('f025170b-68f2-43dc-a3c2-9cc721a395d9', '241e3e1c-5dd6-45be-bbd7-db5aa239dc86', '31950678466', NOW(), '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1b54a3fb-6476-4bd4-ab4d-242762fa414e', 'Bolsa de Selim SP II CURTLO - tam. único, cor preto', 'Bolsa de Selim SP II CURTLO - tam. único, cor preto', 'brand 91', TRUE, 40, 77.9, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Equipamento de Ciclismo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1b54a3fb-6476-4bd4-ab4d-242762fa414e', 87.24, 92.82, 30.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('76a86023-8695-4399-adfc-3d66777a13d8', 'Pijama Longo Menina Infantil Quimby', 'Pijama Longo Menina Infantil Quimby', 'brand 84', TRUE, 81, 57.45, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('76a86023-8695-4399-adfc-3d66777a13d8', 41.79, 19.61, 94.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('478a5505-7339-4289-9605-cfcc6af49ac2', '2 Sinata em gotas 30Ml', '2 Sinata em gotas 30Ml', 'brand 21', TRUE, 82, 119.0, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Vitaminas, Minerais e Suplementos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('478a5505-7339-4289-9605-cfcc6af49ac2', 27.61, 91.0, 49.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5ac014a5-a88d-42be-acaf-610bfce7975d', 'TR CORRETIVO HIDRATANTE 06', 'TR CORRETIVO HIDRATANTE 06', 'brand 35', TRUE, 97, 26.9, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5ac014a5-a88d-42be-acaf-610bfce7975d', 71.89, 20.24, 10.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c8d2c092-a48c-43a5-8f27-3606794bc1ba', 'NOLITOY 1 Conjunto De Brinquedos De Decoração Modelo De Posto De Gasolina Brinquedo Infantil DIY Modelo De Posto De Gasolina Montagem De Posto De Gasolina Brinquedo Infantil Modelo', 'NOLITOY 1 Conjunto De Brinquedos De Decoração Modelo De Posto De Gasolina Brinquedo Infantil DIY Modelo De Posto De Gasolina Montagem De Posto De Gasolina Brinquedo Infantil Modelo', 'brand 15', TRUE, 58, 74.53, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Brinquedos de Construir e de Montar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c8d2c092-a48c-43a5-8f27-3606794bc1ba', 47.54, 50.32, 56.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('acf1950b-0d1a-4e2e-8140-1ee8f37a6ecb', 'medidor de temperatura de água flutuante de piscina, termômetro flutuante de piscina claro decorativo simples de ler grande número inquebrável para banheiras (forma)', 'medidor de temperatura de água flutuante de piscina, termômetro flutuante de piscina claro decorativo simples de ler grande número inquebrável para banheiras (forma)', 'brand 18', TRUE, 52, 52.29, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Piscinas, Ofurôs e Materiais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('acf1950b-0d1a-4e2e-8140-1ee8f37a6ecb', 11.92, 70.96, 12.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5fa6d3c1-6a4c-436f-b00b-f413097b92d0', 'Ernst Manufacturing Ernst Bandeja Organizadora De Garagem Vermelha 3 Compartimentos', 'Ernst Manufacturing Ernst Bandeja Organizadora De Garagem Vermelha 3 Compartimentos', 'brand 72', TRUE, 26, 57.94, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Organizadores de Ferramentas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5fa6d3c1-6a4c-436f-b00b-f413097b92d0', 54.73, 84.65, 78.3);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('01cb8642-d2ef-431a-af63-7beab4f32322', 'ibasenice 1 Conjunto De Tapete Para Rastejar Almofada De Chão Para Crianças Quebra-Cabeças Tapete De Brincar De Espuma Para Bebês Tapete De Espuma Para Quebra-Cabeça Tapete De Espuma', 'ibasenice 1 Conjunto De Tapete Para Rastejar Almofada De Chão Para Crianças Quebra-Cabeças Tapete De Brincar De Espuma Para Bebês Tapete De Espuma Para Quebra-Cabeça Tapete De Espuma', 'brand 35', TRUE, 66, 116.06, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('01cb8642-d2ef-431a-af63-7beab4f32322', 96.62, 75.55, 10.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0ec2aaec-4b79-44be-9934-9b34ce5e5880', 'Bowl Tigela Cumbuca Cereais Molhos 11,3 X 5,8 Cm', 'Bowl Tigela Cumbuca Cereais Molhos 11,3 X 5,8 Cm', 'brand 71', TRUE, 5, 13.67, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Assadeiras, Fôrmas e Recipientes de Forno', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0ec2aaec-4b79-44be-9934-9b34ce5e5880', 16.21, 35.84, 45.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e42237c5-8625-405c-8d3d-49ef58692d15', 'Plasma Liquid Mobile', 'Plasma Liquid Mobile', 'brand 71', TRUE, 23, 10.66, '84e113ae-6d6d-4dab-bfd3-7d47d486ae3d', 'Fire TV Stick Apps', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e42237c5-8625-405c-8d3d-49ef58692d15', 77.36, 15.13, 16.15);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('ee846f3d-3dc5-49df-bebb-b4acfb5d8637', 'Via Oliveira, 67, Canaa, 31707-958 Caldeira / BA', 819, 'casa', 'Macedo', '97723-831', 'Freitas de Alves', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('ee846f3d-3dc5-49df-bebb-b4acfb5d8637', -406285643, 459435362, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2c9ae4a6-5bb4-4c3b-9ba6-9da7beea52e1', 'Ravi Sá', 'da-rochapedro-lucas@example.net', 'ti2hEtKWa_', '0900 693 1501', NULL, NOW(), NOW(), 'Rav', 'ee846f3d-3dc5-49df-bebb-b4acfb5d8637');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('93d599d9-b0ba-4d03-90f8-6ce419e91093', 'Morro Duarte, 806, Serra Do Curral, 30772800 Fernandes / DF', 654, 'comercial', 'Moraes', '27351-101', 'Vasconcelos Verde', 'São Paulo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('93d599d9-b0ba-4d03-90f8-6ce419e91093', 426892571, 781272351, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('05b08bd1-6f47-4d03-8383-d321b5e69624', 'Lima', '9:00-18:00', '(084) 7856 0099', '95704621325', '93d599d9-b0ba-4d03-90f8-6ce419e91093');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('d9dda22b-9e08-47e6-a44a-9fbfbe444ab6', '2c9ae4a6-5bb4-4c3b-9ba6-9da7beea52e1', '45812376964', NOW(), '05b08bd1-6f47-4d03-8383-d321b5e69624');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8c004a96-d1cd-45e2-9da3-f8a97498d9e5', 'Hemobllo 5 Peças Alça De Câmera Alça De Ombro Pu Alça De Ombro De Câmera Corda Ajustável Fotograficas Instantaneas Câmera Retrô Cinto De Segurança Universal Cordão De Câmera Estilingue De', 'Hemobllo 5 Peças Alça De Câmera Alça De Ombro Pu Alça De Ombro De Câmera Corda Ajustável Fotograficas Instantaneas Câmera Retrô Cinto De Segurança Universal Cordão De Câmera Estilingue De', 'brand 9', TRUE, 25, 0.0, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8c004a96-d1cd-45e2-9da3-f8a97498d9e5', 75.49, 98.95, 12.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3703b450-9a89-4fee-b862-9b962cb88181', 'Beatifufu 4 Pçs Conjuntos De Roupa De Barbear Para Mulheres Barbeadores De Corpo Para Homens Ferramentas Femininas Biquíni Aparador Ferramenta Universal Conjunto De Aço Inoxidável Barbeador', 'Beatifufu 4 Pçs Conjuntos De Roupa De Barbear Para Mulheres Barbeadores De Corpo Para Homens Ferramentas Femininas Biquíni Aparador Ferramenta Universal Conjunto De Aço Inoxidável Barbeador', 'brand 15', TRUE, 77, 45.52, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3703b450-9a89-4fee-b862-9b962cb88181', 54.85, 93.94, 44.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('606437c3-b362-487a-bb07-c546ddf17355', 'Vita contemplativa ou sobre a inatividade', 'Vita contemplativa ou sobre a inatividade', 'brand 50', TRUE, 73, 32.06, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Novidades da Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('606437c3-b362-487a-bb07-c546ddf17355', 67.91, 47.33, 83.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('93d1160a-e811-407d-81f2-b6ed78c7916a', 'Nylon Bolsa De Viagem Da Moda Saco de Impressão Ombro Versátil Saco Bolsa Portátil', 'Nylon Bolsa De Viagem Da Moda Saco de Impressão Ombro Versátil Saco Bolsa Portátil', 'brand 27', TRUE, 45, 0.0, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('93d1160a-e811-407d-81f2-b6ed78c7916a', 75.27, 37.14, 45.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('aa4fbcb2-3cd1-4fe8-bd8d-391a77e054d3', 'Estampa de flor de peônia, aplique de arte, decoração de quarto, adesivo de parede adesivos de fundo ptern', 'Estampa de flor de peônia, aplique de arte, decoração de quarto, adesivo de parede adesivos de fundo ptern', 'brand 14', TRUE, 98, 0.0, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('aa4fbcb2-3cd1-4fe8-bd8d-391a77e054d3', 58.07, 44.4, 41.97);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('90ca88ea-1910-4500-a94b-b43362c071ee', 'Uonlytech 2 Conjuntos De Pernas De Sofá De Cama Móveis Pretos Armações De Cama Ajustáveis Pernas De Mesa De Centro De Metal Altura Central Suporte De Perna Pés De Armário Pés De', 'Uonlytech 2 Conjuntos De Pernas De Sofá De Cama Móveis Pretos Armações De Cama Ajustáveis Pernas De Mesa De Centro De Metal Altura Central Suporte De Perna Pés De Armário Pés De', 'brand 25', TRUE, 90, 185.25, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('90ca88ea-1910-4500-a94b-b43362c071ee', 41.0, 22.89, 41.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f7bd4ee6-d030-4cf0-8033-8d6159bd7e8f', 'GOOD, THE BAD & THE UGLY', 'GOOD, THE BAD & THE UGLY', 'brand 67', TRUE, 2, 224.97, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Filmes', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f7bd4ee6-d030-4cf0-8033-8d6159bd7e8f', 88.37, 10.8, 99.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9fb00846-2950-4626-b635-e43df2a0aab1', 'WOONEKY Brinquedo De Mastigar Papagaio Brinquedos De Periquito Papagaio Corda De Couro De Vaca', 'WOONEKY Brinquedo De Mastigar Papagaio Brinquedos De Periquito Papagaio Corda De Couro De Vaca', 'brand 54', TRUE, 94, 34.22, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9fb00846-2950-4626-b635-e43df2a0aab1', 62.97, 23.06, 12.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('51d246a2-e022-49d0-b7f4-649481849b13', 'Obuyke Mini7S7C Em Couro Bolsa De Ombro Estojo Para Celular Carteira De Couro Bolsa Para Câmera Bolsa De Transporte Para Câmera Fotográfica Instantânea Estojo Para Câmera Instantânea', 'Obuyke Mini7S7C Em Couro Bolsa De Ombro Estojo Para Celular Carteira De Couro Bolsa Para Câmera Bolsa De Transporte Para Câmera Fotográfica Instantânea Estojo Para Câmera Instantânea', 'brand 43', TRUE, 80, 0.0, '05b08bd1-6f47-4d03-8383-d321b5e69624', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('51d246a2-e022-49d0-b7f4-649481849b13', 84.76, 67.19, 18.37);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('10b37a87-94c8-4647-ae8a-f23ff06bf0bb', 'Pátio de Vasconcelos, 197, Vila Inestan, 41382-844 Oliveira / MG', 985, 'casa', 'da Conceição de Pimenta', '52090-922', 'Carvalho da Prata', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('10b37a87-94c8-4647-ae8a-f23ff06bf0bb', -189240414, 1179369627, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2ed21680-185a-48ec-a6ef-7c908a26fb1f', 'Asafe Castro', 'yuri82@example.com', 'eF&6PmT7k^', '0900 568 5271', NULL, NOW(), NOW(), 'Asa', '10b37a87-94c8-4647-ae8a-f23ff06bf0bb');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4cc3d3e9-8c90-4b70-bbb9-e391182bfa04', 'Rodovia de Sales, 9, Jardim Alvorada, 11055-086 Nunes das Flores / MT', 168, 'comercial', 'das Neves do Sul', '61485-188', 'Correia', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4cc3d3e9-8c90-4b70-bbb9-e391182bfa04', -460522756, 604771554, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('23d25028-a6e6-4134-ab47-9c3af97a1208', 'Barbosa', '9:00-18:00', '+55 31 4211 3048', '71249085314', '4cc3d3e9-8c90-4b70-bbb9-e391182bfa04');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('22051360-a3c7-4f81-a2b5-361bad2d3c2e', '2ed21680-185a-48ec-a6ef-7c908a26fb1f', '46281753909', NOW(), '23d25028-a6e6-4134-ab47-9c3af97a1208');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('31d5d9d7-8a9f-4408-9654-f565bfd379ea', 'Hub USB 3.0 de 3 portas com 1 adaptador de rede Ethernet Cabo Adaptador USB 3.0 para Ethernet RJ45 100Mbps', 'Hub USB 3.0 de 3 portas com 1 adaptador de rede Ethernet Cabo Adaptador USB 3.0 para Ethernet RJ45 100Mbps', 'brand 99', TRUE, 100, 79.85, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Acessórios para Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('31d5d9d7-8a9f-4408-9654-f565bfd379ea', 15.23, 94.18, 51.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fdde03d0-5329-4e3c-9dbb-db7d720a6e62', 'Bola de Ouriço de Lavagem, Bola de Lavagem Descontaminação PVC Leve Amaciante para Máquina de Lavar', 'Bola de Ouriço de Lavagem, Bola de Lavagem Descontaminação PVC Leve Amaciante para Máquina de Lavar', 'brand 44', TRUE, 52, 93.19, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Produtos de Lavanderia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fdde03d0-5329-4e3c-9dbb-db7d720a6e62', 38.66, 89.63, 55.81);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4aba644c-12b2-4b76-ad7f-3e6d331bb893', 'Adaptador de cabo, mini adaptador de curto prazo 1080P Full HD portátil leve para projetores para TVs de alta definição', 'Adaptador de cabo, mini adaptador de curto prazo 1080P Full HD portátil leve para projetores para TVs de alta definição', 'brand 19', TRUE, 44, 55.26, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4aba644c-12b2-4b76-ad7f-3e6d331bb893', 20.31, 21.09, 64.03);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5a32629e-8cac-483c-a45b-1d388e3efa49', 'o recorder, good sound quality 15h capacity durable easy operation voice recording device wide application for lecture', 'o recorder, good sound quality 15h capacity durable easy operation voice recording device wide application for lecture', 'brand 34', TRUE, 48, 135.79, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Som e Vídeo Portáteis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5a32629e-8cac-483c-a45b-1d388e3efa49', 97.82, 17.09, 90.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f6523ee4-9f4f-4400-bb20-8734aea4dddc', 'Lápis de cor jumbo triangular rainbow - 3 unid.', 'Lápis de cor jumbo triangular rainbow - 3 unid.', 'brand 26', TRUE, 27, 34.9, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f6523ee4-9f4f-4400-bb20-8734aea4dddc', 23.02, 76.91, 93.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5efab102-5283-46d4-b6d5-b25818cb6cd6', 'Vinho Salton Intenso Chardonnay Salton Abbuoto', 'Vinho Salton Intenso Chardonnay Salton Abbuoto', 'brand 95', TRUE, 58, 32.79, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Bebidas Alcoólicas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5efab102-5283-46d4-b6d5-b25818cb6cd6', 83.12, 43.42, 83.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2225d1f6-93ed-497d-9d3c-c8adedd26803', 'BAIRONG Ventilador oscilante para carrinho – Mini mão, tripé flexível para polvo com USB recarregável, pequenos baixo ruído para assento carro, acampamento, esteira', 'BAIRONG Ventilador oscilante para carrinho – Mini mão, tripé flexível para polvo com USB recarregável, pequenos baixo ruído para assento carro, acampamento, esteira', 'brand 72', TRUE, 96, 0.0, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Produtos de Passeio e Viagem para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2225d1f6-93ed-497d-9d3c-c8adedd26803', 13.04, 44.79, 20.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('59cc76a9-0eac-4958-a346-487907eaadf5', 'Satchel limpável, firme, kits de acessórios em excursão; passeio longo; sashay; acampamento; viagens ao ar livre, 450 x 300 x 180 (MM), vermelha, 1 bolsa escolar de viagem / bolsa esportiva, Vermelho, 450x300x180(MM)', 'Satchel limpável, firme, kits de acessórios em excursão; passeio longo; sashay; acampamento; viagens ao ar livre, 450 x 300 x 180 (MM), vermelha, 1 bolsa escolar de viagem / bolsa esportiva, Vermelho, 450x300x180(MM)', 'brand 61', TRUE, 45, 114.24, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('59cc76a9-0eac-4958-a346-487907eaadf5', 84.42, 96.5, 62.88);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('245d6696-c058-4638-bbb6-12fca68ea156', 'ibasenice 1Pc Caixa De Armazenamento Dobrável Caso Tronco Do Carro Organizador De Armazenamento De Carga Organizador De Armazenamento De Carga Recipiente De Carro Dobrável Caixa De', 'ibasenice 1Pc Caixa De Armazenamento Dobrável Caso Tronco Do Carro Organizador De Armazenamento De Carga Organizador De Armazenamento De Carga Recipiente De Carro Dobrável Caixa De', 'brand 22', TRUE, 67, 362.49, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Cuidados Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('245d6696-c058-4638-bbb6-12fca68ea156', 66.9, 93.14, 20.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('91a46b9f-0c38-4e1b-b48f-2a972fde96d3', '100 Tiras Fitas Reagentes Contour Plus Original', '100 Tiras Fitas Reagentes Contour Plus Original', 'brand 96', TRUE, 47, 109.0, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Saúde e Cuidados Pessoais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('91a46b9f-0c38-4e1b-b48f-2a972fde96d3', 74.4, 89.05, 62.77);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9d560966-de76-4bf1-9708-24f1196206d9', 'Mini calculadora eletrônica portátil de bolso com dígitos de PVC cor doce com botões de silicone e fivela de chaveiro (azul)', 'Mini calculadora eletrônica portátil de bolso com dígitos de PVC cor doce com botões de silicone e fivela de chaveiro (azul)', 'brand 78', TRUE, 39, 0.0, '23d25028-a6e6-4134-ab47-9c3af97a1208', 'Calculadoras', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9d560966-de76-4bf1-9708-24f1196206d9', 10.51, 28.56, 78.98);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('19a65782-eb47-4170-bdad-dc061ed8d3ba', 'Residencial Câmara, 136, Vila Primeiro De Maio, 98575-492 Almeida de Minas / RS', 650, 'casa', 'Ramos Verde', '32218-254', 'Dias da Prata', 'Amazonas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('19a65782-eb47-4170-bdad-dc061ed8d3ba', -306619933, 765846312, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('ec6ca2fd-10bf-489f-9e91-b724a040ad76', 'Sr. Yan Aragão', 'gael42@example.org', 'V0Wt&bzY!z', '(051) 2597-4578', NULL, NOW(), NOW(), 'Sr.', '19a65782-eb47-4170-bdad-dc061ed8d3ba');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('007cb900-373d-4493-b952-2e0fe203315f', 'Recanto José Pedro Gomes, 91, Minas Brasil, 27379-479 Ramos / SP', 462, 'comercial', 'Freitas', '18280-233', 'da Mata', 'Ceará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('007cb900-373d-4493-b952-2e0fe203315f', -738097479, 1302522121, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('3388e068-c5f7-4476-af1e-51c864cf0094', 'Brito', '9:00-18:00', '+55 (071) 9989-7778', '73409285105', '007cb900-373d-4493-b952-2e0fe203315f');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('f9132e17-9280-41e7-85c0-8e43420e4662', 'ec6ca2fd-10bf-489f-9e91-b724a040ad76', '89375026159', NOW(), '3388e068-c5f7-4476-af1e-51c864cf0094');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8409ae16-0446-4133-aea5-42128ad08891', 'Carvão Vegetal Fino 500g - Helliantus', 'Carvão Vegetal Fino 500g - Helliantus', 'brand 81', TRUE, 37, 9.8, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Jardim e Piscina', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8409ae16-0446-4133-aea5-42128ad08891', 86.73, 79.29, 81.93);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('97cbf0e3-115f-478e-9173-9b78a6bda83a', 'iplusmile Brinquedos Para Mastigar 10 Peças Brinquedos Esportivos Brinquedo Para Animais De Estimação Rato Gato Brinquedo Bastão Gatinho Brinquedos Para Gatos Vara Pelúcia Café', 'iplusmile Brinquedos Para Mastigar 10 Peças Brinquedos Esportivos Brinquedo Para Animais De Estimação Rato Gato Brinquedo Bastão Gatinho Brinquedos Para Gatos Vara Pelúcia Café', 'brand 11', TRUE, 73, 0.0, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('97cbf0e3-115f-478e-9173-9b78a6bda83a', 21.91, 98.34, 56.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e81c3bdb-929d-421a-a034-825eb9d4db28', 'Beavorty 1 Conjunto De Máquina De Pá Para Limpeza De Rosto Purificadores De Rosto Limpador De Acne Limpador De Levantamento De Facial Ferramenta De Beleza De', 'Beavorty 1 Conjunto De Máquina De Pá Para Limpeza De Rosto Purificadores De Rosto Limpador De Acne Limpador De Levantamento De Facial Ferramenta De Beleza De', 'brand 79', TRUE, 66, 0.0, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e81c3bdb-929d-421a-a034-825eb9d4db28', 68.08, 16.89, 63.18);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4dfa2209-6eee-4cae-8865-5536ea215143', 'Jogo Quem É Você?', 'Jogo Quem É Você?', 'brand 15', TRUE, 41, 54.9, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4dfa2209-6eee-4cae-8865-5536ea215143', 57.46, 34.71, 95.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3d3b45ac-c1f9-4d1b-b524-f817abca1acb', 'to IDE, disco rígido de 2,5 polegadas para adaptador de interface macho IDE de 44 pinos suporta ATA 66/100/133 para empresa de reparo de computador', 'to IDE, disco rígido de 2,5 polegadas para adaptador de interface macho IDE de 44 pinos suporta ATA 66/100/133 para empresa de reparo de computador', 'brand 88', TRUE, 86, 0.0, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3d3b45ac-c1f9-4d1b-b524-f817abca1acb', 95.79, 17.27, 21.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2e4b1257-6b6b-41e7-9595-b92181f992ba', 'Placa adaptadora Nvme M.2 SSD para PCIe 3.0 M.2 SSD para placa adaptadora 2 em 1 PCIe 3.0', 'Placa adaptadora Nvme M.2 SSD para PCIe 3.0 M.2 SSD para placa adaptadora 2 em 1 PCIe 3.0', 'brand 87', TRUE, 10, 47.64, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Memória e Armazenamento de Dados', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2e4b1257-6b6b-41e7-9595-b92181f992ba', 40.02, 93.8, 22.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d7b4e0de-f580-442e-b4f0-b2330b1cb3c6', 'Mikinona 1 Conjunto/6 Pçs Escova De Churrasco De Madeira Escova De Assar Espanador De Churrasco Espanador De Churrasco Escova De Cozimento Escova De Óleo Escova De Cozimento De Pano Escova', 'Mikinona 1 Conjunto/6 Pçs Escova De Churrasco De Madeira Escova De Assar Espanador De Churrasco Espanador De Churrasco Escova De Cozimento Escova De Óleo Escova De Cozimento De Pano Escova', 'brand 74', TRUE, 70, 91.95, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d7b4e0de-f580-442e-b4f0-b2330b1cb3c6', 78.26, 85.0, 85.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('970a1bdf-cef1-48b5-a8fa-60b8f49f7ef9', 'The Winning Walk', 'The Winning Walk', 'brand 90', TRUE, 39, 0.0, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Fire TV Stick Apps', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('970a1bdf-cef1-48b5-a8fa-60b8f49f7ef9', 70.84, 42.74, 48.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('41c90af0-723a-4194-b4f2-54c086322d5b', 'Incenso 100% Natural com Florais e Óleos Essenciais Almíscar', 'Incenso 100% Natural com Florais e Óleos Essenciais Almíscar', 'brand 30', TRUE, 31, 16.9, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Produtos de Decoração para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('41c90af0-723a-4194-b4f2-54c086322d5b', 72.0, 87.62, 98.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4296e88b-88fc-417f-8c4d-44e6f78a307d', 'Porta Revista de Metal para Mesa Ofício - Oikos', 'Porta Revista de Metal para Mesa Ofício - Oikos', 'brand 97', TRUE, 13, 76.9, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Produtos de Decoração para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4296e88b-88fc-417f-8c4d-44e6f78a307d', 78.68, 90.63, 84.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3b3a072f-2cd1-4809-8223-f11be8f90df5', 'JUNWU Triturador de papel, mini triturador portátil compacto para documentos, para casa, escritório, mesa de trabalho, máquina de corte manual com caixa de poeira transparente para notas financeiras, recibos (laranja)', 'JUNWU Triturador de papel, mini triturador portátil compacto para documentos, para casa, escritório, mesa de trabalho, máquina de corte manual com caixa de poeira transparente para notas financeiras, recibos (laranja)', 'brand 61', TRUE, 62, 0.0, '3388e068-c5f7-4476-af1e-51c864cf0094', 'Fragmentadoras', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3b3a072f-2cd1-4809-8223-f11be8f90df5', 77.52, 94.28, 13.78);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('06d9601f-c41b-433c-84f6-64c8673a433c', 'Trevo Liz Fogaça, 476, Lindéia, 99475932 Moura Paulista / MS', 407, 'casa', 'Martins Grande', '28746-545', 'Cirino do Sul', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('06d9601f-c41b-433c-84f6-64c8673a433c', 175141490, -183017500, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('112764d7-9699-4e72-85ee-b1320a4bb1b3', 'Enrico Barbosa', 'andresantos@example.com', ')3gyy1RqB%', '0300 251 0801', NULL, NOW(), NOW(), 'Enr', '06d9601f-c41b-433c-84f6-64c8673a433c');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('64ad4f9d-5597-4e2b-9c6d-80d6d8651f6b', 'Jardim José Miguel Cirino, 1, Beija Flor, 98231-300 Abreu Verde / BA', 179, 'comercial', 'Porto', '89892-915', 'Ribeiro do Galho', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('64ad4f9d-5597-4e2b-9c6d-80d6d8651f6b', -714428359, 897341347, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Gonçalves Garcia Ltda.', '9:00-18:00', '(084) 9618-1157', '37564098210', '64ad4f9d-5597-4e2b-9c6d-80d6d8651f6b');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('868b41ea-92e8-41c5-b543-beb4c1541d88', '112764d7-9699-4e72-85ee-b1320a4bb1b3', '71946083593', NOW(), 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3880472e-8550-4ce6-b4c2-e74e69424a26', 'Shampoo Proteção Reparadora Pracaxi 500mL - Betobita', 'Shampoo Proteção Reparadora Pracaxi 500mL - Betobita', 'brand 53', TRUE, 87, 72.3, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3880472e-8550-4ce6-b4c2-e74e69424a26', 92.45, 73.29, 50.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d8a33826-ad1a-40ea-a433-a0f9c1a12aa4', 'Tela de Monitor de Laptop Dupla, Tela de Processamento de Multimídia Digital 1920 X 1080 Tela de Extensão Dupla Portátil para Casa (X50 Plugue dos EUA)', 'Tela de Monitor de Laptop Dupla, Tela de Processamento de Multimídia Digital 1920 X 1080 Tela de Extensão Dupla Portátil para Casa (X50 Plugue dos EUA)', 'brand 44', TRUE, 79, 0.0, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Monitores de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d8a33826-ad1a-40ea-a433-a0f9c1a12aa4', 96.62, 93.97, 36.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f70dcb40-7624-42d9-a122-e2532bfe4dbf', 'ZHANGQIANG Mala de viagem Mala de viagem Mala de negócios masculina de viagem, mala de viagem mala de viagem (cor: preto, tamanho: 50 * 21 * 32 cm) Double the comfort', 'ZHANGQIANG Mala de viagem Mala de viagem Mala de negócios masculina de viagem, mala de viagem mala de viagem (cor: preto, tamanho: 50 * 21 * 32 cm) Double the comfort', 'brand 14', TRUE, 47, 1803.99, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Malas de Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f70dcb40-7624-42d9-a122-e2532bfe4dbf', 84.58, 32.81, 64.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b387ba31-582b-41b6-b1d3-172274771f38', 'Echo Studio | O som mais extraordinário com Alexa - com Dolby Atmos e tecnologia de processamento de áudio espacial | Cor branca', 'Echo Studio | O som mais extraordinário com Alexa - com Dolby Atmos e tecnologia de processamento de áudio espacial | Cor branca', 'brand 83', TRUE, 6, 1619.1, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b387ba31-582b-41b6-b1d3-172274771f38', 11.39, 68.14, 50.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f5bc9b05-1d0f-4e1e-abc6-24818caa3e7b', 'Simpol Leaf Planta Caderno Natureza Folhas Soltas Diário Recarregável Diário Papelaria', 'Simpol Leaf Planta Caderno Natureza Folhas Soltas Diário Recarregável Diário Papelaria', 'brand 48', TRUE, 77, 0.0, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Cadernos, Blocos e Diários', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f5bc9b05-1d0f-4e1e-abc6-24818caa3e7b', 83.47, 45.77, 18.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b75201e6-b73d-4382-aeba-200eb6b10b5c', 'Mangueira Reforçada Jardim Luxo Quintal Verde 3/4-15m', 'Mangueira Reforçada Jardim Luxo Quintal Verde 3/4-15m', 'brand 48', TRUE, 82, 184.13, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Equipamentos de Rega para Grama e Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b75201e6-b73d-4382-aeba-200eb6b10b5c', 44.35, 40.93, 12.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d188e860-3b54-4d09-891f-cec0506eb084', 'ALG. BOLAS TOPZ 95G CX C/20', 'ALG. BOLAS TOPZ 95G CX C/20', 'brand 78', TRUE, 81, 9.89, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d188e860-3b54-4d09-891f-cec0506eb084', 95.6, 60.17, 88.74);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('539aca7e-de85-42fc-916d-b3d7f8ad857f', 'Prancheta Portátil em Fórmica com 3 mm de Espessura, Trident 48-A3F, Branco, Formato A3', 'Prancheta Portátil em Fórmica com 3 mm de Espessura, Trident 48-A3F, Branco, Formato A3', 'brand 12', TRUE, 7, 93.53, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('539aca7e-de85-42fc-916d-b3d7f8ad857f', 10.56, 14.53, 79.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ec8f7220-ddbb-42f8-9680-8d33483d2b26', 'Caneta Esferográfica – STABILO Liner 808 – Pacote com 1 unidade – Azul', 'Caneta Esferográfica – STABILO Liner 808 – Pacote com 1 unidade – Azul', 'brand 67', TRUE, 75, 9.3, 'eca0edd9-ff59-4a8b-b286-6bddbb6aa4cd', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ec8f7220-ddbb-42f8-9680-8d33483d2b26', 46.4, 96.18, 79.63);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('654c67ea-1649-4d71-a25b-215f3fab37dd', 'Conjunto Nascimento, 6, Piratininga, 73330-270 da Conceição / RO', 592, 'casa', 'Peixoto Paulista', '87930-979', 'Borges', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('654c67ea-1649-4d71-a25b-215f3fab37dd', -473218996, -99177553, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('3e6cb296-e66a-4e63-8bca-ea6dfdb338d2', 'Luiz Felipe Souza', 'cunhaana-luiza@example.org', 'vKSX1Gn*^3', '+55 81 9634-4711', NULL, NOW(), NOW(), 'Lui', '654c67ea-1649-4d71-a25b-215f3fab37dd');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('82b3db1a-2cbd-4221-8293-7b01b94f0d7a', 'Sítio Campos, 406, Inconfidência, 73466-274 da Rocha Paulista / SP', 278, 'comercial', 'da Cunha', '95183-486', 'Vieira', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('82b3db1a-2cbd-4221-8293-7b01b94f0d7a', -273642794, 1713160760, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Barbosa', '9:00-18:00', '(041) 3925-3033', '18304962713', '82b3db1a-2cbd-4221-8293-7b01b94f0d7a');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('cd3bd61a-3cde-4afb-9eac-0137a753d322', '3e6cb296-e66a-4e63-8bca-ea6dfdb338d2', '87241659058', NOW(), '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('366ef0b6-524f-405b-abdb-1134bcdcd0de', 'Pacote com 2 câmeras WiFi, câmera de segurança HD 1080P câmera sem fio com detecção de movimento de visão noturna, câmera de vídeo pequena sem fio para segurança interna em casa e ao ar livre', 'Pacote com 2 câmeras WiFi, câmera de segurança HD 1080P câmera sem fio com detecção de movimento de visão noturna, câmera de vídeo pequena sem fio para segurança interna em casa e ao ar livre', 'brand 60', TRUE, 44, 0.0, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Proteção e Segurança', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('366ef0b6-524f-405b-abdb-1134bcdcd0de', 68.78, 69.07, 76.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('23e27247-c7ec-49e0-afdf-1735b3f21dc1', 'Suporte para óculos de animais - Suporte para óculos | Suporte para óculos criativo, suporte para óculos de quebra-cabeça de madeira 3D para decoração de mesa em', 'Suporte para óculos de animais - Suporte para óculos | Suporte para óculos criativo, suporte para óculos de quebra-cabeça de madeira 3D para decoração de mesa em', 'brand 86', TRUE, 41, 21.89, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'PlayStation 5, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('23e27247-c7ec-49e0-afdf-1735b3f21dc1', 79.82, 72.08, 53.89);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e9536ab0-3f8c-464c-951a-c02920ffee85', 'Toddmomy Bolas E Copos Classificador de Cores Bolas de Madeira Em Copos Brinquedo Montessori Jogo Classificador de Madeira Classificação E Contagem Pré-Escolar Aprendizagem Brinquedos', 'Toddmomy Bolas E Copos Classificador de Cores Bolas de Madeira Em Copos Brinquedo Montessori Jogo Classificador de Madeira Classificação E Contagem Pré-Escolar Aprendizagem Brinquedos', 'brand 83', TRUE, 98, 174.49, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e9536ab0-3f8c-464c-951a-c02920ffee85', 66.92, 31.67, 38.54);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('692ac23e-e572-4924-83d5-c1a432f26ed5', 'Azeite de Oliva Extravirgem Intenso Batalha 500g', 'Azeite de Oliva Extravirgem Intenso Batalha 500g', 'brand 9', TRUE, 75, 80.5, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Óleos, Azeites, Vinagres e Molhos para Salada', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('692ac23e-e572-4924-83d5-c1a432f26ed5', 26.92, 49.9, 47.68);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1ea2216c-ae8f-43a4-8ec8-cba0a35e83d4', 'FAVOMOTO 1 peça reservatório de resfriamento automotivo tanque de carro para expansão do motor de automóvel refrigerante montado no radiador recuperação de veículo útil profissional garrafa de água transbordamento', 'FAVOMOTO 1 peça reservatório de resfriamento automotivo tanque de carro para expansão do motor de automóvel refrigerante montado no radiador recuperação de veículo útil profissional garrafa de água transbordamento', 'brand 64', TRUE, 83, 85.29, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Peças e Acessórios para Automóveis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1ea2216c-ae8f-43a4-8ec8-cba0a35e83d4', 50.08, 28.07, 39.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('589230ec-72d8-4e28-9d1f-fb571e7eab04', 'CAXUSD 1 folha de adesivo de parede mural de flores decalques de flores decoração de escritório decalque de parede interior adesivo de sala de estar adesivos de parede murais adesivo de parede ramo flor pássaro decalque de parede PVC', 'CAXUSD 1 folha de adesivo de parede mural de flores decalques de flores decoração de escritório decalque de parede interior adesivo de sala de estar adesivos de parede murais adesivo de parede ramo flor pássaro decalque de parede PVC', 'brand 86', TRUE, 37, 116.67, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('589230ec-72d8-4e28-9d1f-fb571e7eab04', 97.68, 14.47, 21.78);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0291ac89-5d2d-4500-b3ec-7856bd82fb5e', 'MUSISALY Vento Beija-Flor Giradores Ao Ar Livre Guarnição De Aço Inoxidável Decoração Colorida Giradores De Vento Ornamento Vento De Metal Ornamento Giratório Coletores De Vento Beija-Flor', 'MUSISALY Vento Beija-Flor Giradores Ao Ar Livre Guarnição De Aço Inoxidável Decoração Colorida Giradores De Vento Ornamento Vento De Metal Ornamento Giratório Coletores De Vento Beija-Flor', 'brand 49', TRUE, 37, 64.53, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0291ac89-5d2d-4500-b3ec-7856bd82fb5e', 97.28, 39.93, 74.72);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6cb7e103-1219-49ab-a96c-f5fcef3294bc', 'O Homem De La Mancha', 'O Homem De La Mancha', 'brand 43', TRUE, 47, 0.0, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Filmes', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6cb7e103-1219-49ab-a96c-f5fcef3294bc', 81.88, 97.72, 13.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9b8a6946-ab99-4c90-a1b8-51390d8562dc', 'Cortina Blackout PVC com Tecido Voil 2,00 m x 1,40 m Preto', 'Cortina Blackout PVC com Tecido Voil 2,00 m x 1,40 m Preto', 'brand 10', TRUE, 2, 66.99, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Cama, Mesa e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9b8a6946-ab99-4c90-a1b8-51390d8562dc', 29.79, 35.81, 95.62);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('16eec596-abaa-484a-9e4a-eba34766cc95', '40 Peças De Ovos De Combinando Brinquedos Pré-Escolares Brinquedos Interessantes Para Crianças Brinquedos De Dinossauros Para Crianças Brinquedos Para Crianças', '40 Peças De Ovos De Combinando Brinquedos Pré-Escolares Brinquedos Interessantes Para Crianças Brinquedos De Dinossauros Para Crianças Brinquedos Para Crianças', 'brand 72', TRUE, 81, 426.79, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Brinquedos de Construir e de Montar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('16eec596-abaa-484a-9e4a-eba34766cc95', 63.34, 37.0, 86.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e1d36dcd-d8e9-442a-9471-b58215ed41ce', 'Bolsas femininas em forma de coração com diamantes corrente bolsa de ombro bolsa de mão para festa casamento (vermelho), Vermelho, One Size, Diagonal', 'Bolsas femininas em forma de coração com diamantes corrente bolsa de ombro bolsa de mão para festa casamento (vermelho), Vermelho, One Size, Diagonal', 'brand 31', TRUE, 54, 74.29, '3ff34bdc-9572-4903-9cb7-a8fbce84f4d9', 'Bolsas de Mão e Ombro Femininas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e1d36dcd-d8e9-442a-9471-b58215ed41ce', 12.48, 20.63, 84.94);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('cea4c130-0b96-466e-93fc-c3217c5b0eb7', 'Parque de Aragão, 78, Jardim Montanhês, 11534818 Viana / PR', 7, 'casa', 'Correia da Mata', '77313-593', 'Gonçalves', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('cea4c130-0b96-466e-93fc-c3217c5b0eb7', 689540002, -497133240, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4045dd93-1bc1-4b79-bf17-6946cf8a9624', 'Dra. Lívia da Conceição', 'thalesduarte@example.net', '5_P4IeaghO', '(011) 4365-3226', NULL, NOW(), NOW(), 'Dra', 'cea4c130-0b96-466e-93fc-c3217c5b0eb7');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('e21ba45e-d28d-4f82-9acb-86fd4775592d', 'Lago Gomes, 5, Conjunto Novo Dom Bosco, 98812-592 Azevedo / RR', 878, 'comercial', 'Cunha de Moreira', '73068-855', 'Jesus', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('e21ba45e-d28d-4f82-9acb-86fd4775592d', 428345103, -1037185798, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('4256513b-a839-4454-b607-de11d815a28f', 'Mendonça', '9:00-18:00', '0800-181-3563', '73189640203', 'e21ba45e-d28d-4f82-9acb-86fd4775592d');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('b3ab9668-8f12-4d45-bf6e-c45d84ce734e', '4045dd93-1bc1-4b79-bf17-6946cf8a9624', '15638974075', NOW(), '4256513b-a839-4454-b607-de11d815a28f');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6734393b-376e-45f5-9888-37d09a6f995b', 'Bolsa de maquiagem de rosa vermelha, bolsa de higiene pessoal de grande capacidade para mulheres e homens, à prova d'água, kit de acessórios de viagem com flores, organizador portátil de cosméticos de viagem com gancho para pendurar e 4 compartimentos, Happy, ouro, Medium', 'Bolsa de maquiagem de rosa vermelha, bolsa de higiene pessoal de grande capacidade para mulheres e homens, à prova d'água, kit de acessórios de viagem com flores, organizador portátil de cosméticos de viagem com gancho para pendurar e 4 compartimentos, Happy, ouro, Medium', 'brand 46', TRUE, 71, 116.04, '4256513b-a839-4454-b607-de11d815a28f', 'Acessórios para Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6734393b-376e-45f5-9888-37d09a6f995b', 66.27, 61.57, 84.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('021ef653-94f6-4f55-86a2-f079a5c914cc', 'Beatifufu Babadores 2 Peças 2 Pacotes De Lenços Babadores Babadores Para Babadores Bandana Babadores Para Suprimentos Babadores Babadores Pano Ondulado Cachecol Triangular Desenhos Animados', 'Beatifufu Babadores 2 Peças 2 Pacotes De Lenços Babadores Babadores Para Babadores Bandana Babadores Para Suprimentos Babadores Babadores Pano Ondulado Cachecol Triangular Desenhos Animados', 'brand 14', TRUE, 50, 37.22, '4256513b-a839-4454-b607-de11d815a28f', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('021ef653-94f6-4f55-86a2-f079a5c914cc', 77.42, 30.24, 66.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fa466839-a71e-41e6-9407-1e1421a08297', 'Bingo Do Varalzinho', 'Bingo Do Varalzinho', 'brand 45', TRUE, 4, 38.83, '4256513b-a839-4454-b607-de11d815a28f', 'Jogos de Tabuleiro', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fa466839-a71e-41e6-9407-1e1421a08297', 36.86, 57.02, 58.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2c00c402-3c80-4764-932a-46058123b525', 'BATTLE MELON', 'BATTLE MELON', 'brand 61', TRUE, 36, 0.0, '4256513b-a839-4454-b607-de11d815a28f', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2c00c402-3c80-4764-932a-46058123b525', 79.96, 88.36, 68.08);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('eed8cb13-33ff-4554-bbb2-35c6bae2a5b6', 'Armações de Óculos de Prescrição Piloto Persol PO3160V, Havana, 52 mm', 'Armações de Óculos de Prescrição Piloto Persol PO3160V, Havana, 52 mm', 'brand 11', TRUE, 93, 1060.0, '4256513b-a839-4454-b607-de11d815a28f', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('eed8cb13-33ff-4554-bbb2-35c6bae2a5b6', 13.43, 34.46, 24.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('acf1a39d-4d37-49c6-b55f-c08c4beed5db', 'Rolo facial de beleza, evita rugas, reduz os poros, rosa, acalma a pele para salão de beleza', 'Rolo facial de beleza, evita rugas, reduz os poros, rosa, acalma a pele para salão de beleza', 'brand 17', TRUE, 3, 76.09, '4256513b-a839-4454-b607-de11d815a28f', 'Produtos para Cuidados com o Rosto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('acf1a39d-4d37-49c6-b55f-c08c4beed5db', 39.54, 45.82, 69.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a80c97b3-ec33-426b-81ba-84b57dd3f8d5', 'Colete de lã infantil infantil com calendário chinês para o ano novo, sem mangas, tradicional, para uso no inverno', 'Colete de lã infantil infantil com calendário chinês para o ano novo, sem mangas, tradicional, para uso no inverno', 'brand 17', TRUE, 52, 26.11, '4256513b-a839-4454-b607-de11d815a28f', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a80c97b3-ec33-426b-81ba-84b57dd3f8d5', 24.32, 61.92, 45.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8a17d4df-cd79-4b1d-b867-aaba68c2aa21', 'Moniss Conjunto de terminais de cabo de crimpagem 260PCS Kit termorretrátil Conector elétrico de fio isolado Caixa sortida com alicate removedor de fio portátil', 'Moniss Conjunto de terminais de cabo de crimpagem 260PCS Kit termorretrátil Conector elétrico de fio isolado Caixa sortida com alicate removedor de fio portátil', 'brand 71', TRUE, 36, 161.14, '4256513b-a839-4454-b607-de11d815a28f', 'Ferramentas Manuais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8a17d4df-cd79-4b1d-b867-aaba68c2aa21', 20.87, 28.15, 93.79);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('527fed81-781b-46af-9fdc-a93ece1e42ce', 'Detector de Vazamento de Tubo de Água Detector de Vazamento Ampliação Ajustável Alta Precisão 4 Modo de Frequência Uso Doméstico Plugue dos EUA', 'Detector de Vazamento de Tubo de Água Detector de Vazamento Ampliação Ajustável Alta Precisão 4 Modo de Frequência Uso Doméstico Plugue dos EUA', 'brand 3', TRUE, 64, 0.0, '4256513b-a839-4454-b607-de11d815a28f', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('527fed81-781b-46af-9fdc-a93ece1e42ce', 89.06, 98.03, 54.36);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0c71ca67-a186-46c3-ab50-3075cc0237f2', 'Alphabets Color by Number Book - Grownups Paint + Glitter + Crayon + Oil Paint Coloring Pages', 'Alphabets Color by Number Book - Grownups Paint + Glitter + Crayon + Oil Paint Coloring Pages', 'brand 69', TRUE, 36, 51.57, '4256513b-a839-4454-b607-de11d815a28f', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0c71ca67-a186-46c3-ab50-3075cc0237f2', 39.7, 12.98, 94.66);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('fa315d77-fda5-464c-80de-2dcfafd3c754', 'Praça Barros, 195, Vila Paquetá, 89524211 Souza / RN', 253, 'casa', 'Rios', '77415-111', 'Marques Paulista', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('fa315d77-fda5-464c-80de-2dcfafd3c754', -217650124, 523850158, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('194ed5b2-6e78-424b-80d6-e30c90b91532', 'Caroline Teixeira', 'maria-alice99@example.net', 'd8Kps8pn%L', '+55 61 9649-7920', NULL, NOW(), NOW(), 'Car', 'fa315d77-fda5-464c-80de-2dcfafd3c754');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c0c4a2ea-1daf-4380-8b6f-088f74bbfe39', 'Chácara Barbosa, 84, Vila Da Luz, 97330826 Cavalcanti / PE', 391, 'comercial', 'Mendes', '24487-253', 'Jesus', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c0c4a2ea-1daf-4380-8b6f-088f74bbfe39', 690514532, 1606030544, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Alves', '9:00-18:00', '+55 (021) 7494-0813', '82054167371', 'c0c4a2ea-1daf-4380-8b6f-088f74bbfe39');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('e4a6531e-5e72-4771-872c-c0113644e720', '194ed5b2-6e78-424b-80d6-e30c90b91532', '60952741334', NOW(), '27fff621-db0d-4ee6-b692-3ddb727c59e7');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('232cc686-b4da-4646-87e6-72fd8fbe4815', 'Conjunto de joelheiras 6 Kit protetor Joelheiras Joelheiras Protetores de pulso Conjunto de equipamentos de proteção Almofadas de proteção de segurança para andar de bicicleta de skate', 'Conjunto de joelheiras 6 Kit protetor Joelheiras Joelheiras Protetores de pulso Conjunto de equipamentos de proteção Almofadas de proteção de segurança para andar de bicicleta de skate', 'brand 63', TRUE, 34, 140.41, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Skates, Patins, Patinetes e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('232cc686-b4da-4646-87e6-72fd8fbe4815', 77.52, 24.16, 39.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('36477184-a7cf-461e-b94e-9bb0f01eaf9b', 'Capa de bagagem feminina africana serve para malas de viagem de 45 a 81 cm, protetor de elastano, Multi, Medium Cover(Fits 22-24 inch luggage),', 'Capa de bagagem feminina africana serve para malas de viagem de 45 a 81 cm, protetor de elastano, Multi, Medium Cover(Fits 22-24 inch luggage),', 'brand 89', TRUE, 36, 174.19, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Malas de Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('36477184-a7cf-461e-b94e-9bb0f01eaf9b', 34.57, 15.85, 76.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0812cac1-d824-4774-9753-7352f1a650dd', 'História para matar a mulher boa', 'História para matar a mulher boa', 'brand 50', TRUE, 42, 48.3, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Novidades da Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0812cac1-d824-4774-9753-7352f1a650dd', 96.7, 16.64, 35.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('216d9693-ebe4-45ab-81ce-9a8983a07454', 'SAFIGLE 3 Peças Enfeite De Cachorro Bobble Decorações De Bolo Carros Para Crianças Mini Painel Enfeite De Interior De Carro Cabeça Balançando Carro De Cachorro Balançando A Cabeça', 'SAFIGLE 3 Peças Enfeite De Cachorro Bobble Decorações De Bolo Carros Para Crianças Mini Painel Enfeite De Interior De Carro Cabeça Balançando Carro De Cachorro Balançando A Cabeça', 'brand 28', TRUE, 84, 134.95, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Colecionáveis e Miniaturas para Hobby', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('216d9693-ebe4-45ab-81ce-9a8983a07454', 67.08, 67.71, 39.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('efc8b1bb-1d18-4835-accb-468054d698a1', '-100,0mV - 1000,0mV Gerador de Sinal Milivolt Display LED Gerador de Fun??o de Tens?o Ajust¨¢vel DC 5-24V', '-100,0mV - 1000,0mV Gerador de Sinal Milivolt Display LED Gerador de Fun??o de Tens?o Ajust¨¢vel DC 5-24V', 'brand 62', TRUE, 33, 78.38, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Jardim e Piscina', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('efc8b1bb-1d18-4835-accb-468054d698a1', 81.8, 26.46, 65.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fb13b09d-1626-4ebf-b669-8e6955add9b3', 'ABOOFAN 1 Conjunto De Suplemento Alimentar Garfo E Colher Ternos Do Bebê Talheres Da Criança Presente Do Bebê Crianças Colher De Alimentação Garfo Colher De Auto Alimentação Do Bebê', 'ABOOFAN 1 Conjunto De Suplemento Alimentar Garfo E Colher Ternos Do Bebê Talheres Da Criança Presente Do Bebê Crianças Colher De Alimentação Garfo Colher De Auto Alimentação Do Bebê', 'brand 70', TRUE, 7, 45.39, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Alimentação de Bebês e Crianças Pequenas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fb13b09d-1626-4ebf-b669-8e6955add9b3', 61.86, 27.78, 49.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7906c603-bf45-431b-a5e4-635a692849e8', 'Overgrip Adidas Padel e Beach Tennis X3 Branco', 'Overgrip Adidas Padel e Beach Tennis X3 Branco', 'brand 48', TRUE, 11, 69.9, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Esportes com Raquete', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7906c603-bf45-431b-a5e4-635a692849e8', 59.09, 73.23, 41.69);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('07ea1a2c-ae51-47e8-a209-d22915f86607', 'NIVEA MEN Bálsamo Pós Barba Original Protect 100ml - Atua na recuperação da pele, cuidado e hidratação, fórmula leve, com Aloe Vera e Glicerina, sensação de alívio imediato', 'NIVEA MEN Bálsamo Pós Barba Original Protect 100ml - Atua na recuperação da pele, cuidado e hidratação, fórmula leve, com Aloe Vera e Glicerina, sensação de alívio imediato', 'brand 48', TRUE, 6, 25.13, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('07ea1a2c-ae51-47e8-a209-d22915f86607', 50.09, 14.16, 97.2);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b61b24b4-37df-49e6-9b1e-b1a6d07838d2', 'Pinças, antiestática elástica ampla aplicação de reparo pinças de alta dureza para eletrônicos', 'Pinças, antiestática elástica ampla aplicação de reparo pinças de alta dureza para eletrônicos', 'brand 9', TRUE, 84, 56.59, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b61b24b4-37df-49e6-9b1e-b1a6d07838d2', 53.57, 49.53, 69.33);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3f76210d-8666-4c9e-b701-4e6c9d98ba8f', 'Eudora Kit Niina Iluminador Rosé + Blush Pêssego Secreto', 'Eudora Kit Niina Iluminador Rosé + Blush Pêssego Secreto', 'brand 52', TRUE, 74, 129.9, '27fff621-db0d-4ee6-b692-3ddb727c59e7', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3f76210d-8666-4c9e-b701-4e6c9d98ba8f', 24.34, 76.19, 87.43);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('24b3a480-e01f-462d-b3c0-481449368421', 'Trevo Felipe Cassiano, 519, Vale Do Jatoba, 40855086 Rios Grande / RS', 904, 'casa', 'Pinto', '72213-983', 'Viana de Novais', 'Pernambuco');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('24b3a480-e01f-462d-b3c0-481449368421', -399101284, 1054752609, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('29ac0f89-1516-4afb-ae2f-66cd77a219e8', 'João Gonçalves', 'ypeixoto@example.net', '#8WfI2bvK8', '+55 (071) 7969-9383', NULL, NOW(), NOW(), 'Joã', '24b3a480-e01f-462d-b3c0-481449368421');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('a57b7a69-4f47-4615-a292-57194d7f49cd', 'Viaduto de Pastor, 35, Buritis, 89847-702 Nascimento do Norte / GO', 986, 'comercial', 'Peixoto', '93981-501', 'Souza Grande', 'Pará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('a57b7a69-4f47-4615-a292-57194d7f49cd', -576173928, -778465372, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Viana Lima e Filhos', '9:00-18:00', '(051) 2026-7577', '65471908384', 'a57b7a69-4f47-4615-a292-57194d7f49cd');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('5c7ca2eb-8f63-4eb0-8f02-f1d87b30fbf1', '29ac0f89-1516-4afb-ae2f-66cd77a219e8', '19684052324', NOW(), '00b96ac3-7de0-443d-93a5-26da67edc7ed');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d69c58c9-04c4-49a1-b757-4d354cfcf7de', 'VILLCASE 1 Conjunto De Fichário De Livro De Armazenamento De Mudança Fichário De Orçamento Pu Fichário De Economia De Dinheiro Portátil Planejador De Notebook Cupons Zip Carteira Fichário', 'VILLCASE 1 Conjunto De Fichário De Livro De Armazenamento De Mudança Fichário De Orçamento Pu Fichário De Economia De Dinheiro Portátil Planejador De Notebook Cupons Zip Carteira Fichário', 'brand 100', TRUE, 9, 96.39, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d69c58c9-04c4-49a1-b757-4d354cfcf7de', 66.88, 49.81, 37.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b40dc2b3-43f7-42b5-bfc4-87a3f193ffd0', 'Base do suporte da máquina de lavar Base do suporte da máquina de lavar Carrinho de geladeira móvel Comprimento/largura ajustável 47-70 cm Suporte de rolo de secador e geladeira', 'Base do suporte da máquina de lavar Base do suporte da máquina de lavar Carrinho de geladeira móvel Comprimento/largura ajustável 47-70 cm Suporte de rolo de secador e geladeira', 'brand 80', TRUE, 91, 819.99, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Eletrodomésticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b40dc2b3-43f7-42b5-bfc4-87a3f193ffd0', 33.92, 61.35, 45.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('005fd886-7954-4581-a98e-c30997132376', 'Macarrão Spaghetto Quadrado La Molisana 500g', 'Macarrão Spaghetto Quadrado La Molisana 500g', 'brand 55', TRUE, 97, 14.85, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Grãos Secos, Arroz e Massas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('005fd886-7954-4581-a98e-c30997132376', 95.63, 63.65, 50.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('70b2235d-0c6a-49a3-8e1c-638ca4f81ddb', 'SHAMPOO AUSSIE TOTAL MIRACLE 778 ML', 'SHAMPOO AUSSIE TOTAL MIRACLE 778 ML', 'brand 59', TRUE, 63, 116.9, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('70b2235d-0c6a-49a3-8e1c-638ca4f81ddb', 75.43, 87.43, 51.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7e560dba-a9cf-42a2-945b-7eb0373cf607', 'Kit 4 Boleadores Metal Pasta Americana Biscuit Modelagem', 'Kit 4 Boleadores Metal Pasta Americana Biscuit Modelagem', 'brand 22', TRUE, 44, 25.9, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7e560dba-a9cf-42a2-945b-7eb0373cf607', 61.43, 31.37, 86.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c34124df-7be9-43af-b214-d359949b084d', 'Granado - Creme para Mãos Terrapeutics Lavanda 50ml', 'Granado - Creme para Mãos Terrapeutics Lavanda 50ml', 'brand 56', TRUE, 86, 20.61, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c34124df-7be9-43af-b214-d359949b084d', 11.63, 52.19, 68.56);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c6d3c243-a2b2-4aff-a6e5-dd28119b961e', 'Computadores para bicicletas', 'Computadores para bicicletas', 'brand 100', TRUE, 81, 242.3, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Eletrônicos e Aparelhos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c6d3c243-a2b2-4aff-a6e5-dd28119b961e', 17.87, 88.29, 53.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d628e5df-0c16-4bb5-b599-09d6385c283d', '305-4893, Chicote de Fio do Motor Tamanhos Padrão Chicote de Fiação do Injetor para Escavadeira CAT 320D', '305-4893, Chicote de Fio do Motor Tamanhos Padrão Chicote de Fiação do Injetor para Escavadeira CAT 320D', 'brand 1', TRUE, 4, 144.06, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Eletrônicos e Tecnologia Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d628e5df-0c16-4bb5-b599-09d6385c283d', 23.23, 67.19, 72.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bb371e8e-75ab-40e6-9c37-75c3096d8863', 'Capa Capinha Anti Shock Compatível Com Xiaomi 11t Pro (Tela 6.6), Maior Proteção para o seu Celular (C7COMPANY)', 'Capa Capinha Anti Shock Compatível Com Xiaomi 11t Pro (Tela 6.6), Maior Proteção para o seu Celular (C7COMPANY)', 'brand 54', TRUE, 36, 39.9, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Acessórios para Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bb371e8e-75ab-40e6-9c37-75c3096d8863', 44.99, 47.39, 74.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9a9b5dc1-8b0f-4c25-a04b-84a64d0a98a2', 'Motorista de motor de passo com dissipador de calor, whit Cabo USB Upgrade-Ability A4988 Motor de passo Driver, para Mega 2560 R3 CH340', 'Motorista de motor de passo com dissipador de calor, whit Cabo USB Upgrade-Ability A4988 Motor de passo Driver, para Mega 2560 R3 CH340', 'brand 80', TRUE, 93, 0.0, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9a9b5dc1-8b0f-4c25-a04b-84a64d0a98a2', 23.35, 60.57, 89.55);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d65e82d5-1202-4761-bc5e-deb7a6a1a6bf', 'Frasco para coleta de leite materno 2 unidades, SaveMilk, Incolor/Rosca/Disco De Vedação Verde Claro', 'Frasco para coleta de leite materno 2 unidades, SaveMilk, Incolor/Rosca/Disco De Vedação Verde Claro', 'brand 15', TRUE, 3, 25.9, '00b96ac3-7de0-443d-93a5-26da67edc7ed', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d65e82d5-1202-4761-bc5e-deb7a6a1a6bf', 78.8, 23.86, 42.04);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('73298d99-0b1d-483a-8e50-21b8ce748fea', 'Travessa Sales, 92, Maria Tereza, 64772-993 Novais / PA', 588, 'casa', 'Sá', '35780-400', 'Abreu de Minas', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('73298d99-0b1d-483a-8e50-21b8ce748fea', 437315100, -564868218, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('c26db080-f390-4ba3-b7f9-d819c1bce7cd', 'Heloisa Castro', 'luararodrigues@example.com', '3%z1oYpmrS', '(071) 0659 5698', NULL, NOW(), NOW(), 'Hel', '73298d99-0b1d-483a-8e50-21b8ce748fea');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b95dd50a-520c-4ac9-b85d-2328c12797aa', 'Trecho Olivia da Luz, 5, Conjunto São Francisco De Assis, 21776-489 Alves da Serra / AC', 325, 'comercial', 'Dias', '61749-215', 'Silva', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b95dd50a-520c-4ac9-b85d-2328c12797aa', -830711338, -489923479, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('24b453ca-51f7-4423-9789-791a9669e212', 'Pereira', '9:00-18:00', '(011) 2588-0091', '07465821371', 'b95dd50a-520c-4ac9-b85d-2328c12797aa');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('4fddd850-5021-4e6f-9218-65eea279491a', 'c26db080-f390-4ba3-b7f9-d819c1bce7cd', '43601982560', NOW(), '24b453ca-51f7-4423-9789-791a9669e212');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('90e71afd-54a0-4315-b2f5-89923a8b5000', 'Shanrya Tubo de irrigação, Tubo de irrigação por gotejamento de PVC 50 m / 164 pés para agricultura para jardins para gramados para canteiros de flores', 'Shanrya Tubo de irrigação, Tubo de irrigação por gotejamento de PVC 50 m / 164 pés para agricultura para jardins para gramados para canteiros de flores', 'brand 71', TRUE, 11, 143.99, '24b453ca-51f7-4423-9789-791a9669e212', 'Equipamentos de Rega para Grama e Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('90e71afd-54a0-4315-b2f5-89923a8b5000', 48.4, 39.45, 48.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0b6ca898-8fc6-4e57-bf0a-5d85bc588281', 'TEHAUX 3 Pçs A4 Fichário Caderno Segmentado Fichário Clipe De Caderno Fichário Clipe Fichário Coluna Inserção Clipes De Ligação Álbum De Fotos Fichário Planejadores Fichário Fixação', 'TEHAUX 3 Pçs A4 Fichário Caderno Segmentado Fichário Clipe De Caderno Fichário Clipe Fichário Coluna Inserção Clipes De Ligação Álbum De Fotos Fichário Planejadores Fichário Fixação', 'brand 12', TRUE, 61, 108.59, '24b453ca-51f7-4423-9789-791a9669e212', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0b6ca898-8fc6-4e57-bf0a-5d85bc588281', 13.84, 87.02, 13.45);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6dbfa23f-796f-4a53-83a8-5a9bf712fe03', 'Coleira Pet Xadrez Anti Perda De Nylon Com Detalhes Reflexivos E Sininho + Gravatinha Borboleta, Coleira Com Capa de Silicone Compativel Com Rastreador Airtag, Ideal Animais Pequenos Gatos E Cães, Possui Fivela De Segurança - NANDABELEZA* (ROSA)', 'Coleira Pet Xadrez Anti Perda De Nylon Com Detalhes Reflexivos E Sininho + Gravatinha Borboleta, Coleira Com Capa de Silicone Compativel Com Rastreador Airtag, Ideal Animais Pequenos Gatos E Cães, Possui Fivela De Segurança - NANDABELEZA* (ROSA)', 'brand 74', TRUE, 18, 57.99, '24b453ca-51f7-4423-9789-791a9669e212', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6dbfa23f-796f-4a53-83a8-5a9bf712fe03', 38.79, 74.39, 44.67);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('40deb559-afdb-4dee-8eef-0b7608a05c26', 'Fone de ouvido sem fio Bluetooth elegante em formato de coração (red)', 'Fone de ouvido sem fio Bluetooth elegante em formato de coração (red)', 'brand 88', TRUE, 69, 121.0, '24b453ca-51f7-4423-9789-791a9669e212', 'Fones de Ouvido', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('40deb559-afdb-4dee-8eef-0b7608a05c26', 85.93, 14.21, 49.01);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('69218d02-c962-4712-b222-f2a9a2f3d6d4', 'Socador Ecokitchen Mimo Style Bege', 'Socador Ecokitchen Mimo Style Bege', 'brand 6', TRUE, 69, 43.92, '24b453ca-51f7-4423-9789-791a9669e212', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('69218d02-c962-4712-b222-f2a9a2f3d6d4', 37.41, 18.52, 46.64);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('30b5e1d2-d1a2-4bf4-9be4-542ea659057f', 'Beaupretty 15 Peças Toucas De Banho De Salão Toucas De Proteção De Chuveiro De Plástico Touca De Banho Elástica Touca De Banho Touca De Banho Touca De Banho Descartável Touca Protetora De', 'Beaupretty 15 Peças Toucas De Banho De Salão Toucas De Proteção De Chuveiro De Plástico Touca De Banho Elástica Touca De Banho Touca De Banho Touca De Banho Descartável Touca Protetora De', 'brand 30', TRUE, 45, 97.54, '24b453ca-51f7-4423-9789-791a9669e212', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('30b5e1d2-d1a2-4bf4-9be4-542ea659057f', 82.52, 93.44, 38.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ba3ade1e-b3e0-475c-bd0c-3a0cb617c786', 'Slash!', 'Slash!', 'brand 12', TRUE, 78, 0.0, '24b453ca-51f7-4423-9789-791a9669e212', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ba3ade1e-b3e0-475c-bd0c-3a0cb617c786', 26.65, 62.28, 94.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3d449bd4-e8e2-4e22-9095-9ae1b84f12c2', 'Monitor Portátil para Laptop, Monitor Portátil Triplo de 14 Polegadas 1080P FHD IPS Extensor de Monitor Triplo, Tela Tripla Tipo C para Laptop, Telefone para PS3/4 e Mais (regulamentos dos EUA)', 'Monitor Portátil para Laptop, Monitor Portátil Triplo de 14 Polegadas 1080P FHD IPS Extensor de Monitor Triplo, Tela Tripla Tipo C para Laptop, Telefone para PS3/4 e Mais (regulamentos dos EUA)', 'brand 38', TRUE, 52, 0.0, '24b453ca-51f7-4423-9789-791a9669e212', 'Monitores de Computador', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3d449bd4-e8e2-4e22-9095-9ae1b84f12c2', 77.26, 53.54, 71.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4837be6a-670b-41b1-8613-b874fc5afc92', 'HAPINARY Faixa De Cabeça Infantil Chapéus E Bonés Para Meninas Laços De Cabelo Para Bebês Hijab Para Crianças Recém-Nascidos Envoltórios De Cabeça De Náilon Laço De Cabelo De Bebê Nó De', 'HAPINARY Faixa De Cabeça Infantil Chapéus E Bonés Para Meninas Laços De Cabelo Para Bebês Hijab Para Crianças Recém-Nascidos Envoltórios De Cabeça De Náilon Laço De Cabelo De Bebê Nó De', 'brand 63', TRUE, 25, 37.89, '24b453ca-51f7-4423-9789-791a9669e212', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4837be6a-670b-41b1-8613-b874fc5afc92', 41.32, 64.24, 41.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6886ab06-9f64-49af-a725-157efb280dc3', 'Bons Parceiros', 'Bons Parceiros', 'brand 91', TRUE, 94, 0.0, '24b453ca-51f7-4423-9789-791a9669e212', 'Novidades da Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6886ab06-9f64-49af-a725-157efb280dc3', 80.41, 66.25, 17.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4a895618-ec59-4ecb-8b5c-792f7cfeba84', 'Três Dedos de Morte', 'Três Dedos de Morte', 'brand 77', TRUE, 81, 0.0, '24b453ca-51f7-4423-9789-791a9669e212', 'eBooks Gratuitos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4a895618-ec59-4ecb-8b5c-792f7cfeba84', 76.73, 57.29, 51.57);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('85293ecf-a61b-42bd-a0ab-cab8f0f32cff', 'Via das Neves, 7, Nova Pampulha, 24181448 Cavalcanti / RN', 937, 'casa', 'Sales', '33038-634', 'Rezende do Oeste', 'Rondônia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('85293ecf-a61b-42bd-a0ab-cab8f0f32cff', -812523156, 1087023154, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('f7f5ba00-0f9e-4942-9fbd-e625fdf02101', 'Heloísa Silva', 'joao82@example.org', 'Zw%7Ewpe)1', '+55 (021) 2005 2354', NULL, NOW(), NOW(), 'Hel', '85293ecf-a61b-42bd-a0ab-cab8f0f32cff');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('0de203ee-7289-4a0c-b9b4-e3ef5fc6ef93', 'Lagoa Isis Nunes, 86, Solimoes, 21114357 Araújo de Barros / PI', 995, 'comercial', 'Peixoto de Duarte', '64061-662', 'Gonçalves', 'Pernambuco');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('0de203ee-7289-4a0c-b9b4-e3ef5fc6ef93', 657995926, 1656080813, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('4ab43ee4-f462-4766-8486-db8ec850484b', 'Silveira Montenegro Ltda.', '9:00-18:00', '(021) 4037 8977', '25476398155', '0de203ee-7289-4a0c-b9b4-e3ef5fc6ef93');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('b91d9791-d8de-4398-87d2-0be3408cdcb2', 'f7f5ba00-0f9e-4942-9fbd-e625fdf02101', '29385641042', NOW(), '4ab43ee4-f462-4766-8486-db8ec850484b');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3f364aca-f741-4c94-bb71-5072d324953a', 'Pedra Laranja para Afiar Facas 20 cm #400', 'Pedra Laranja para Afiar Facas 20 cm #400', 'brand 47', TRUE, 33, 0.0, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Utensílios de Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3f364aca-f741-4c94-bb71-5072d324953a', 33.61, 66.63, 40.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2ea64c1b-d9ba-4dfe-a1af-7aa1da58b44c', '1Pc Vintage Hallow-Out Unissex Natal Relógio Flor Para Padrão Adulto Floral Bolso Ano Pingente Retrô Cadeia Homens Aniversário Pendurado Desejos Antigos Café De Férias', '1Pc Vintage Hallow-Out Unissex Natal Relógio Flor Para Padrão Adulto Floral Bolso Ano Pingente Retrô Cadeia Homens Aniversário Pendurado Desejos Antigos Café De Férias', 'brand 73', TRUE, 73, 55.57, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2ea64c1b-d9ba-4dfe-a1af-7aa1da58b44c', 59.87, 84.54, 63.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6e63278e-bb9b-4a0c-8a81-15ba8e417449', 'ibasenice 5 Pçs Frasco De Perfume Difusor De Óleo Essencial Para Carro Óleo Essencial Difusor De Carro Vidro Essencial Pequeno Difusor De Óleo Essencial Frasco De Aroma Compacto Pequeno', 'ibasenice 5 Pçs Frasco De Perfume Difusor De Óleo Essencial Para Carro Óleo Essencial Difusor De Carro Vidro Essencial Pequeno Difusor De Óleo Essencial Frasco De Aroma Compacto Pequeno', 'brand 22', TRUE, 40, 71.39, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Cuidados Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6e63278e-bb9b-4a0c-8a81-15ba8e417449', 75.31, 58.37, 11.8);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('50113880-9c1f-44f1-bbeb-bbacbc7d1555', 'ibasenice 2 Peças Espelho Retrovisor Espelho Retrovisor Do Carro Espelho Retrovisor Acessórios Pendurados Acessórios Automotivos Guarnição Do Carro Strass Espelho Retrovisor Do Carro', 'ibasenice 2 Peças Espelho Retrovisor Espelho Retrovisor Do Carro Espelho Retrovisor Acessórios Pendurados Acessórios Automotivos Guarnição Do Carro Strass Espelho Retrovisor Do Carro', 'brand 43', TRUE, 80, 247.38, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Peças e Acessórios para Automóveis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('50113880-9c1f-44f1-bbeb-bbacbc7d1555', 36.69, 61.41, 47.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ba8dc732-b725-4a86-8ba3-2b1b02611f12', 'Mipcase Caixa De Alimentação De Répteis Tipo Gaveta A4 Portátil Pequena Cobra Terrário Gaiola De Lagarto Recipiente De Incubação Micro Habitat Caixa De Gaiola De Aranha', 'Mipcase Caixa De Alimentação De Répteis Tipo Gaveta A4 Portátil Pequena Cobra Terrário Gaiola De Lagarto Recipiente De Incubação Micro Habitat Caixa De Gaiola De Aranha', 'brand 7', TRUE, 32, 209.61, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Peixes e Animais Aquáticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ba8dc732-b725-4a86-8ba3-2b1b02611f12', 93.94, 12.13, 99.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('604cc3f3-c5f0-4ef2-b728-c53a9d7fb83a', 'Hand Grip Mola Com Ajuste 5kg A 60kg Fisioterapia Fitness Marca Ancelly', 'Hand Grip Mola Com Ajuste 5kg A 60kg Fisioterapia Fitness Marca Ancelly', 'brand 64', TRUE, 41, 20.9, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('604cc3f3-c5f0-4ef2-b728-c53a9d7fb83a', 97.2, 96.3, 87.14);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1d06a2e5-2932-41f0-88c5-871d3d6b5129', 'O Poderoso Chefinho', 'O Poderoso Chefinho', 'brand 84', TRUE, 97, 59.9, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Filmes', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1d06a2e5-2932-41f0-88c5-871d3d6b5129', 26.08, 15.98, 57.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e2923c77-8124-4921-8c9a-7d5693b9362c', 'Limpador De Vidro - Ferramenta De Limpeza De Vidro De Janela Com Rodo De Silicone Super Flexível Com Pulverizador, Limpador De Janela De Dupla Face E Raspador Macio Para Limpeza Doméstica(AZUL)', 'Limpador De Vidro - Ferramenta De Limpeza De Vidro De Janela Com Rodo De Silicone Super Flexível Com Pulverizador, Limpador De Janela De Dupla Face E Raspador Macio Para Limpeza Doméstica(AZUL)', 'brand 20', TRUE, 7, 39.39, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Utensílios de Limpeza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e2923c77-8124-4921-8c9a-7d5693b9362c', 19.76, 28.56, 73.59);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('35edece0-553c-4114-8efc-ff05a93db8b3', 'Bozony Cardigã Feminino Casacos Casuais de Manga Longa Abertura Frente Manga Longa,extra grande', 'Bozony Cardigã Feminino Casacos Casuais de Manga Longa Abertura Frente Manga Longa,extra grande', 'brand 57', TRUE, 61, 115.94, '4ab43ee4-f462-4766-8486-db8ec850484b', 'Compras Internacionais em Moda', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('35edece0-553c-4114-8efc-ff05a93db8b3', 29.67, 12.28, 83.69);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('99ee7faa-df30-4393-809f-9f1698b6992b', 'Praça Pietra Camargo, Nossa Senhora Da Aparecida, 24250923 Rezende Grande / SC', 162, 'casa', 'Sousa', '35607-415', 'Brito da Serra', 'Pernambuco');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('99ee7faa-df30-4393-809f-9f1698b6992b', 668980457, -372822575, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('88e42939-2e2c-4f15-9468-455be20975cb', 'Dr. Pedro Lucas da Cruz', 'da-luzanna-liz@example.net', ')5$6F2cTN+', '+55 (011) 4059-4992', NULL, NOW(), NOW(), 'Dr.', '99ee7faa-df30-4393-809f-9f1698b6992b');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('664b1f34-d7d6-4b8e-9fbc-3c44745015b4', 'Pátio Eduarda Peixoto, Ouro Minas, 48790-196 Casa Grande do Campo / AP', 170, 'comercial', 'Carvalho de Minas', '38791-265', 'Garcia dos Dourados', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('664b1f34-d7d6-4b8e-9fbc-3c44745015b4', 663076748, 444871251, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Pimenta', '9:00-18:00', '0300-534-0280', '32806547180', '664b1f34-d7d6-4b8e-9fbc-3c44745015b4');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('2c677fcb-fb9b-4ad0-a7d6-9c56124d3376', '88e42939-2e2c-4f15-9468-455be20975cb', '97503216859', NOW(), '1e9a7662-6059-4026-9ee3-7b90ecf75e48');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8c4e6994-ef39-4023-8285-c9a3a4ee7dc2', 'Negócios Recodificados: Tenha a Coragem de Criar um Futuro Melhor para Você e sua Empresa', 'Negócios Recodificados: Tenha a Coragem de Criar um Futuro Melhor para Você e sua Empresa', 'brand 33', TRUE, 48, 17.27, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8c4e6994-ef39-4023-8285-c9a3a4ee7dc2', 99.94, 89.01, 44.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3cea37df-ea12-4a4f-9e76-f9da89c4d5d0', 'HUANGYUNCHAO Acessórios telefônicos 10 PCS Charge Port Connector para Xiaomi Redmi 10C/Redmi 10 Índia/Redmi Nota 11e/Redmi Nota 11s Substituição do telefone celular', 'HUANGYUNCHAO Acessórios telefônicos 10 PCS Charge Port Connector para Xiaomi Redmi 10C/Redmi 10 Índia/Redmi Nota 11e/Redmi Nota 11s Substituição do telefone celular', 'brand 19', TRUE, 66, 60.38, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3cea37df-ea12-4a4f-9e76-f9da89c4d5d0', 31.53, 28.52, 26.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4a298944-144c-4a91-a0de-631bdd9f135d', 'Cortina Blackout Sala/Quarto em Tecido 200 x180 Bege Claro | Admirare', 'Cortina Blackout Sala/Quarto em Tecido 200 x180 Bege Claro | Admirare', 'brand 5', TRUE, 49, 109.9, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Cama, Mesa e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4a298944-144c-4a91-a0de-631bdd9f135d', 68.64, 40.7, 87.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fd467e42-7fc7-4649-ba41-00c98a63cbc5', 'Quem disse, Berenice? Kit Creme Hidratante para as Mãos Lichia 30g + Balm Labial Hidratação Intensa 8g + Mini Sabonete Demaquilante 30ml', 'Quem disse, Berenice? Kit Creme Hidratante para as Mãos Lichia 30g + Balm Labial Hidratação Intensa 8g + Mini Sabonete Demaquilante 30ml', 'brand 57', TRUE, 49, 87.7, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Produtos de Corpo e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fd467e42-7fc7-4649-ba41-00c98a63cbc5', 87.02, 88.01, 14.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7b4eb948-3b69-4265-b725-8b674ed376f4', 'IONQUANTIC NEUROVIT-50 ML', 'IONQUANTIC NEUROVIT-50 ML', 'brand 3', TRUE, 81, 52.0, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Saúde e Cuidados Pessoais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7b4eb948-3b69-4265-b725-8b674ed376f4', 39.97, 80.62, 84.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c9052734-5650-4772-8fdd-e945366fcbe2', 'PartyKindom 3Pcs Alto-Falante Portátil Sem Fio Alto-Falante Ao Ar Livre Luz Noturna Portátil Sem Fio Luz Noturna Áudio Alto-Falantes Sem Fio Alto-Falante Luz Noturna Menina Preservada Flor', 'PartyKindom 3Pcs Alto-Falante Portátil Sem Fio Alto-Falante Ao Ar Livre Luz Noturna Portátil Sem Fio Luz Noturna Áudio Alto-Falantes Sem Fio Alto-Falante Luz Noturna Menina Preservada Flor', 'brand 12', TRUE, 96, 0.0, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Som e Vídeo Portáteis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c9052734-5650-4772-8fdd-e945366fcbe2', 78.77, 76.9, 30.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0a3aa53d-b7da-4d7d-9e9c-f401fa3451e8', 'Redken Diamond Oil Glow Dry Conditioner 1 Litro', 'Redken Diamond Oil Glow Dry Conditioner 1 Litro', 'brand 70', TRUE, 37, 0.0, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Beleza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0a3aa53d-b7da-4d7d-9e9c-f401fa3451e8', 13.45, 84.13, 20.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('577e1b16-a89d-4e5e-94b8-2d6858eafafc', 'Gatuida Câmera Bolsa De Câmera Alças De Bolsa De Viagem Prateada Acessórios De Bolsa Capa De Bolsa De Couro De Câmera Capa De Câmera Para Mini 8 Bolsa De Câmera Instantânea Bolsa De Couro', 'Gatuida Câmera Bolsa De Câmera Alças De Bolsa De Viagem Prateada Acessórios De Bolsa Capa De Bolsa De Couro De Câmera Capa De Câmera Para Mini 8 Bolsa De Câmera Instantânea Bolsa De Couro', 'brand 39', TRUE, 28, 97.39, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('577e1b16-a89d-4e5e-94b8-2d6858eafafc', 27.91, 27.61, 37.98);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('af31e498-dd9a-411e-aabd-fa5e8c842e4b', 'JOYID Caneta Derma Elétrica Ferramenta de Cuidados com a Pele Mesoterapia Auto Micro Derma Therapy Com Cartuchos 18pins *2 + 24pins *2 + 36pins *2 + 42pins *2 + Nano-R *2', 'JOYID Caneta Derma Elétrica Ferramenta de Cuidados com a Pele Mesoterapia Auto Micro Derma Therapy Com Cartuchos 18pins *2 + 24pins *2 + 36pins *2 + 42pins *2 + Nano-R *2', 'brand 72', TRUE, 51, 500.62, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('af31e498-dd9a-411e-aabd-fa5e8c842e4b', 31.54, 36.54, 39.95);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('620885c3-d7fa-48ee-b9d7-25bda6710ed3', 'Kerasal Reparação intensiva para pés secos, 2 pares', 'Kerasal Reparação intensiva para pés secos, 2 pares', 'brand 94', TRUE, 7, 424.25, '1e9a7662-6059-4026-9ee3-7b90ecf75e48', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('620885c3-d7fa-48ee-b9d7-25bda6710ed3', 96.82, 53.75, 31.75);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('67783960-28e9-4342-a179-96ff57c5ab95', 'Núcleo Santos, 4, Paulo Vi, 51555-460 Carvalho / ES', 66, 'casa', 'Sales da Praia', '53800-141', 'da Paz', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('67783960-28e9-4342-a179-96ff57c5ab95', -361187299, -501137161, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('a05dbb9f-449b-4365-8dea-3afc12be55af', 'Asafe Aparecida', 'allanabarbosa@example.com', '+XR@yO7%W8', '21 2816 4927', NULL, NOW(), NOW(), 'Asa', '67783960-28e9-4342-a179-96ff57c5ab95');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('4b274c23-ee8b-49e0-9138-47137c647921', 'Alameda Otto Rodrigues, 56, São Jorge 2ª Seção, 95836-558 Mendonça / SP', 305, 'comercial', 'Montenegro', '29735-769', 'Rocha', 'Amapá');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('4b274c23-ee8b-49e0-9138-47137c647921', 206580886, 671572086, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Martins S.A.', '9:00-18:00', '0300 898 3179', '96581072303', '4b274c23-ee8b-49e0-9138-47137c647921');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('5a6e975d-79cf-4795-a740-c74a125b0bf5', 'a05dbb9f-449b-4365-8dea-3afc12be55af', '42708153960', NOW(), '62cc8fcd-371f-413b-9a2b-0785efcf4f1e');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('de8e6aa5-1abd-4fbf-853e-0ce2ddd4ec77', 'Pulverizador de água de jardim, multifuncional gire facilmente 7 fluxos de água fácil de usar, água gargen para aspersão de jardim', 'Pulverizador de água de jardim, multifuncional gire facilmente 7 fluxos de água fácil de usar, água gargen para aspersão de jardim', 'brand 22', TRUE, 57, 0.0, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Equipamentos de Rega para Grama e Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('de8e6aa5-1abd-4fbf-853e-0ce2ddd4ec77', 29.55, 24.98, 63.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4db540a2-d3fd-4fa3-8f2d-ae8666568295', 'Módulo de câmera, módulo de câmera de 5 MP, mini câmera 4 3B 100° livre de distorção 5MP para escritório Raspberry Pi', 'Módulo de câmera, módulo de câmera de 5 MP, mini câmera 4 3B 100° livre de distorção 5MP para escritório Raspberry Pi', 'brand 78', TRUE, 65, 0.0, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Câmeras Digitais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4db540a2-d3fd-4fa3-8f2d-ae8666568295', 11.96, 33.44, 23.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a9a48da5-26d4-4ea1-b38b-eae6dda9facb', 'Brocas de pedicure Summer Surprise, excelente aplicação eficiente salão de beleza para casa (05)', 'Brocas de pedicure Summer Surprise, excelente aplicação eficiente salão de beleza para casa (05)', 'brand 41', TRUE, 21, 39.9, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a9a48da5-26d4-4ea1-b38b-eae6dda9facb', 76.13, 81.5, 80.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('af0d0e0a-6e22-4352-b83f-cbad30fcf3f4', 'Bocal extrusor de rosca m6, bico de impressora 3d acessórios de latão para impressora 3d 5 pçs/conjunto bico de cabeça pontiaguda com pontas de aço inoxidável para impressora 3d (0,3 mm)', 'Bocal extrusor de rosca m6, bico de impressora 3d acessórios de latão para impressora 3d 5 pçs/conjunto bico de cabeça pontiaguda com pontas de aço inoxidável para impressora 3d (0,3 mm)', 'brand 45', TRUE, 48, 55.19, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('af0d0e0a-6e22-4352-b83f-cbad30fcf3f4', 74.55, 55.12, 50.65);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('fc197557-c4c2-40a5-9a4e-9f5b2d9e3867', '30 Peças Acessórios Ferramentas Itens Para Recém-Nascidos Segurança Tubos Anti Cólicas Tubo De Alívio De Gás Portátil Gotas De Gás Liberador Suprimentos De Enfermagem Óleo', '30 Peças Acessórios Ferramentas Itens Para Recém-Nascidos Segurança Tubos Anti Cólicas Tubo De Alívio De Gás Portátil Gotas De Gás Liberador Suprimentos De Enfermagem Óleo', 'brand 97', TRUE, 51, 108.84, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('fc197557-c4c2-40a5-9a4e-9f5b2d9e3867', 53.55, 32.22, 25.4);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('34e93434-8428-4aef-aec2-17003aa0ffd5', 'FRCOLOR 1Pc Bolsa Cosmética De Vaca Bolsa Cosmética De Impressão De Vaca Bolsa De Maquiagem De Vaca Bolsa Com Zíper Bolsa Pequena Bolsa Organizadora Para Viagens Bolsas De Cosméticos Para', 'FRCOLOR 1Pc Bolsa Cosmética De Vaca Bolsa Cosmética De Impressão De Vaca Bolsa De Maquiagem De Vaca Bolsa Com Zíper Bolsa Pequena Bolsa Organizadora Para Viagens Bolsas De Cosméticos Para', 'brand 23', TRUE, 51, 41.62, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('34e93434-8428-4aef-aec2-17003aa0ffd5', 64.87, 44.72, 97.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('ae91a217-b48b-445a-93fe-0c24fb656a8f', '3 em 1 acessórios de café expresso caixa organizadora compatível(Small: suitable for 51/53mm), Suporte de tamper de filtro de café de madeira Tapete de tamper de café expresso de madeira,', '3 em 1 acessórios de café expresso caixa organizadora compatível(Small: suitable for 51/53mm), Suporte de tamper de filtro de café de madeira Tapete de tamper de café expresso de madeira,', 'brand 31', TRUE, 72, 0.0, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Café, Chá e Expresso', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('ae91a217-b48b-445a-93fe-0c24fb656a8f', 14.9, 14.92, 85.74);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('de79f7df-0544-4c12-bcca-8731349e8c5c', '3 Conjuntos De Acessórios De Aquário De Ilha Flutuante Ativa Decoração De Répteis Plataforma De Aquecimento Para Tartarugas Aquáticas Decoração De Tanque De Tartaruga', '3 Conjuntos De Acessórios De Aquário De Ilha Flutuante Ativa Decoração De Répteis Plataforma De Aquecimento Para Tartarugas Aquáticas Decoração De Tanque De Tartaruga', 'brand 6', TRUE, 66, 189.71, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Produtos para Répteis e Anfíbios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('de79f7df-0544-4c12-bcca-8731349e8c5c', 57.82, 21.12, 85.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('499a2e91-5003-4d8b-a14e-cd3111ff027a', 'Escova De Limpeza Para Panela Antiaderente', 'Escova De Limpeza Para Panela Antiaderente', 'brand 75', TRUE, 83, 28.5, '62cc8fcd-371f-413b-9a2b-0785efcf4f1e', 'Utensílios de Limpeza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('499a2e91-5003-4d8b-a14e-cd3111ff027a', 76.57, 61.11, 94.85);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('67cfb9bf-d489-4027-b50e-380221e3a28f', 'Rua Matheus Lopes, 13, Barro Preto, 32252466 Oliveira / SC', 405, 'casa', 'Gomes', '97920-866', 'Casa Grande de Oliveira', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('67cfb9bf-d489-4027-b50e-380221e3a28f', -719685525, 472751056, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('a83be918-4ecb-4a6f-a597-5d19bfca9c8b', 'José Pedro Santos', 'yuri02@example.org', '0Kd+8K_wR@', '+55 (061) 5353 9108', NULL, NOW(), NOW(), 'Jos', '67cfb9bf-d489-4027-b50e-380221e3a28f');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3ac511a9-fcb1-48c2-b53d-aa16541d04f5', 'Largo Nunes, 77, Camponesa 1ª Seção, 69529009 Freitas / RR', 779, 'comercial', 'Silva das Pedras', '89679-880', 'Nunes', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3ac511a9-fcb1-48c2-b53d-aa16541d04f5', 91090200, -688820108, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Moraes - ME', '9:00-18:00', '+55 (011) 7887-6009', '90813264731', '3ac511a9-fcb1-48c2-b53d-aa16541d04f5');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('03342bab-91be-43bf-9203-3aea71eb2996', 'a83be918-4ecb-4a6f-a597-5d19bfca9c8b', '83940265756', NOW(), 'bf7139a8-17c5-48de-a8b0-90dba56149b8');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('131105dc-1162-4376-9406-83f01a4b2170', 'Capa Protetora Maquina De Lavar Roupas Flanelada (Preto Tamanho G)', 'Capa Protetora Maquina De Lavar Roupas Flanelada (Preto Tamanho G)', 'brand 30', TRUE, 38, 52.45, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Organização e Armazenamento para Casa', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('131105dc-1162-4376-9406-83f01a4b2170', 94.05, 42.7, 54.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4dafe470-b44a-4279-a516-2bddfc236916', 'Vaso Para Planta Face Rosto Homem N24 Nutriplan Preto', 'Vaso Para Planta Face Rosto Homem N24 Nutriplan Preto', 'brand 14', TRUE, 3, 49.43, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Jardinagem, Ferramentas e Rega para Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4dafe470-b44a-4279-a516-2bddfc236916', 39.26, 97.01, 78.39);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6b6ba9bb-273a-4f7b-9f9a-84d16c17b4a2', 'Pano de Prato Atoalhado Felpudo 12 unidades Pano de Copa Cozinha Guardanapo Louça Gourmet Luxo', 'Pano de Prato Atoalhado Felpudo 12 unidades Pano de Copa Cozinha Guardanapo Louça Gourmet Luxo', 'brand 89', TRUE, 43, 139.9, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Cama, Mesa e Banho', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6b6ba9bb-273a-4f7b-9f9a-84d16c17b4a2', 92.53, 74.62, 61.13);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b1b183da-3908-4a97-9135-768d3f8f4c84', 'Mochilas para Meninas Adolescentes - High-capacity Middle Student Bookbag - Bolsa GranCapacidacom Bolsa Ombro Bolsa Lápis Bolsa Corda, Bolsa Viagem Aferzov', 'Mochilas para Meninas Adolescentes - High-capacity Middle Student Bookbag - Bolsa GranCapacidacom Bolsa Ombro Bolsa Lápis Bolsa Corda, Bolsa Viagem Aferzov', 'brand 43', TRUE, 33, 142.5, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b1b183da-3908-4a97-9135-768d3f8f4c84', 11.71, 19.67, 78.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('259374b5-5335-43d9-a2f5-340b2fb3128c', 'Suporte para Rede Mosquiteira Com Clipe, Suporte para Rede Mosquiteira Durável, Redes para Quarto de Cama para Berço', 'Suporte para Rede Mosquiteira Com Clipe, Suporte para Rede Mosquiteira Durável, Redes para Quarto de Cama para Berço', 'brand 22', TRUE, 40, 90.48, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('259374b5-5335-43d9-a2f5-340b2fb3128c', 16.62, 93.09, 93.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('da208f11-4af1-4098-9586-1a41d57daaeb', 'Jeanoko Clipes de para-sol, clipes de tecido de plástico à prova de pássaros, 50 peças para jardim', 'Jeanoko Clipes de para-sol, clipes de tecido de plástico à prova de pássaros, 50 peças para jardim', 'brand 44', TRUE, 76, 0.0, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Móveis e Acessórios para Jardim e Quintal', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('da208f11-4af1-4098-9586-1a41d57daaeb', 95.43, 16.05, 93.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a341fa8e-2b0a-40ba-965d-799abf63296a', 'Adeept Acrylic Arduino Holder Breadboard Holder, 2 in 1 Base Plate Case for Arduino UNO', 'Adeept Acrylic Arduino Holder Breadboard Holder, 2 in 1 Base Plate Case for Arduino UNO', 'brand 96', TRUE, 20, 60.0, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Computadores e Informática', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a341fa8e-2b0a-40ba-965d-799abf63296a', 66.81, 79.5, 18.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('63c8113e-9318-4281-9e73-0f003b7c90dd', 'Relógio De Borboleta 3D Relógio De Pulso Relógio De Desenho Animado Relógio De Menina Presentes À Prova De Água Relógio De Desenho Animado Relógio Infantil Relógio Decorativo', 'Relógio De Borboleta 3D Relógio De Pulso Relógio De Desenho Animado Relógio De Menina Presentes À Prova De Água Relógio De Desenho Animado Relógio Infantil Relógio Decorativo', 'brand 1', TRUE, 72, 47.73, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('63c8113e-9318-4281-9e73-0f003b7c90dd', 31.4, 98.0, 55.28);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c8f979d8-611e-4cc8-9bda-dc0ebac9de26', 'Almencla 4x 1x Pneu Externo de Substituição de Roda Externa, Durável de Alta Qualidade, Substituição de Roda, Resistente Ao Desgaste, Pneu Externo de Roda', 'Almencla 4x 1x Pneu Externo de Substituição de Roda Externa, Durável de Alta Qualidade, Substituição de Roda, Resistente Ao Desgaste, Pneu Externo de Roda', 'brand 67', TRUE, 18, 103.99, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Produtos de Passeio e Viagem para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c8f979d8-611e-4cc8-9bda-dc0ebac9de26', 58.56, 83.41, 70.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f22082ff-d55a-448b-88a6-7f372bd2ac11', 'JISADER de fritadeira ajustável, de assado, para grelhar', 'JISADER de fritadeira ajustável, de assado, para grelhar', 'brand 89', TRUE, 85, 0.0, 'bf7139a8-17c5-48de-a8b0-90dba56149b8', 'Churrasco', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f22082ff-d55a-448b-88a6-7f372bd2ac11', 10.36, 49.41, 93.96);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('69a46d0b-350e-40f1-9036-b279a52fe175', 'Passarela Silveira, 40, Floresta, 67515-496 da Cunha de Costela / SC', 165, 'casa', 'Câmara', '22015-383', 'Marques', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('69a46d0b-350e-40f1-9036-b279a52fe175', -110555206, 788966781, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('bcfab920-9252-44b2-973d-e3bc7fdc93f8', 'Alice Caldeira', 'juan59@example.net', 'ym(S8nHo1D', '+55 71 5694 1911', NULL, NOW(), NOW(), 'Ali', '69a46d0b-350e-40f1-9036-b279a52fe175');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('b2b6bda6-90c1-462a-ad80-085de4ac5028', 'Conjunto Cecilia Viana, 33, Santana Do Cafezal, 73378609 Mendes / PI', 731, 'comercial', 'Aparecida', '85400-575', 'Casa Grande', 'Tocantins');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('b2b6bda6-90c1-462a-ad80-085de4ac5028', 837407064, -498618421, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('110a8fc7-e511-4006-8641-4d9348bcb1f1', 'da Rosa', '9:00-18:00', '+55 61 9359 7746', '67423859109', 'b2b6bda6-90c1-462a-ad80-085de4ac5028');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('83214f1c-be9d-4200-86fe-8c9bebe88830', 'bcfab920-9252-44b2-973d-e3bc7fdc93f8', '24681307580', NOW(), '110a8fc7-e511-4006-8641-4d9348bcb1f1');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9d9d0e77-b7e3-416d-aff0-821f162bcd9a', 'ibasenice 2 Pçs Capa De Cinto De Segurança Para Carros Infantis Cintos Para Crianças Travesseiros Para Crianças Almofada Protetora De Cinto De Segurança Bonito Travesseiro De Cinto De', 'ibasenice 2 Pçs Capa De Cinto De Segurança Para Carros Infantis Cintos Para Crianças Travesseiros Para Crianças Almofada Protetora De Cinto De Segurança Bonito Travesseiro De Cinto De', 'brand 43', TRUE, 12, 52.02, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Produtos de Passeio e Viagem para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9d9d0e77-b7e3-416d-aff0-821f162bcd9a', 45.51, 94.7, 39.87);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8e8be347-3206-457d-87cd-f6e1cb32f7ba', 'Kit de cortador de unhas em aço inoxidável para arte em unhas Abs Ferramentas de manicure em aço inoxidável Conjunto de presente para formato de desenho animado Caixa de aparador de alimentação Pinça', 'Kit de cortador de unhas em aço inoxidável para arte em unhas Abs Ferramentas de manicure em aço inoxidável Conjunto de presente para formato de desenho animado Caixa de aparador de alimentação Pinça', 'brand 7', TRUE, 92, 47.89, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Banho, Higiene e Troca de Fraldas do Bebê', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8e8be347-3206-457d-87cd-f6e1cb32f7ba', 79.38, 36.67, 91.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6fffa291-b6e4-46b8-b496-5b857f8ae0c9', 'Proven whey Sabor Sorvete de Baunilha (1,81kg) - Gaspari Nutrition', 'Proven whey Sabor Sorvete de Baunilha (1,81kg) - Gaspari Nutrition', 'brand 61', TRUE, 95, 598.9, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Suplementos e Pré-Treino', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6fffa291-b6e4-46b8-b496-5b857f8ae0c9', 41.48, 93.9, 62.46);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9261b554-ec44-47c7-99bc-19c6ae9b0dfa', 'Prato Fundo de 24cm Unitário Tangram Rosa Germer Porcelanas', 'Prato Fundo de 24cm Unitário Tangram Rosa Germer Porcelanas', 'brand 26', TRUE, 55, 41.9, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Jogos de Louças e Aparelhos de Jantar', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9261b554-ec44-47c7-99bc-19c6ae9b0dfa', 24.92, 62.31, 19.39);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9e28ec79-75ca-41cd-bfb2-9666edfddf4b', 'Pulseira Nylon Loop compatível com Watch 38mm 40mm 41mm Cinza/Branco (C7)', 'Pulseira Nylon Loop compatível com Watch 38mm 40mm 41mm Cinza/Branco (C7)', 'brand 100', TRUE, 52, 49.9, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Wearables e Tecnologia Vestível', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9e28ec79-75ca-41cd-bfb2-9666edfddf4b', 46.37, 54.28, 99.18);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2ae754f3-b48e-4fa8-907b-5b943479f6d2', 'Roupas para bebês meninas meninas manga mosca babados cor sólida algodão blusa roupas amarelo', 'Roupas para bebês meninas meninas manga mosca babados cor sólida algodão blusa roupas amarelo', 'brand 11', TRUE, 92, 18.54, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2ae754f3-b48e-4fa8-907b-5b943479f6d2', 87.46, 95.76, 75.25);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3ec00877-6450-4837-a2d3-09218b28a205', 'Bolsa de maquiagem de viagem para lhama de Natal, bolsa de cosméticos portátil à prova d'água com zíper, bolsa de higiene pessoal de couro PU, bolsa organizadora de cosméticos de viagem, acessórios bolsa de maquiagem para mulheres e meninas, Multicor, M', 'Bolsa de maquiagem de viagem para lhama de Natal, bolsa de cosméticos portátil à prova d'água com zíper, bolsa de higiene pessoal de couro PU, bolsa organizadora de cosméticos de viagem, acessórios bolsa de maquiagem para mulheres e meninas, Multicor, M', 'brand 57', TRUE, 70, 100.23, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Acessórios para Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3ec00877-6450-4837-a2d3-09218b28a205', 61.39, 90.14, 57.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d30a8f3a-3caf-4b59-9238-f261cd9ba5ff', 'mewmewcat GA4 Metal Mini portátil recarregável guitarra elétrica ficha Headphone Amp amplificador,Amplificador de auscultadores de guitarra', 'mewmewcat GA4 Metal Mini portátil recarregável guitarra elétrica ficha Headphone Amp amplificador,Amplificador de auscultadores de guitarra', 'brand 7', TRUE, 9, 104.33, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Instrumentos Musicais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d30a8f3a-3caf-4b59-9238-f261cd9ba5ff', 93.86, 85.23, 79.88);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('850bc3e5-1ae8-46c9-8e57-9cdc82452a48', 'Conjunto Para Churrasco 4 Peças Cabos Compridos Mor', 'Conjunto Para Churrasco 4 Peças Cabos Compridos Mor', 'brand 80', TRUE, 26, 93.99, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Jardim e Piscina', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('850bc3e5-1ae8-46c9-8e57-9cdc82452a48', 29.74, 94.42, 98.94);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9aa66312-6b80-4212-9a1a-ed79d03d8c26', 'Meia Sapatilha, Lupo, feminino', 'Meia Sapatilha, Lupo, feminino', 'brand 34', TRUE, 74, 34.9, '110a8fc7-e511-4006-8641-4d9348bcb1f1', 'Feminino', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9aa66312-6b80-4212-9a1a-ed79d03d8c26', 67.73, 37.92, 26.46);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('41d2655c-23ad-4501-86fb-2ce2a2ee7680', 'Lago Cardoso, Serrano, 43635-366 Costa do Sul / MA', 866, 'casa', 'Lopes do Norte', '60510-450', 'Rezende', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('41d2655c-23ad-4501-86fb-2ce2a2ee7680', 586715874, -683669034, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('f87bd08b-3068-49eb-9c15-ee4e065e8968', 'Manuela Ferreira', 'cauamonteiro@example.org', '+r(eVvzj8t', '+55 31 1936 4906', NULL, NOW(), NOW(), 'Man', '41d2655c-23ad-4501-86fb-2ce2a2ee7680');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('ab320b5a-832a-41d4-a4d7-c5f562375996', 'Rua de Aparecida, 50, Vila Mantiqueira, 06240-423 Monteiro de Minas / PB', 107, 'comercial', 'Novais', '41224-921', 'Jesus', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('ab320b5a-832a-41d4-a4d7-c5f562375996', 593380192, -1088110076, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('2baeddc8-540f-4183-9a32-3ed07d63d845', 'Abreu', '9:00-18:00', '(011) 8735 6486', '95316708202', 'ab320b5a-832a-41d4-a4d7-c5f562375996');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('f8232b5a-f9fb-4300-ad5b-4d7ba44b876f', 'f87bd08b-3068-49eb-9c15-ee4e065e8968', '96304852142', NOW(), '2baeddc8-540f-4183-9a32-3ed07d63d845');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e5f1a90b-e470-4960-bae7-947131971477', 'Kit Microfone Condensador Bm800 C/Mesa De Som E Suporte', 'Kit Microfone Condensador Bm800 C/Mesa De Som E Suporte', 'brand 61', TRUE, 15, 189.9, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Instrumentos Musicais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e5f1a90b-e470-4960-bae7-947131971477', 28.47, 42.22, 30.5);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('609f5df0-932c-4f7a-9c96-5724768cd65c', 'Botão de gravação de voz, 4 peças, fácil operação, botão de treinamento de animais de estimação, 30 segundos, gravação clara portátil para comunicação com animais de estimação', 'Botão de gravação de voz, 4 peças, fácil operação, botão de treinamento de animais de estimação, 30 segundos, gravação clara portátil para comunicação com animais de estimação', 'brand 70', TRUE, 91, 0.0, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Som e Vídeo Portáteis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('609f5df0-932c-4f7a-9c96-5724768cd65c', 16.06, 96.23, 64.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('208d13b4-6af9-4af4-90a3-be3e62ee47fb', 'Online', 'Online', 'brand 51', TRUE, 41, 25.9, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Música Nacional', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('208d13b4-6af9-4af4-90a3-be3e62ee47fb', 55.25, 79.61, 87.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2cac214f-bdeb-4ca4-8bbe-f646ebb6052a', 'GzLeyigou Eagle Kit de bolsa de higiene pessoal de viagem para maquiagem, organizador de cosméticos, bolsa de higiene de pássaros indianos para mulheres e homens, acessórios de maquiagem, xampu e creme corporal conjunto de pincéis', 'GzLeyigou Eagle Kit de bolsa de higiene pessoal de viagem para maquiagem, organizador de cosméticos, bolsa de higiene de pássaros indianos para mulheres e homens, acessórios de maquiagem, xampu e creme corporal conjunto de pincéis', 'brand 71', TRUE, 80, 114.64, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2cac214f-bdeb-4ca4-8bbe-f646ebb6052a', 43.27, 76.54, 55.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3719a8b4-4789-4354-bac7-5070f16aa6f6', 'Contador Manual Numérico 4 Dígitos Passos Pessoas Produtos', 'Contador Manual Numérico 4 Dígitos Passos Pessoas Produtos', 'brand 61', TRUE, 24, 19.9, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Material para Escritório e Papelaria', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3719a8b4-4789-4354-bac7-5070f16aa6f6', 91.82, 29.08, 84.74);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3607302c-cb0e-4389-a447-737b8d078819', 'Touca e Luva Recém-Nascido Dinossauro', 'Touca e Luva Recém-Nascido Dinossauro', 'brand 92', TRUE, 42, 32.9, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3607302c-cb0e-4389-a447-737b8d078819', 58.66, 46.8, 30.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2487439e-f22e-4677-9c73-4d3671641287', 'Generic Elásticos Pretos Alto-Falante De Barra De Som Alto-Falante Elegante Em Formato De U Alto-Falante Pendurado No Pescoço Microfone 5D Estéreo Bateria De Lítio', 'Generic Elásticos Pretos Alto-Falante De Barra De Som Alto-Falante Elegante Em Formato De U Alto-Falante Pendurado No Pescoço Microfone 5D Estéreo Bateria De Lítio', 'brand 33', TRUE, 65, 0.0, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Som e Vídeo Portáteis', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2487439e-f22e-4677-9c73-4d3671641287', 51.29, 91.22, 32.26);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f1717a0e-79eb-40ff-86bf-f6c4019b7230', 'Toyvian 1 Conjunto De Treinamento De Mergulho Ao Ar Livre Brinquedos Piscina Brinquedos De Mergulho Mergulhador Brinquedo Piscina Afundando Brinquedos Subaquáticos Jogar Vara Banheira', 'Toyvian 1 Conjunto De Treinamento De Mergulho Ao Ar Livre Brinquedos Piscina Brinquedos De Mergulho Mergulhador Brinquedo Piscina Afundando Brinquedos Subaquáticos Jogar Vara Banheira', 'brand 20', TRUE, 14, 119.68, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Diversão e Atividades para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f1717a0e-79eb-40ff-86bf-f6c4019b7230', 53.17, 72.11, 18.76);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('215b2911-0a4d-419b-beda-90cdd75ff233', 'TRACTA POWER TINT MAÇA DO AMOR', 'TRACTA POWER TINT MAÇA DO AMOR', 'brand 81', TRUE, 21, 31.04, '2baeddc8-540f-4183-9a32-3ed07d63d845', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('215b2911-0a4d-419b-beda-90cdd75ff233', 57.91, 75.42, 71.75);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('2ab8216d-983a-4551-8735-d2f34c3c5d33', 'Loteamento Farias, 14, Novo São Lucas, 73827835 Rezende Alegre / BA', 836, 'casa', 'Rios da Prata', '59764-792', 'Sampaio de Rodrigues', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('2ab8216d-983a-4551-8735-d2f34c3c5d33', 681216525, 654255362, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('b47eaefd-bb9b-41d0-8756-d6a9a8b1b448', 'Eduarda Gonçalves', 'bgomes@example.org', '_HRm3Ot_c#', '0900 789 2286', NULL, NOW(), NOW(), 'Edu', '2ab8216d-983a-4551-8735-d2f34c3c5d33');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f8318ce1-8ca3-4491-a9e7-710349dda9d3', 'Campo João Lucas Ramos, 432, Biquinhas, 65206859 Pires / RN', 282, 'comercial', 'Alves da Praia', '51834-267', 'Pires de Rios', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f8318ce1-8ca3-4491-a9e7-710349dda9d3', 379545183, 504816436, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('846015b9-ff5d-42e1-9682-c584da9c5f22', 'Oliveira - EI', '9:00-18:00', '+55 (011) 7801-9948', '69072314840', 'f8318ce1-8ca3-4491-a9e7-710349dda9d3');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('ce354231-839d-478f-98d5-c9d70710b464', 'b47eaefd-bb9b-41d0-8756-d6a9a8b1b448', '15309847260', NOW(), '846015b9-ff5d-42e1-9682-c584da9c5f22');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3fba9722-f534-4d10-a6fc-5f2ec732105d', 'Milisten Ferramentas De Escova De Limpeza Escovas De Detalhamento Para Veículos Escova De Carro Detalhamento De Carro Limpador De Aro Escova De Lavagem De Carro Limpador De Aro Escova', 'Milisten Ferramentas De Escova De Limpeza Escovas De Detalhamento Para Veículos Escova De Carro Detalhamento De Carro Limpador De Aro Escova De Lavagem De Carro Limpador De Aro Escova', 'brand 11', TRUE, 22, 59.39, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Cuidados Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3fba9722-f534-4d10-a6fc-5f2ec732105d', 85.41, 88.27, 64.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0fbbe9a1-28cc-4645-a827-e3d308e214de', 'GEDORE Chave Biela 12Mm 55.203-8 Igual L', 'GEDORE Chave Biela 12Mm 55.203-8 Igual L', 'brand 73', TRUE, 2, 43.35, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Ferramentas Manuais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0fbbe9a1-28cc-4645-a827-e3d308e214de', 49.1, 84.4, 27.51);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dd5fb4fa-e919-4bdc-8ec8-811d3f0006bd', 'KONTONTY Cadernos Bloco De Notas Capa Adesivo Enchimento A5', 'KONTONTY Cadernos Bloco De Notas Capa Adesivo Enchimento A5', 'brand 80', TRUE, 8, 68.96, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Fichários e Acessórios de Fichário', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dd5fb4fa-e919-4bdc-8ec8-811d3f0006bd', 51.08, 17.27, 19.21);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('77c4c0a5-453c-4e8d-bd7c-f8506242d70d', 'KIT 3X Colágeno Tipo 2 + Glucosamina + Condroitina 60 cápsulas - Clinicmais', 'KIT 3X Colágeno Tipo 2 + Glucosamina + Condroitina 60 cápsulas - Clinicmais', 'brand 90', TRUE, 68, 179.7, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Vitaminas, Minerais e Suplementos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('77c4c0a5-453c-4e8d-bd7c-f8506242d70d', 62.66, 69.03, 37.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('803df737-5141-4bd2-bc83-e6765a3724dc', 'Zexrow Controle de Xbox 360, joystick de gamepad com fio USB com vibração dupla melhorada e design ergonômico para Microsoft Xbox 360 e Slim e PC Windows 7/8/10 (preto)', 'Zexrow Controle de Xbox 360, joystick de gamepad com fio USB com vibração dupla melhorada e design ergonômico para Microsoft Xbox 360 e Slim e PC Windows 7/8/10 (preto)', 'brand 52', TRUE, 16, 0.0, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Xbox One, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('803df737-5141-4bd2-bc83-e6765a3724dc', 18.78, 80.51, 65.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('faaa856e-a31d-4cda-964c-76feb0efcd45', 'Vinho Chileno Concha Y Toro Gran Reserva Serie Riberas Sauvignon Blanc 750ml', 'Vinho Chileno Concha Y Toro Gran Reserva Serie Riberas Sauvignon Blanc 750ml', 'brand 48', TRUE, 59, 71.03, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Bebidas Alcoólicas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('faaa856e-a31d-4cda-964c-76feb0efcd45', 20.08, 94.31, 58.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('be5feaeb-2a0d-485b-8b4f-6d19819441ec', 'Motorização: Sistemas Operacionais e Segurança (Coleção Barcos de Cruzeiro a Motor Livro 2)', 'Motorização: Sistemas Operacionais e Segurança (Coleção Barcos de Cruzeiro a Motor Livro 2)', 'brand 5', TRUE, 35, 0.0, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Novidades da Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('be5feaeb-2a0d-485b-8b4f-6d19819441ec', 37.65, 22.09, 18.7);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4a522e0a-5450-4a8f-8b01-5f345d5db22d', 'Dobradiça de primavera Tr90 Quadro Olho de Gato Azul Luz Bloqueando Óculos para Mulheres e Homens Proteção contra Radiação de Óculos de Computador', 'Dobradiça de primavera Tr90 Quadro Olho de Gato Azul Luz Bloqueando Óculos para Mulheres e Homens Proteção contra Radiação de Óculos de Computador', 'brand 59', TRUE, 7, 112.19, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Óculos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4a522e0a-5450-4a8f-8b01-5f345d5db22d', 89.83, 87.02, 57.93);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4f2fc934-7749-4435-ba89-48419214c8b6', 'Premium Powder Brush, Kryolan', 'Premium Powder Brush, Kryolan', 'brand 48', TRUE, 92, 290.0, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Beleza', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4f2fc934-7749-4435-ba89-48419214c8b6', 83.66, 12.54, 79.34);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('01b004af-a6f1-4aeb-acd4-f163999149be', 'Smart Analyzer - Analisador de Umidade, Oleosidade e Elasticidade de Pele Facial e Corporal - Smart GR', 'Smart Analyzer - Analisador de Umidade, Oleosidade e Elasticidade de Pele Facial e Corporal - Smart GR', 'brand 73', TRUE, 60, 289.99, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('01b004af-a6f1-4aeb-acd4-f163999149be', 70.36, 48.64, 59.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('247b5b2e-b090-4c6b-b070-a73d37665e96', 'Organizador de tomada de carregador EV, instalação simples, abrasão, à prova de poeira e suporte de carregador EV para tomada tipo 1', 'Organizador de tomada de carregador EV, instalação simples, abrasão, à prova de poeira e suporte de carregador EV para tomada tipo 1', 'brand 74', TRUE, 11, 86.9, '846015b9-ff5d-42e1-9682-c584da9c5f22', 'Carregadores de Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('247b5b2e-b090-4c6b-b070-a73d37665e96', 83.54, 63.5, 75.32);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8e0fd1fd-5af2-4ebd-9dba-1b4181cfd51d', 'Favela Novaes, Aparecida 7ª Seção, 73442740 Porto de Goiás / PR', 843, 'casa', 'Silveira do Galho', '88106-219', 'Silva de Viana', 'Roraima');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8e0fd1fd-5af2-4ebd-9dba-1b4181cfd51d', 534011023, 1556718909, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4e2b3d25-27bd-4596-b9a5-5fe93434238f', 'Dr. Rafael Novais', 'fernandeszoe@example.net', '^GQLqW9X&6', '41 2627 7039', NULL, NOW(), NOW(), 'Dr.', '8e0fd1fd-5af2-4ebd-9dba-1b4181cfd51d');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f6d831ad-e664-49df-ac72-d2588cf47e17', 'Alameda Francisco Rodrigues, 72, Maravilha, 38033-931 Novais / MT', 206, 'comercial', 'Monteiro', '84798-807', 'Andrade do Amparo', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f6d831ad-e664-49df-ac72-d2588cf47e17', 6064230, -677390220, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Melo', '9:00-18:00', '+55 41 2567-7378', '51307829414', 'f6d831ad-e664-49df-ac72-d2588cf47e17');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('2456d1a2-7be7-4157-8600-fa36bed3d02d', '4e2b3d25-27bd-4596-b9a5-5fe93434238f', '62357904810', NOW(), '3f3ce671-6e79-4da2-8a0a-fc7b5529037d');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0a3db2a-437c-4bcd-8ef2-66c363157808', 'Mattel Jurassic World Indoraptor Dinossauro de 12', Multicolorido', 'Mattel Jurassic World Indoraptor Dinossauro de 12', Multicolorido', 'brand 35', TRUE, 6, 139.99, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Brinquedos e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0a3db2a-437c-4bcd-8ef2-66c363157808', 19.39, 55.24, 35.11);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e93ab7b5-9e8e-4e26-b348-ad636ac094ed', '1 Conjunto De Colar De Coração Conjunto De Brincos De Joias Conjunto De Cristais Brincos Femininos Brincos De Pingente De Liga Colar Em Forma De Coração Joias Elegantes Acessórios', '1 Conjunto De Colar De Coração Conjunto De Brincos De Joias Conjunto De Cristais Brincos Femininos Brincos De Pingente De Liga Colar Em Forma De Coração Joias Elegantes Acessórios', 'brand 19', TRUE, 76, 47.35, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e93ab7b5-9e8e-4e26-b348-ad636ac094ed', 43.96, 88.03, 78.99);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bed63950-2126-45d8-bead-a2dd399338ee', 'Coleira de Seda Simples N2 - 15 Mm Furacão Pet para Cães', 'Coleira de Seda Simples N2 - 15 Mm Furacão Pet para Cães', 'brand 72', TRUE, 23, 4.79, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Produtos para Cães', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bed63950-2126-45d8-bead-a2dd399338ee', 30.5, 12.64, 62.84);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('60d166ea-ea0d-40af-9968-54438c172088', 'Toddmomy 2 Pçs Organizador De Assento Bolsa De Armazenamento De Brinquedos Organizador De Assento Para Banco Traseiro Bolsa De Banco Traseiro De Carro Organizador De Armazenamento Protetor', 'Toddmomy 2 Pçs Organizador De Assento Bolsa De Armazenamento De Brinquedos Organizador De Assento Para Banco Traseiro Bolsa De Banco Traseiro De Carro Organizador De Armazenamento Protetor', 'brand 28', TRUE, 36, 105.88, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Produtos de Passeio e Viagem para Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('60d166ea-ea0d-40af-9968-54438c172088', 74.52, 49.13, 60.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f47ea19c-5043-40d1-9491-9b7c3aaadfd5', 'Mangueira Super Jardim Forte Siliconada Azul 1/2-40m', 'Mangueira Super Jardim Forte Siliconada Azul 1/2-40m', 'brand 43', TRUE, 25, 270.19, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Equipamentos de Rega para Grama e Jardim', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f47ea19c-5043-40d1-9491-9b7c3aaadfd5', 52.03, 44.86, 52.72);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2fa811be-9d23-4f57-b889-7fb52dd54f6d', 'Alça de Queixo para Capacete e Acessórios, Sistema de Suspensão de Discagem Ajustável Compatível Com Capacete Fast MICH Wendy', 'Alça de Queixo para Capacete e Acessórios, Sistema de Suspensão de Discagem Ajustável Compatível Com Capacete Fast MICH Wendy', 'brand 30', TRUE, 59, 89.69, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Equipamento de Proteção para Pilotar Motos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2fa811be-9d23-4f57-b889-7fb52dd54f6d', 10.41, 24.53, 85.02);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c36edbf8-ad87-4194-9e07-c00a372e62ff', '5 Peças Relógio De Desenho Animado De Madeira Brinquedos Para Meninas Brinquedos Para Meninas Decoração De Madeira Despertador Relógio Para Crianças Relógios De Madeira Brinquedos', '5 Peças Relógio De Desenho Animado De Madeira Brinquedos Para Meninas Brinquedos Para Meninas Decoração De Madeira Despertador Relógio Para Crianças Relógios De Madeira Brinquedos', 'brand 67', TRUE, 97, 0.0, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c36edbf8-ad87-4194-9e07-c00a372e62ff', 89.55, 94.9, 70.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('8c082886-a3fe-4a88-b5c6-268d7d186853', 'FOLOSAFENAR Câmera infantil câmera digital infantil câmeras duplas 2800 W HD Pixels material ABS cordão design flash LED excelente qualidade com cabo USB adesivo de desenho animado manual do usuário cordão', 'FOLOSAFENAR Câmera infantil câmera digital infantil câmeras duplas 2800 W HD Pixels material ABS cordão design flash LED excelente qualidade com cabo USB adesivo de desenho animado manual do usuário cordão', 'brand 44', TRUE, 38, 239.99, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Câmeras Digitais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('8c082886-a3fe-4a88-b5c6-268d7d186853', 85.36, 83.71, 12.42);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d19aaf2b-fe16-4ea0-889e-b1efabb6b307', 'Escrivaninha Reta 150cm ME401 DJD Móveis Branca', 'Escrivaninha Reta 150cm ME401 DJD Móveis Branca', 'brand 59', TRUE, 67, 277.59, '3f3ce671-6e79-4da2-8a0a-fc7b5529037d', 'Móveis para Escritório', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d19aaf2b-fe16-4ea0-889e-b1efabb6b307', 35.98, 78.05, 12.4);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('d1c1ff73-54e7-4307-b30b-9e2788b2a92e', 'Sítio de Freitas, 93, Vila Califórnia, 07497-222 Cardoso do Campo / MG', 227, 'casa', 'Câmara de Brito', '45473-237', 'Lima de Goiás', 'Mato Grosso do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('d1c1ff73-54e7-4307-b30b-9e2788b2a92e', 674574154, 1533445649, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('7f5e7cc5-f6f9-4fa3-b53b-f8b8f0b72a4f', 'Gustavo Henrique Moreira', 'yasmin59@example.com', 'CQ*dBZut&5', '+55 (021) 6032-6338', NULL, NOW(), NOW(), 'Gus', 'd1c1ff73-54e7-4307-b30b-9e2788b2a92e');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('241ebed2-d8e1-42af-8b10-76e6b0689ab6', 'Avenida de Castro, 35, Barreiro, 89297845 Aragão Grande / AP', 380, 'comercial', 'Vieira das Pedras', '25263-232', 'Dias do Norte', 'Maranhão');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('241ebed2-d8e1-42af-8b10-76e6b0689ab6', 454233293, -1747752317, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Fogaça Novaes - EI', '9:00-18:00', '11 4636-9295', '63895102415', '241ebed2-d8e1-42af-8b10-76e6b0689ab6');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('ae3a6519-552b-4146-9343-e49b35c69d14', '7f5e7cc5-f6f9-4fa3-b53b-f8b8f0b72a4f', '75293418637', NOW(), 'c65a0b9c-f317-42dc-92ca-576c661c3bf5');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('18a5e55f-3dcf-4df8-9489-4a5598a10dac', 'Caderno de coração Best sister ever com citação de folhas soltas diário recarregável papelaria', 'Caderno de coração Best sister ever com citação de folhas soltas diário recarregável papelaria', 'brand 30', TRUE, 12, 0.0, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Cadernos, Blocos e Diários', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('18a5e55f-3dcf-4df8-9489-4a5598a10dac', 59.05, 73.61, 21.27);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('29b5a90b-584b-4904-9a9c-7ef3b7d73180', 'Pop Make a Wish Cheshire Cat Metallic Vinyl Figure', 'Pop Make a Wish Cheshire Cat Metallic Vinyl Figure', 'brand 67', TRUE, 59, 145.79, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Colecionáveis e Miniaturas para Hobby', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('29b5a90b-584b-4904-9a9c-7ef3b7d73180', 87.32, 67.27, 84.92);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0e75d2e-ed7d-43bc-8c56-ae419c8096a9', 'VAS6262 1, adaptadores pretos para enchimento automático com óleo de engrenagem de alta resistência resistente à ferrugem resistente ao desgaste CVT rosca de precisão AISIN 09G 01J', 'VAS6262 1, adaptadores pretos para enchimento automático com óleo de engrenagem de alta resistência resistente à ferrugem resistente ao desgaste CVT rosca de precisão AISIN 09G 01J', 'brand 43', TRUE, 24, 0.0, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Óleos e Fluidos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0e75d2e-ed7d-43bc-8c56-ae419c8096a9', 33.31, 59.01, 26.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('dffc1adc-31aa-48bc-877e-5d901e855efa', 'Conjunto de Aparador de Sobrancelha, Ferramenta Multiuso de Aparador de Sobrancelha de Precisão de 2 Peças para Iniciantes Em Viagens', 'Conjunto de Aparador de Sobrancelha, Ferramenta Multiuso de Aparador de Sobrancelha de Precisão de 2 Peças para Iniciantes Em Viagens', 'brand 97', TRUE, 85, 34.19, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('dffc1adc-31aa-48bc-877e-5d901e855efa', 40.66, 21.22, 66.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4821d006-2bdf-4f20-a605-b460df409401', 'Generic 12V 24V Chaleira de carro Caldeira Elétrica Copo de água de calor Portátil Chaleira elétrica de aço inoxidável 304 para escola, cinza', 'Generic 12V 24V Chaleira de carro Caldeira Elétrica Copo de água de calor Portátil Chaleira elétrica de aço inoxidável 304 para escola, cinza', 'brand 92', TRUE, 16, 0.0, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Cozinha', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4821d006-2bdf-4f20-a605-b460df409401', 69.22, 68.74, 54.41);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4cf001fd-3513-40ce-85da-4821225c9778', 'Marcelo Nova - Cd 12 Fêmeas - 2013', 'Marcelo Nova - Cd 12 Fêmeas - 2013', 'brand 46', TRUE, 98, 0.0, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Música Nacional', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4cf001fd-3513-40ce-85da-4821225c9778', 59.19, 32.83, 11.19);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1cb8d6d1-b824-467f-92c1-3c41623fd45b', 'Pruie Mini máquina de costura ajustável com 2 velocidades, linha elétrica portátil, máquina de costura multifuncional com luzes e pedal de corte para viagens domésticas, iniciante, rosto, faça você me', 'Pruie Mini máquina de costura ajustável com 2 velocidades, linha elétrica portátil, máquina de costura multifuncional com luzes e pedal de corte para viagens domésticas, iniciante, rosto, faça você me', 'brand 50', TRUE, 27, 150.9, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Materiais de Arte e de Artesanato', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1cb8d6d1-b824-467f-92c1-3c41623fd45b', 20.37, 73.34, 26.0);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('7f88ade1-77a0-458d-aa55-3a66fa31071c', 'Men’s Ferrosi Cargo Pants – Outdoor Hiking & Backpacking Pants', 'Men’s Ferrosi Cargo Pants – Outdoor Hiking & Backpacking Pants', 'brand 28', TRUE, 55, 812.73, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('7f88ade1-77a0-458d-aa55-3a66fa31071c', 88.98, 75.94, 77.6);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0cfdb29e-49ca-4a7f-a492-6b7173aad7a7', 'Hemoton 2 Pçs Chifre Puxando Placa Sha Ferramentas De Massagem Facial Ferramentas De Cuidados Com A Ferramentas Faciais Para Cuidados Com A Ferramenta De Auto-Massagem', 'Hemoton 2 Pçs Chifre Puxando Placa Sha Ferramentas De Massagem Facial Ferramentas De Cuidados Com A Ferramentas Faciais Para Cuidados Com A Ferramenta De Auto-Massagem', 'brand 6', TRUE, 86, 48.09, 'c65a0b9c-f317-42dc-92ca-576c661c3bf5', 'Produtos de Cuidados com a Pele', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0cfdb29e-49ca-4a7f-a492-6b7173aad7a7', 57.41, 14.1, 20.75);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('e6b92737-24b9-4b27-8933-0a45b1edb831', 'Estrada da Paz, 3, Vila Aeroporto, 51258-082 Silva / PB', 833, 'casa', 'Cassiano de Araújo', '74041-198', 'Fogaça de Sousa', 'Ceará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('e6b92737-24b9-4b27-8933-0a45b1edb831', 434685774, 1139009522, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('1bc444d0-036a-441d-a4ea-4ead57569f44', 'Sr. João Gabriel Silva', 'ottoviana@example.org', '#4XH5G!1pD', '+55 (061) 6142 5925', NULL, NOW(), NOW(), 'Sr.', 'e6b92737-24b9-4b27-8933-0a45b1edb831');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('af13e5ac-e845-4be8-8113-c34b130bb5d6', 'Vereda de Barbosa, 83, Santa Efigênia, 53513191 Farias de Martins / MS', 357, 'comercial', 'Casa Grande da Serra', '19306-336', 'Mendonça de Minas', 'Ceará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('af13e5ac-e845-4be8-8113-c34b130bb5d6', -619230729, -260645144, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('44ec81aa-2e79-41a1-902b-69e106270a74', 'Carvalho - EI', '9:00-18:00', '84 2301 2477', '39054261706', 'af13e5ac-e845-4be8-8113-c34b130bb5d6');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('4663ac4e-8936-44b3-8a91-a681a65f5b0b', '1bc444d0-036a-441d-a4ea-4ead57569f44', '70649583256', NOW(), '44ec81aa-2e79-41a1-902b-69e106270a74');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d8fc67ac-930a-4cc0-9296-6cedd617bed7', 'Saltwater Boot Rain, Blue, 6 US Unisex Little Kid', 'Saltwater Boot Rain, Blue, 6 US Unisex Little Kid', 'brand 86', TRUE, 2, 522.63, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d8fc67ac-930a-4cc0-9296-6cedd617bed7', 93.15, 44.07, 63.09);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f6ff5e96-0899-4959-a923-63db6def3803', 'BESTOYARD Frasco De Sabor 5 Peças Frascos Pequenos De Perfume Frasco De Perfume Decorativo Recipientes De Perfume Vintage Frasco De Perfume Vintage Essencial Guarnição De Antigo', 'BESTOYARD Frasco De Sabor 5 Peças Frascos Pequenos De Perfume Frasco De Perfume Decorativo Recipientes De Perfume Vintage Frasco De Perfume Vintage Essencial Guarnição De Antigo', 'brand 63', TRUE, 50, 230.65, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f6ff5e96-0899-4959-a923-63db6def3803', 32.38, 45.54, 78.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('20ba7a72-4aed-44da-b978-b86373e122c5', 'Relógio De Bolso Relógio De Bolso Para Crianças Pendurado Relógio De Enfermeira Relógio De Enfermeira Extensível Presente Menina Sílica Gel Relógio De Bolso Branco Para Crianças', 'Relógio De Bolso Relógio De Bolso Para Crianças Pendurado Relógio De Enfermeira Relógio De Enfermeira Extensível Presente Menina Sílica Gel Relógio De Bolso Branco Para Crianças', 'brand 14', TRUE, 85, 0.0, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Relógios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('20ba7a72-4aed-44da-b978-b86373e122c5', 93.89, 54.15, 36.8);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('efa6563d-b1e9-429e-ac7f-2f46cea045c8', 'FRCOLOR 3 1 Dispositivo De Depilação Facial Barbeador Facial Elétrico Para Biquíni Feminino Aparador De Pelos Pubianos Barbeadores Elétricos Femininos Depilador De Cabelo Linha De Biquíni', 'FRCOLOR 3 1 Dispositivo De Depilação Facial Barbeador Facial Elétrico Para Biquíni Feminino Aparador De Pelos Pubianos Barbeadores Elétricos Femininos Depilador De Cabelo Linha De Biquíni', 'brand 84', TRUE, 94, 79.07, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('efa6563d-b1e9-429e-ac7f-2f46cea045c8', 23.85, 29.32, 50.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('771360cd-ab8b-4567-ab94-c4f1966c488e', 'Garras de pescoço de ganso, garras de pescoço de ganso monopé FLW 266 Interface universal para montagem de montaria Monopé de montagem de câmera esportiva Ooseneck para ambientes externos', 'Garras de pescoço de ganso, garras de pescoço de ganso monopé FLW 266 Interface universal para montagem de montaria Monopé de montagem de câmera esportiva Ooseneck para ambientes externos', 'brand 3', TRUE, 63, 0.0, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('771360cd-ab8b-4567-ab94-c4f1966c488e', 73.36, 29.3, 89.44);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4aca3f6b-35c4-4870-b600-e9fee54c61c6', 'Imagem Max Steel', 'Imagem Max Steel', 'brand 41', TRUE, 80, 19.9, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Filmes', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4aca3f6b-35c4-4870-b600-e9fee54c61c6', 83.1, 20.93, 63.93);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d19608af-326e-4f61-9664-ed7d2d5003c7', 'Comedouro Plastico Anti-Formiga Gato Rosa Pet Injet para Gatos', 'Comedouro Plastico Anti-Formiga Gato Rosa Pet Injet para Gatos', 'brand 46', TRUE, 83, 14.99, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Pet Shop', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d19608af-326e-4f61-9664-ed7d2d5003c7', 95.93, 82.76, 19.82);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a0462d6d-cd02-4b42-b5a3-a56049a70a22', 'condicionador K.Pro petit teen com oleo de coco -1l', 'condicionador K.Pro petit teen com oleo de coco -1l', 'brand 57', TRUE, 63, 212.73, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Cuidados com o Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a0462d6d-cd02-4b42-b5a3-a56049a70a22', 55.89, 73.44, 17.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5b373d81-30df-45fe-9bc0-2e337c2b2c0d', 'Kit de Banco de Potência Faça você Mesmo, Estojo de Carregamento Rápido Bidirecional de 22,5 W para 4 Unidades 21700 Baterias, Caixa Plástica para Carregador de Bateria Com', 'Kit de Banco de Potência Faça você Mesmo, Estojo de Carregamento Rápido Bidirecional de 22,5 W para 4 Unidades 21700 Baterias, Caixa Plástica para Carregador de Bateria Com', 'brand 66', TRUE, 98, 68.1, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Carregadores de Celular', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5b373d81-30df-45fe-9bc0-2e337c2b2c0d', 96.24, 29.6, 87.38);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('56a1e7a4-b196-4f98-8a0d-74e8aa28d5d7', 'EXTENSOR BRACOS/PERNAS', 'EXTENSOR BRACOS/PERNAS', 'brand 12', TRUE, 62, 26.36, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Equipamento para Exercícios e Academia', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('56a1e7a4-b196-4f98-8a0d-74e8aa28d5d7', 50.71, 12.48, 21.16);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c9a883f9-f9da-4499-955f-1ae8a60f4e2e', 'Smartphone XIAOMl POCO M5 - Dual SIM 4G LTE GSM de 128GB + 6GB RAM Versão Global (Preto)', 'Smartphone XIAOMl POCO M5 - Dual SIM 4G LTE GSM de 128GB + 6GB RAM Versão Global (Preto)', 'brand 62', TRUE, 96, 0.0, '44ec81aa-2e79-41a1-902b-69e106270a74', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c9a883f9-f9da-4499-955f-1ae8a60f4e2e', 35.32, 68.77, 70.69);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('e5937ce8-5d4d-487a-a9f7-88dd60a94a9a', 'Núcleo Igor Farias, 1, Horto, 11022369 Dias / BA', 679, 'casa', 'Gonçalves', '78902-896', 'Dias da Serra', 'Rio Grande do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('e5937ce8-5d4d-487a-a9f7-88dd60a94a9a', -167495883, -798393397, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2ab42f22-7697-4065-9cab-79fb7c81ebc4', 'Alexandre Mendonça', 'rodriguesana-luiza@example.net', 'y22O2jlA%S', '41 3278 9029', NULL, NOW(), NOW(), 'Ale', 'e5937ce8-5d4d-487a-a9f7-88dd60a94a9a');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8e725124-2b14-42cd-b002-ccf9b89da5ba', 'Setor Albuquerque, 570, Inconfidência, 64053-126 Costa / RO', 480, 'comercial', 'Lopes', '78848-156', 'Novais', 'Paraíba');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8e725124-2b14-42cd-b002-ccf9b89da5ba', -605031723, -586196818, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Cardoso S.A.', '9:00-18:00', '(051) 5085-3505', '37029648196', '8e725124-2b14-42cd-b002-ccf9b89da5ba');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('66f15cf3-b803-4e0e-a73a-17dd7251c6ba', '2ab42f22-7697-4065-9cab-79fb7c81ebc4', '08953261759', NOW(), '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('531c2b9c-2e1c-4856-b4be-db6f7d192dee', 'Fone de Ouvido HD100, Sennheiser', 'Fone de Ouvido HD100, Sennheiser', 'brand 14', TRUE, 55, 275.54, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Games', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('531c2b9c-2e1c-4856-b4be-db6f7d192dee', 51.94, 82.71, 59.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('cb867126-4362-43bc-967d-bc1e2c36dafe', 'Mochilas Escolares Universe Space Galaxy para Meninas Meninos Adolescentes Estudantes - Mochila Escolar Elegante - Mochilas de Viagem Resistente à Água para Mulheres Homens, Multicolor, Large', 'Mochilas Escolares Universe Space Galaxy para Meninas Meninos Adolescentes Estudantes - Mochila Escolar Elegante - Mochilas de Viagem Resistente à Água para Mulheres Homens, Multicolor, Large', 'brand 27', TRUE, 75, 184.9, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Bolsas e Mochilas Escolares', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('cb867126-4362-43bc-967d-bc1e2c36dafe', 41.08, 13.14, 70.37);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6f67621d-ad60-4705-a2f5-e49c3de332a3', 'Hidromassageador Para Os Pés Foot Spa 220V Multilaser Saúde - HC007', 'Hidromassageador Para Os Pés Foot Spa 220V Multilaser Saúde - HC007', 'brand 56', TRUE, 5, 193.9, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Ferramentas e Materiais de Construção', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6f67621d-ad60-4705-a2f5-e49c3de332a3', 69.65, 59.23, 46.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('661bf133-fd0d-4fa0-a603-10e8abf5acae', 'Girl's 3 Pack Frozen Short Sleeves Tee Shirts and Leggings Set for Kids, Size 5 White', 'Girl's 3 Pack Frozen Short Sleeves Tee Shirts and Leggings Set for Kids, Size 5 White', 'brand 56', TRUE, 28, 252.03, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('661bf133-fd0d-4fa0-a603-10e8abf5acae', 43.38, 39.02, 32.24);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('f82dd873-bbd0-4d84-a8fd-d6d66fe19373', 'Gaiola de Pássaro Feliz 12 × 8 × 3 Gaiola de Rede de Pelúcia para Pássaros Feliz Tenda Cama Pendurada Brinquedo de Caverna', 'Gaiola de Pássaro Feliz 12 × 8 × 3 Gaiola de Rede de Pelúcia para Pássaros Feliz Tenda Cama Pendurada Brinquedo de Caverna', 'brand 68', TRUE, 33, 41.09, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Produtos para Aves e Pássaros', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('f82dd873-bbd0-4d84-a8fd-d6d66fe19373', 40.27, 68.72, 79.75);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('4cdb12f1-f977-4aac-a16b-f80a818143a9', 'Pinça de solda industrial, ferramenta de pinça reversa de ponta reta para reparo de joias de eletrônicos', 'Pinça de solda industrial, ferramenta de pinça reversa de ponta reta para reparo de joias de eletrônicos', 'brand 43', TRUE, 46, 38.81, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Produtos para Depilação e Aparelhos de Barbear', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('4cdb12f1-f977-4aac-a16b-f80a818143a9', 51.4, 59.35, 38.53);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bf708f4a-8ee2-4880-b894-3e6bb114851a', 'Introdução - Alguns Métodos C (Coleção Grimorium Verum Carpe Nicrum Livro 14)', 'Introdução - Alguns Métodos C (Coleção Grimorium Verum Carpe Nicrum Livro 14)', 'brand 9', TRUE, 49, 0.0, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Novidades da Loja Kindle', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bf708f4a-8ee2-4880-b894-3e6bb114851a', 48.16, 34.87, 46.06);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('279fb22d-3b86-4517-8da9-4c7c6a902f14', 'Kit 5 Produtos Sexy Shop Estimulante Sexual Namorados Excitante', 'Kit 5 Produtos Sexy Shop Estimulante Sexual Namorados Excitante', 'brand 33', TRUE, 4, 59.99, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Produtos de Bem-Estar Sexual', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('279fb22d-3b86-4517-8da9-4c7c6a902f14', 35.57, 12.99, 44.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('afb78ab5-62c4-4fd0-a84f-4d7dbedc1ddd', 'Autotransformador Bivolt (110V/127V para 220V ou 220V para 110V/127V) Tripolar de 750VA Multicraft', 'Autotransformador Bivolt (110V/127V para 220V ou 220V para 110V/127V) Tripolar de 750VA Multicraft', 'brand 73', TRUE, 51, 100.1, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('afb78ab5-62c4-4fd0-a84f-4d7dbedc1ddd', 47.61, 32.79, 96.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('83285905-d94e-4211-aaf3-48cc4cb4174a', 'Mochila escolar durável para faculdade, mochila casual resistente à água de tubarão oceano grafite para mulheres e homens, mochila para laptop campus para viagens, negócios, caminhadas, Multicor, Large', 'Mochila escolar durável para faculdade, mochila casual resistente à água de tubarão oceano grafite para mulheres e homens, mochila para laptop campus para viagens, negócios, caminhadas, Multicor, Large', 'brand 53', TRUE, 59, 178.79, '90410df6-5c58-4c3a-8f5f-bb63f6bfc3a1', 'Mochilas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('83285905-d94e-4211-aaf3-48cc4cb4174a', 66.46, 21.7, 52.07);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3e6d61c2-6f5e-4f73-9e16-fcc167bf1ada', 'Travessa Ana Julia Freitas, 77, Monte São José, 31952-674 Novaes da Prata / AC', 221, 'casa', 'Rezende', '42681-683', 'Pereira', 'Alagoas');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3e6d61c2-6f5e-4f73-9e16-fcc167bf1ada', 154351524, -1157075331, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('b96793e3-dc56-40b0-93e5-8f5e52930662', 'Enrico Pimenta', 'yasmin14@example.com', '^3CJN%c3F3', '51 8464 1830', NULL, NOW(), NOW(), 'Enr', '3e6d61c2-6f5e-4f73-9e16-fcc167bf1ada');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('fc2cf857-b81a-4140-a87e-e631005938c6', 'Rua de Souza, Vila Suzana Primeira Seção, 25710856 Garcia / AL', 867, 'comercial', 'Pinto', '34550-310', 'Oliveira do Norte', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('fc2cf857-b81a-4140-a87e-e631005938c6', 311202790, 490125535, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Ramos Macedo e Filhos', '9:00-18:00', '+55 (071) 7569 5557', '72109453699', 'fc2cf857-b81a-4140-a87e-e631005938c6');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('c3eb23a1-6b62-43de-8bed-b902475fdbda', 'b96793e3-dc56-40b0-93e5-8f5e52930662', '24785603992', NOW(), '8f5e05dd-9436-4364-8243-c2c5dfeffb76');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('95729837-a19b-43d3-97d6-e37d2df5ca5b', 'HOUKAI Cobertor de retenção de calor para piscina – Piscina de calor redonda azul de 1,2 m, reduz a evaporação de água mantém a água quente, cobertura solar para piscina interna', 'HOUKAI Cobertor de retenção de calor para piscina – Piscina de calor redonda azul de 1,2 m, reduz a evaporação de água mantém a água quente, cobertura solar para piscina interna', 'brand 98', TRUE, 7, 198.06, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Piscinas, Ofurôs e Materiais', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('95729837-a19b-43d3-97d6-e37d2df5ca5b', 98.54, 80.6, 78.07);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('bd20d788-f675-467f-9048-0f377f960acb', 'Pacote com 2 luzes solares para caminho, pátio, quintal, gramado, passarela, garagem, piscina', 'Pacote com 2 luzes solares para caminho, pátio, quintal, gramado, passarela, garagem, piscina', 'brand 66', TRUE, 89, 156.0, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Jardim e Piscina', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('bd20d788-f675-467f-9048-0f377f960acb', 95.82, 78.91, 82.58);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9513d58d-96c2-40c9-b7b6-2fae2293be15', 'Tornozeleiras Femininas Joias Pulseira Da Amizade Pulseiras De Pedras Preciosas Estilo Nacional Joias Estilo Nacional Pulseira Rakhi Presente Para Irmã Pulseira Vermelha Ajustável', 'Tornozeleiras Femininas Joias Pulseira Da Amizade Pulseiras De Pedras Preciosas Estilo Nacional Joias Estilo Nacional Pulseira Rakhi Presente Para Irmã Pulseira Vermelha Ajustável', 'brand 64', TRUE, 20, 57.56, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'fashion-womens-jewelry', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9513d58d-96c2-40c9-b7b6-2fae2293be15', 60.98, 79.44, 84.04);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('c4b7176d-bee2-4997-b32e-9f7378efbd79', 'Uonlytech Cola Traço Fio Cabo De Extensão Elétrica O Fio Elétrico Estender Cabo Flexível Fio De Silicone Resistência À Temperatura Cabo Fio Elétrico Acessórios DIY Resistência Às', 'Uonlytech Cola Traço Fio Cabo De Extensão Elétrica O Fio Elétrico Estender Cabo Flexível Fio De Silicone Resistência À Temperatura Cabo Fio Elétrico Acessórios DIY Resistência Às', 'brand 58', TRUE, 32, 57.34, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Eletrodomésticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('c4b7176d-bee2-4997-b32e-9f7378efbd79', 46.25, 85.62, 41.57);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a13f3ed2-5160-4944-84d6-77ae392b792e', 'Cobertura de interruptor de botão de emergência, protetor de interruptor de botão de pressão resistente a dobras de 22 mm para produtos químicos para energia elétrica para indústria', 'Cobertura de interruptor de botão de emergência, protetor de interruptor de botão de pressão resistente a dobras de 22 mm para produtos químicos para energia elétrica para indústria', 'brand 60', TRUE, 28, 0.0, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Nintendo Switch, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a13f3ed2-5160-4944-84d6-77ae392b792e', 31.46, 89.23, 47.12);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('13c3a322-73a0-4dc0-9296-302b0509c9b5', 'PDP Gaming LVL30 Wired Chat Headset: White - PlayStation 5, PlayStation 4, PC - PlayStation 5', 'PDP Gaming LVL30 Wired Chat Headset: White - PlayStation 5, PlayStation 4, PC - PlayStation 5', 'brand 95', TRUE, 79, 123.8, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'PlayStation 5, Jogos, Consoles e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('13c3a322-73a0-4dc0-9296-302b0509c9b5', 70.77, 20.98, 95.61);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0edc825c-9528-4701-a4c7-e1985144cc55', '2 Em 1 Laptops para Windows11, Tela Sensível Ao Toque 3K HD, Laptops Portáteis de 12,3 Polegadas Com Teclado Magnético, Mini Laptop de Jogos para Escritório, Suporte para (12+256G Plugue dos EUA)', '2 Em 1 Laptops para Windows11, Tela Sensível Ao Toque 3K HD, Laptops Portáteis de 12,3 Polegadas Com Teclado Magnético, Mini Laptop de Jogos para Escritório, Suporte para (12+256G Plugue dos EUA)', 'brand 54', TRUE, 72, 0.0, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Notebooks', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0edc825c-9528-4701-a4c7-e1985144cc55', 74.36, 50.55, 80.05);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2c7fb5ac-1903-44f5-86a8-3bf26a1a26b5', 'Cola para arte de unha com conjunto de adesivos de alumínio, 10 adesivos para arte de unhas, 1 x 15 ml de cola de alumínio para transferência de unhas (D)', 'Cola para arte de unha com conjunto de adesivos de alumínio, 10 adesivos para arte de unhas, 1 x 15 ml de cola de alumínio para transferência de unhas (D)', 'brand 39', TRUE, 33, 116.66, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Produtos de Manicure e Pedicure', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2c7fb5ac-1903-44f5-86a8-3bf26a1a26b5', 48.02, 83.57, 67.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3953e3e7-fd00-49b3-b70e-0ab99aadc90d', 'Conjunto de óculos de sol infantil para meninos e meninas, laço de bebê, faixa de cabelo fofa redonda em forma de flor, óculos de laço, acessório de cabelo', 'Conjunto de óculos de sol infantil para meninos e meninas, laço de bebê, faixa de cabelo fofa redonda em forma de flor, óculos de laço, acessório de cabelo', 'brand 57', TRUE, 13, 35.28, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3953e3e7-fd00-49b3-b70e-0ab99aadc90d', 95.54, 34.83, 92.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('9bdb6914-4009-4d2d-86bd-a11c0822f02d', 'NEW GAME The Monster Dance Banban Battle FOr fun', 'NEW GAME The Monster Dance Banban Battle FOr fun', 'brand 41', TRUE, 12, 82.87, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Apps e Jogos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('9bdb6914-4009-4d2d-86bd-a11c0822f02d', 42.58, 62.45, 52.78);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('57cfbf18-10f1-48f1-9d8f-8ec722cf0522', 'Queijo Parmesao Argentino La Serenissima fracionado 1kg', 'Queijo Parmesao Argentino La Serenissima fracionado 1kg', 'brand 87', TRUE, 50, 129.99, '8f5e05dd-9436-4364-8243-c2c5dfeffb76', 'Alimentos e Bebidas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('57cfbf18-10f1-48f1-9d8f-8ec722cf0522', 26.08, 47.49, 16.85);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('94c2b5a6-52f9-48da-a03e-320a1f8a3ba8', 'Vale Pastor, 357, Vista Alegre, 22602-082 Aragão / PR', 19, 'casa', 'Cavalcanti Alegre', '32110-188', 'Alves de Pereira', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('94c2b5a6-52f9-48da-a03e-320a1f8a3ba8', 195244962, -1768150329, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('01df0def-27c5-4345-abdf-6e8d500eb961', 'Davi Lucca Guerra', 'renanviana@example.net', 'C86NpTow&4', '+55 (081) 0840-7523', NULL, NOW(), NOW(), 'Dav', '94c2b5a6-52f9-48da-a03e-320a1f8a3ba8');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('981ab6a7-f52b-40d3-9ca2-412449c14726', 'Rua Rael Garcia, Saudade, 65816-063 Caldeira / AL', 651, 'comercial', 'Melo', '55347-872', 'Costa de Goiás', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('981ab6a7-f52b-40d3-9ca2-412449c14726', -679391381, -1759640454, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('2ee576e7-504d-4a13-baef-b4b822296259', 'da Paz', '9:00-18:00', '11 6676 0196', '41982306505', '981ab6a7-f52b-40d3-9ca2-412449c14726');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('45b03c05-3ca4-438a-9fe9-06283ff94980', '01df0def-27c5-4345-abdf-6e8d500eb961', '85016479348', NOW(), '2ee576e7-504d-4a13-baef-b4b822296259');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5ed53d3a-ac4d-432a-bbf1-39f64aefd0c0', 'Bolsa de maquiagem de viagem aquarela flor borboleta portátil bolsa de cosméticos impermeável com zíper, bolsa de higiene pessoal de couro PU, bolsa organizadora de cosméticos de viagem, acessórios bolsa de maquiagem para mulheres e meninas, Multicor, M', 'Bolsa de maquiagem de viagem aquarela flor borboleta portátil bolsa de cosméticos impermeável com zíper, bolsa de higiene pessoal de couro PU, bolsa organizadora de cosméticos de viagem, acessórios bolsa de maquiagem para mulheres e meninas, Multicor, M', 'brand 82', TRUE, 37, 100.23, '2ee576e7-504d-4a13-baef-b4b822296259', 'Acessórios para Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5ed53d3a-ac4d-432a-bbf1-39f64aefd0c0', 11.56, 45.24, 56.96);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('0f65af59-b9c8-4c53-9be6-ad1bb62ee706', 'Facoryyggbc Substituição de telefone para Xiaomi Munção do quadro médio com teclas laterais para xiaomi mi 8 SE Reparar', 'Facoryyggbc Substituição de telefone para Xiaomi Munção do quadro médio com teclas laterais para xiaomi mi 8 SE Reparar', 'brand 61', TRUE, 83, 129.79, '2ee576e7-504d-4a13-baef-b4b822296259', 'Eletrônicos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('0f65af59-b9c8-4c53-9be6-ad1bb62ee706', 82.46, 66.18, 83.86);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('3116cc3a-c8fa-4c7d-9b62-e06aa99fad85', 'Batom Matte Velvet - Havana 3,5g Contém 1g', 'Batom Matte Velvet - Havana 3,5g Contém 1g', 'brand 2', TRUE, 52, 43.15, '2ee576e7-504d-4a13-baef-b4b822296259', 'Maquiagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('3116cc3a-c8fa-4c7d-9b62-e06aa99fad85', 99.04, 87.75, 65.9);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('769fd5cf-db6d-47cb-b6d2-facad840b668', 'Girls' R.E.A.L. Naomi Ella Trouser Blue 16 REG', 'Girls' R.E.A.L. Naomi Ella Trouser Blue 16 REG', 'brand 70', TRUE, 21, 635.12, '2ee576e7-504d-4a13-baef-b4b822296259', 'Meninas', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('769fd5cf-db6d-47cb-b6d2-facad840b668', 81.03, 78.08, 91.52);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('2bd62c48-3ba1-44ad-aa15-e60c08cc39ff', 'Eau De Parfum Spray 1 oz', 'Eau De Parfum Spray 1 oz', 'brand 59', TRUE, 15, 217.0, '2ee576e7-504d-4a13-baef-b4b822296259', 'Perfumes e Fragrâncias', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('2bd62c48-3ba1-44ad-aa15-e60c08cc39ff', 17.04, 30.08, 27.49);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('e0c68411-053f-4124-838e-70df1058b822', 'Vaguelly Kit De Inflador De Bolas Infláveis Para Natação Bombas Manuais Para Inflador De Bolas Portáteis De Basquete Mini Kit De Inflador Manual Inflador De Basquete Mini Bomba De Ar', 'Vaguelly Kit De Inflador De Bolas Infláveis Para Natação Bombas Manuais Para Inflador De Bolas Portáteis De Basquete Mini Kit De Inflador Manual Inflador De Basquete Mini Bomba De Ar', 'brand 92', TRUE, 46, 56.19, '2ee576e7-504d-4a13-baef-b4b822296259', 'Cuidados Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('e0c68411-053f-4124-838e-70df1058b822', 49.96, 87.0, 16.63);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('1e9254e2-6292-4a49-bc1d-ccb543647c86', 'Pijama de animais de manga curta, conjunto confortável de pijama de verão para bebê para uso diário (150 cm)', 'Pijama de animais de manga curta, conjunto confortável de pijama de verão para bebê para uso diário (150 cm)', 'brand 50', TRUE, 93, 36.51, '2ee576e7-504d-4a13-baef-b4b822296259', 'Bebês', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('1e9254e2-6292-4a49-bc1d-ccb543647c86', 38.47, 44.96, 71.95);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('97cc0e6b-b338-4a86-87b6-327c0f6e8ab9', 'Mochila escolar para meninos e meninas Hyena Animal Beast Close Up Bolsa de ombro para estudantes, bolsa de ombro para meninos e meninas, leve, durável, bolsa de viagem para trilhas, acampamento, mochila de dia', 'Mochila escolar para meninos e meninas Hyena Animal Beast Close Up Bolsa de ombro para estudantes, bolsa de ombro para meninos e meninas, leve, durável, bolsa de viagem para trilhas, acampamento, mochila de dia', 'brand 7', TRUE, 20, 146.91, '2ee576e7-504d-4a13-baef-b4b822296259', 'Bolsas e Mochilas Escolares', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('97cc0e6b-b338-4a86-87b6-327c0f6e8ab9', 42.52, 40.14, 54.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('b5c03bcc-7cd1-4b86-99a8-c487c1be3352', 'ência Hidratante | 30ml/1 Fl Oz ência Fluida Facial Para Mulheres | Vitamina A Refirmante Facial Rejuvenescedor Cuidados com a Pele Poros Para Poros ásperos e', 'ência Hidratante | 30ml/1 Fl Oz ência Fluida Facial Para Mulheres | Vitamina A Refirmante Facial Rejuvenescedor Cuidados com a Pele Poros Para Poros ásperos e', 'brand 76', TRUE, 60, 60.39, '2ee576e7-504d-4a13-baef-b4b822296259', 'Produtos para Cuidados com o Rosto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('b5c03bcc-7cd1-4b86-99a8-c487c1be3352', 67.8, 41.62, 10.67);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('9d50bdaa-f13d-4ab7-ad43-761553dc1301', 'Avenida Carvalho, 61, Vila Da Luz, 66225-510 Rezende de Dias / TO', 841, 'casa', 'Novaes de Pastor', '61939-179', 'Gomes do Campo', 'Tocantins');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('9d50bdaa-f13d-4ab7-ad43-761553dc1301', 635030495, -581966503, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2b810c62-2e43-4098-80b9-0a342f3c62b8', 'Enzo Gabriel Camargo', 'vitorbarros@example.org', 'br@I9Yf9Ju', '(011) 4720 8823', NULL, NOW(), NOW(), 'Enz', '9d50bdaa-f13d-4ab7-ad43-761553dc1301');

INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('24e6690b-26b8-45bc-a29c-d9495ff81523', 'Distrito Carlos Eduardo Cassiano, 64, Santo André, 81615199 Castro / MA', 607, 'comercial', 'Viana Grande', '59713-135', 'Azevedo', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('24e6690b-26b8-45bc-a29c-d9495ff81523', 433210009, 1173933763, 0);

INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Moura', '9:00-18:00', '+55 (084) 5416 7081', '37264591034', '24e6690b-26b8-45bc-a29c-d9495ff81523');

INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('4867a8b7-7286-4b4e-bea9-e68c5a058884', '2b810c62-2e43-4098-80b9-0a342f3c62b8', '90832754188', NOW(), 'bb214568-2508-4fa3-a3cb-051e7f1f9d34');

-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------
INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('777eb79d-a28d-4a45-8e74-34b5214d23bc', 'Cueca Boxer Infantil Lupo 141-003', 'Cueca Boxer Infantil Lupo 141-003', 'brand 20', TRUE, 52, 24.99, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Meninos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('777eb79d-a28d-4a45-8e74-34b5214d23bc', 46.04, 92.42, 74.85);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('df4248a4-d70e-441f-928b-beb8688068dc', 'Escova macia com cabo de madeira, escova de barbeiro, ferramenta prática para limpeza de pescoço para homens e mulheres para salão profissional', 'Escova macia com cabo de madeira, escova de barbeiro, ferramenta prática para limpeza de pescoço para homens e mulheres para salão profissional', 'brand 27', TRUE, 95, 53.99, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Instrumentos para Modelagem de Cabelo', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('df4248a4-d70e-441f-928b-beb8688068dc', 21.66, 85.25, 94.48);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('5585371d-f16f-4114-8297-d4b48f962e53', 'Coçador de cabeça, couro cabeludo, relaxamento, ergonômico, portátil, massageador de cabeça com 12 dedos, garra de massagem para homens e mulheres(Azul)', 'Coçador de cabeça, couro cabeludo, relaxamento, ergonômico, portátil, massageador de cabeça com 12 dedos, garra de massagem para homens e mulheres(Azul)', 'brand 9', TRUE, 87, 0.0, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Produtos para Cuidados com o Rosto', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('5585371d-f16f-4114-8297-d4b48f962e53', 72.28, 74.57, 97.71);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('a6a0888f-a4ee-435a-a39f-eb2d087b111e', 'NOLITOY Telefones Cordão Decoração Chaveiro Telefone Mão Charme Charme De Telefone Móvel Pulseira De Charme De Telefone Acessórios De Pulseira De Charme De Telefone Celular Cadeia De', 'NOLITOY Telefones Cordão Decoração Chaveiro Telefone Mão Charme Charme De Telefone Móvel Pulseira De Charme De Telefone Acessórios De Pulseira De Charme De Telefone Celular Cadeia De', 'brand 48', TRUE, 10, 46.41, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Telefones e Acessórios', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('a6a0888f-a4ee-435a-a39f-eb2d087b111e', 46.0, 69.41, 92.19);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d3861a2e-685e-4614-9de0-6fa8a7765a52', 'Vowel Consonant Recognition', 'Vowel Consonant Recognition', 'brand 24', TRUE, 7, 7.65, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Fire TV Stick Apps', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d3861a2e-685e-4614-9de0-6fa8a7765a52', 13.22, 96.92, 47.91);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('af5b62e6-2afc-4e99-a60c-8d140b394b68', 'Spray adesivos automotivos,100ml Adesivos Vidro Eficazes Solvente | Adesivos carroçaria eficientes solvente, ferramentas limpeza interna e externa para decalque, fita,', 'Spray adesivos automotivos,100ml Adesivos Vidro Eficazes Solvente | Adesivos carroçaria eficientes solvente, ferramentas limpeza interna e externa para decalque, fita,', 'brand 56', TRUE, 55, 20.59, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Óleos e Fluidos Automotivos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('af5b62e6-2afc-4e99-a60c-8d140b394b68', 40.82, 97.29, 34.17);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('6791a6ca-fda2-440a-9fc2-e97b57af99d7', 'Estante de mesa de madeira expansível, organização de armazenamento de mesa, estante de estilo livre, montagem de exibição, adequada para escritórios domésticos e dormitórios', 'Estante de mesa de madeira expansível, organização de armazenamento de mesa, estante de estilo livre, montagem de exibição, adequada para escritórios domésticos e dormitórios', 'brand 64', TRUE, 84, 528.99, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Móveis para Escritório', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('6791a6ca-fda2-440a-9fc2-e97b57af99d7', 32.96, 50.47, 49.8);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('62294e67-cffe-4920-8389-b77a29be7096', 'Base de suporte para máquina de lavar Base móvel ajustável para máquina de lavar 4 rodas de travamento 4/8 pés Suporte para freezer 45-65cm Suporte telescópico para móveis Bandeja', 'Base de suporte para máquina de lavar Base móvel ajustável para máquina de lavar 4 rodas de travamento 4/8 pés Suporte para freezer 45-65cm Suporte telescópico para móveis Bandeja', 'brand 63', TRUE, 73, 909.99, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Eletrodomésticos', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('62294e67-cffe-4920-8389-b77a29be7096', 12.98, 11.66, 65.22);

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('d3c13f4e-c45a-4f14-9568-526289641005', 'Necessaire organizadora de viagem para pendurar para mulheres, bolsa de maquiagem grande para viagem, kit de acessórios de viagem, chuveiro de banheiro, padrão de feliz Natal, estojo de cosméticos para mulheres e meninas com gancho resistente, Multicor, M', 'Necessaire organizadora de viagem para pendurar para mulheres, bolsa de maquiagem grande para viagem, kit de acessórios de viagem, chuveiro de banheiro, padrão de feliz Natal, estojo de cosméticos para mulheres e meninas com gancho resistente, Multicor, M', 'brand 21', TRUE, 77, 100.23, 'bb214568-2508-4fa3-a3cb-051e7f1f9d34', 'Acessórios para Viagem', 'ACTIVE');
INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('d3c13f4e-c45a-4f14-9568-526289641005', 37.58, 24.25, 83.75);

-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------
-- USER INFO ENDS ------------------------------------------------------
