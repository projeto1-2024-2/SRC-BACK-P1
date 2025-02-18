-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('bab0220f-8e3d-4e92-b567-958a9de276ee', 'Rodovia de Brito, 62, Mangueiras, 22553-970 Nunes do Campo / RS', 5, 'casa', 'Sá Paulista', '63732-771', 'Castro', 'Santa Catarina');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('bab0220f-8e3d-4e92-b567-958a9de276ee', 580289144, 411095836, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('172c262d-7bbc-4265-aed8-0b09fde59bd1', 'Valentina Camargo', 'daniel08@example.org', 'Wq)4ZXtuaQ', '21 0046 8535', NULL, NOW(), NOW(), 'Val', 'bab0220f-8e3d-4e92-b567-958a9de276ee');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('d45016c0-c9ed-49d7-89af-49e877ee911a', 'Chácara de Gonçalves, 8, Vila São Paulo, 31639122 Novaes / DF', 537, 'casa', 'Teixeira das Pedras', '47445-999', 'Casa Grande da Praia', 'Espírito Santo');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('d45016c0-c9ed-49d7-89af-49e877ee911a', -687717094, 866786281, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('656df1a7-ac4b-4115-a379-7c6494c698c6', 'Vitor Hugo das Neves', 'ribeirodante@example.com', 'ZQ$s25SaVW', '(084) 7699-3746', NULL, NOW(), NOW(), 'Vit', 'd45016c0-c9ed-49d7-89af-49e877ee911a');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('863ae9fa-b1ee-4205-9f87-f2027db082ae', 'Jardim Cirino, 5, Pongelupe, 36899-110 Costela / PI', 346, 'casa', 'Alves', '91170-989', 'Alves de Novaes', 'Maranhão');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('863ae9fa-b1ee-4205-9f87-f2027db082ae', -673250639, -554249562, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4f64640f-6b83-4091-8b02-453a70d256a3', 'Rhavi Barros', 'zmoura@example.org', 'XS_b02CsE$', '(081) 1004-2388', NULL, NOW(), NOW(), 'Rha', '863ae9fa-b1ee-4205-9f87-f2027db082ae');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('9238a9fe-61d2-4711-8d71-fa6772558541', 'Conjunto de Nascimento, 65, Conjunto Bonsucesso, 44042976 Teixeira / RJ', 784, 'casa', 'Ribeiro', '82253-682', 'Pereira Alegre', 'Distrito Federal');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('9238a9fe-61d2-4711-8d71-fa6772558541', 628659098, -1336486925, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('1541e754-5e62-4dc5-a7ef-d4e879b822bf', 'Maria Fonseca', 'macedoraquel@example.com', 'h@3mLgvbzm', '+55 (084) 5432 4722', NULL, NOW(), NOW(), 'Mar', '9238a9fe-61d2-4711-8d71-fa6772558541');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('08426e06-61df-41bd-af73-0ad88fa32680', 'Alameda Câmara, 98, Alípio De Melo, 65008162 Cunha / MT', 692, 'casa', 'Macedo Verde', '15266-782', 'da Conceição', 'Sergipe');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('08426e06-61df-41bd-af73-0ad88fa32680', 34344855, 1669329597, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('25b7dd6b-7f68-4116-8f3a-650d90948223', 'Rebeca Cardoso', 'rferreira@example.org', 'b9VEElb0@c', '0800 017 9865', NULL, NOW(), NOW(), 'Reb', '08426e06-61df-41bd-af73-0ad88fa32680');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('8588ed61-93db-4d18-9cca-97c77d9594a5', 'Favela Mirella Rios, 8, Vila Aeroporto Jaraguá, 48224759 Mendonça das Pedras / SP', 759, 'casa', 'Nogueira de Martins', '71797-659', 'Vasconcelos', 'Rio Grande do Norte');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('8588ed61-93db-4d18-9cca-97c77d9594a5', -547271420, 577080304, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('6e71abac-d581-4cd6-b35d-e4f662cf739b', 'Eduarda Moura', 'souzamarcelo@example.net', 'TXv(0VNp(@', '0800-403-7904', NULL, NOW(), NOW(), 'Edu', '8588ed61-93db-4d18-9cca-97c77d9594a5');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('1a41f734-9420-4bd0-956b-4af78027f948', 'Feira Rodrigo Guerra, Conjunto Providencia, 14513-338 Monteiro de Goiás / BA', 347, 'casa', 'da Costa', '78321-450', 'Rios dos Dourados', 'Rondônia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('1a41f734-9420-4bd0-956b-4af78027f948', -832948703, -459934245, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('c220a245-c1b4-46b4-943c-188c670b48ec', 'Liam Mendes', 'kcamara@example.net', ')6DxIYdAA6', '+55 81 7445 2027', NULL, NOW(), NOW(), 'Lia', '1a41f734-9420-4bd0-956b-4af78027f948');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('7f7cf30a-ef35-4630-b976-6a165b156674', 'Parque Guerra, 4, Ventosa, 82195-263 Fernandes / AM', 523, 'casa', 'Nogueira', '43240-882', 'Farias da Praia', 'Minas Gerais');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('7f7cf30a-ef35-4630-b976-6a165b156674', 448187314, -1015517664, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('1e9942d7-ada6-4ed4-8aaa-ffe01f330ba4', 'Augusto Cunha', 'joao-gabrielandrade@example.org', 'c+u3USNm0^', '0500 088 2812', NULL, NOW(), NOW(), 'Aug', '7f7cf30a-ef35-4630-b976-6a165b156674');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c5e3b62a-1b02-4948-b621-113f5111f27c', 'Trevo Pinto, 18, Itatiaia, 16032-876 Santos do Amparo / SC', 769, 'casa', 'Aragão das Pedras', '20999-471', 'da Rosa do Norte', 'Rio Grande do Norte');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c5e3b62a-1b02-4948-b621-113f5111f27c', -411996726, -1617297451, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('ab3640f1-4e17-4703-ab81-5865139cad79', 'Eduardo Casa Grande', 'leandro37@example.com', 'O(+6GmRy6K', '21 9035-7188', NULL, NOW(), NOW(), 'Edu', 'c5e3b62a-1b02-4948-b621-113f5111f27c');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('df62cc0e-00fe-4a31-a93a-924589028318', 'Residencial de Lima, 53, Aparecida, 02541-356 Freitas / RO', 180, 'casa', 'Costela', '86771-273', 'Pacheco', 'Piauí');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('df62cc0e-00fe-4a31-a93a-924589028318', -603241314, -1253193739, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('dee42528-0c41-4900-9b02-616d1512021c', 'João Vitor Souza', 'qgoncalves@example.com', 'X_1SXQni&u', '(061) 0298 2802', NULL, NOW(), NOW(), 'Joã', 'df62cc0e-00fe-4a31-a93a-924589028318');

-- USER INFO ENDS ------------------------------------------------------

