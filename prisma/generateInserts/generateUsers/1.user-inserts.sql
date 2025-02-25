-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('3bbce892-5c40-43ff-8460-26b4489a43f4', 'Núcleo Ana Cecília Marques, 54, Maria Tereza, 09995-030 Caldeira Alegre / CE', 34, 'casa', 'Santos de Minas', '52841-821', 'Martins', 'Ceará');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('3bbce892-5c40-43ff-8460-26b4489a43f4', 321846491, 1668898011, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('4deab89e-3010-4be7-a96e-c1a36cdea6dc', 'José Miguel Pinto', 'ana-lauraporto@example.com', '%tIZe#tEw8', '+55 (041) 8692 2455', NULL, NOW(), NOW(), 'Jos', '3bbce892-5c40-43ff-8460-26b4489a43f4');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('6a95596f-2d37-49ab-b776-bfcf39e1bd28', 'Viela Mathias Siqueira, 4, Vila Da Amizade, 31052-871 Cirino / PA', 530, 'casa', 'Rezende da Prata', '52779-719', 'Aparecida Grande', 'Roraima');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('6a95596f-2d37-49ab-b776-bfcf39e1bd28', 623489123, -659907244, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('3bddf907-ac2b-4782-9c95-e82529b70fad', 'Manuella Pimenta', 'lunna65@example.org', '+DcV7AdA&T', '+55 81 5784-5867', NULL, NOW(), NOW(), 'Man', '6a95596f-2d37-49ab-b776-bfcf39e1bd28');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('51180392-32f5-4bc7-923f-faa8d0196e5e', 'Viaduto de Aparecida, 266, Tirol, 45298-781 Vargas da Serra / PA', 264, 'casa', 'Carvalho', '39228-497', 'Sá', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('51180392-32f5-4bc7-923f-faa8d0196e5e', -446501971, -1507624193, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('0216b951-69b0-4cee-a177-5075a0e88b3e', 'Dr. Pedro Henrique Vieira', 'fernandesgiovanna@example.org', '$m77XXwtjq', '+55 (031) 2713 3016', NULL, NOW(), NOW(), 'Dr.', '51180392-32f5-4bc7-923f-faa8d0196e5e');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('c52ebd00-c6a0-4a83-861e-9858407c61eb', 'Feira de Macedo, Vila Maloca, 94148-488 Porto / AL', 627, 'casa', 'Cunha', '27781-105', 'Vieira dos Dourados', 'Acre');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('c52ebd00-c6a0-4a83-861e-9858407c61eb', -781914093, 443394014, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('ce46acd8-3e6a-4580-9759-a0d66e063a16', 'Ísis Oliveira', 'luiz-fernando94@example.com', 'U+2ZmjjZ48', '(051) 4709 8987', NULL, NOW(), NOW(), 'Ísi', 'c52ebd00-c6a0-4a83-861e-9858407c61eb');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('2ca1a566-ff06-4bd0-9d4a-efbf1784f3c0', 'Trevo Maria Luísa Duarte, 684, Etelvina Carneiro, 40017345 Pinto dos Dourados / MG', 136, 'casa', 'Dias', '78920-873', 'da Rocha', 'Rio Grande do Sul');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('2ca1a566-ff06-4bd0-9d4a-efbf1784f3c0', -887136723, 760037069, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('2995fa69-6fa7-4510-8f2d-0d53d79b69a4', 'Bárbara Ferreira', 'alanaaragao@example.net', '+IQeYsPMv1', '+55 (011) 6436-3852', NULL, NOW(), NOW(), 'Bár', '2ca1a566-ff06-4bd0-9d4a-efbf1784f3c0');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('a2a1ab65-0dd4-41a0-a1ed-55cb23eae9df', 'Fazenda Jesus, 50, Camargos, 04312-731 Vieira / SP', 214, 'casa', 'Nunes da Praia', '49053-886', 'da Paz de Macedo', 'Pernambuco');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('a2a1ab65-0dd4-41a0-a1ed-55cb23eae9df', -764900636, -125550263, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('a8bad6a5-ee73-407e-9418-9516543925fe', 'Liz Barbosa', 'lferreira@example.com', '&53HpPq!MB', '71 0874 8076', NULL, NOW(), NOW(), 'Liz', 'a2a1ab65-0dd4-41a0-a1ed-55cb23eae9df');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('24ac08d9-58c8-48ca-8ee0-8221a564d928', 'Residencial de Silveira, 781, Vila Paris, 34783423 Castro / RJ', 550, 'casa', 'Viana', '38069-801', 'Marques da Praia', 'Goiás');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('24ac08d9-58c8-48ca-8ee0-8221a564d928', -554646273, -1605775834, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('06a51365-bd08-4b7a-ae2e-94fd220b50a8', 'Danilo Rodrigues', 'oviana@example.org', '_bTcQU6uM8', '+55 61 5728-8885', NULL, NOW(), NOW(), 'Dan', '24ac08d9-58c8-48ca-8ee0-8221a564d928');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('35919982-e0b7-4574-a0ea-4e3425c019a1', 'Trevo de Fonseca, 647, Bela Vitoria, 55685-832 Costela / MA', 370, 'casa', 'Cunha', '99584-153', 'Leão Alegre', 'Roraima');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('35919982-e0b7-4574-a0ea-4e3425c019a1', -36722972, -1220085816, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('0686a1c4-faf5-4ae6-863c-13ed97229cf2', 'Lorenzo Cirino', 'emoura@example.org', '@X!9Ubiac(', '(071) 6934-5146', NULL, NOW(), NOW(), 'Lor', '35919982-e0b7-4574-a0ea-4e3425c019a1');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('f496e9a3-bebf-4750-8aa6-4cfa4487dd07', 'Loteamento de Nogueira, 83, Vila Cloris, 00509426 Teixeira / PI', 53, 'casa', 'Abreu', '96015-361', 'Silva', 'Rio de Janeiro');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('f496e9a3-bebf-4750-8aa6-4cfa4487dd07', -14039611, 735951331, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('eb631c66-b482-497b-b076-166453a6e291', 'Sr. Emanuel Sá', 'eabreu@example.com', 'EtD&y9BcU@', '(061) 7625-7747', NULL, NOW(), NOW(), 'Sr.', 'f496e9a3-bebf-4750-8aa6-4cfa4487dd07');

-- USER INFO ENDS ------------------------------------------------------

-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('a9768690-b280-4664-99e9-420ea96afdd8', 'Núcleo de Sampaio, 7, Salgado Filho, 64056331 Ferreira das Flores / AP', 45, 'casa', 'Fonseca do Galho', '86829-641', 'Nogueira', 'Bahia');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('a9768690-b280-4664-99e9-420ea96afdd8', 403918918, -819239312, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('a4ac3f37-7ee9-49e7-83e1-d463f9feae41', 'Isaque Costa', 'rodrigueslevi@example.net', '(2PwLAXuvJ', '31 0016-4124', NULL, NOW(), NOW(), 'Isa', 'a9768690-b280-4664-99e9-420ea96afdd8');

-- USER INFO ENDS ------------------------------------------------------

