## Esse arquivo gera dados relacionados aos usuários padrão da aplicação. 
## Povoa as tabelas User, Address e Location

import random
from faker import Faker

fake = Faker('pt_BR')

def gerar_dados_em_arquivo(num_registros, arquivo):
    with open(arquivo, 'w') as f:
        for _ in range(num_registros):
            nome = fake.name()
            email = fake.email()
            telefone = fake.phone_number()
            endereco = fake.address().replace('\n', ', ')
            cidade = fake.city()
            estado = fake.state()

            cep = f"{random.randint(10000, 99999)}-{random.randint(100, 999)}"

            latitude = random.randint(-900000000, 900000000)
            longitude = random.randint(-1800000000, 1800000000)
            pseudonimo = nome.split()[0][:3]

            address_id = str(fake.uuid4())
            endereco_insert = f"""INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('{address_id}', '{endereco}', {random.randint(1, 1000)}, 'casa', '{fake.city()}', '{cep}', '{cidade}', '{estado}');"""

            location_insert = f"""INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('{address_id}', {latitude}, {longitude}, 0);"""

            user_id = str(fake.uuid4())
            usuario_insert = f"""INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('{user_id}', '{nome}', '{email}', '{fake.password()}', '{telefone}', NULL, NOW(), NOW(), '{pseudonimo}', '{address_id}');"""

            f.write("-- USER INFO STARTS ------------------------------------------------------")
            f.write('\n')
            f.write(endereco_insert + '\n')
            f.write('\n')
            f.write(location_insert + '\n')
            f.write('\n')
            f.write(usuario_insert + '\n')
            f.write('\n')
            f.write("-- USER INFO ENDS ------------------------------------------------------")
            f.write('\n')
            f.write('\n')

gerar_dados_em_arquivo(10, './1.user-inserts.sql')
