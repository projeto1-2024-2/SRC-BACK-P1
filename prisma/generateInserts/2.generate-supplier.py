import pandas as pd
import random
import os
import kagglehub
from faker import Faker

# Baixa o dataset do Kaggle
path = kagglehub.dataset_download("asaniczka/amazon-brazil-products-2023-1-3m-products")
arquivo_csv = os.path.join(path, 'amz_br_total_products_data_processed.csv')

df = pd.read_csv(arquivo_csv)

total_linhas = len(df)

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
            
            establishment_address_id = str(fake.uuid4()) 
            establishment_endereco = fake.address().replace('\n', ', ')
            establishment_cep = f"{random.randint(10000, 99999)}-{random.randint(100, 999)}"
            establishment_cidade = fake.city()
            establishment_estado = fake.state()

            establishment_address_insert = f"""INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('{establishment_address_id}', '{establishment_endereco}', {random.randint(1, 1000)}, 'comercial', '{fake.city()}', '{establishment_cep}', '{establishment_cidade}', '{establishment_estado}');"""
            
            establishment_location_insert = f"""INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('{establishment_address_id}', {random.randint(-900000000, 900000000)}, {random.randint(-1800000000, 1800000000)}, 0);"""

            establishment_id = str(fake.uuid4())
            establishment_name = fake.company() 
            establishment_insert = f"""INSERT INTO "Establishment" ("id", "name", "operatingHours", "commercialPhone", "taxId", "addressId")
VALUES ('{establishment_id}', '{establishment_name}', '9:00-18:00', '{fake.phone_number()}', '{fake.ssn()}', '{establishment_address_id}');"""
            
            tax_id = fake.ssn()
            supplier_id = str(fake.uuid4())
            supplier_insert = f"""INSERT INTO "Supplier" ("id", "userId", "taxId", "createdAt", "establishmentId")
VALUES ('{supplier_id}', '{user_id}', '{tax_id}', NOW(), '{establishment_id}');"""

            f.write("-- USER INFO STARTS ------------------------------------------------------")
            f.write('\n')
            f.write(endereco_insert + '\n')
            f.write('\n')
            f.write(location_insert + '\n')
            f.write('\n')
            f.write(usuario_insert + '\n')
            f.write('\n')
            f.write(establishment_address_insert + '\n')
            f.write('\n')
            f.write(establishment_location_insert + '\n')
            f.write('\n')
            f.write(establishment_insert + '\n')
            f.write('\n')
            f.write(supplier_insert + '\n')
            f.write('\n')

            f.write("-- >>>> PRODUCTS INFO STARTS ------------------------------------------------------")
            f.write('\n')
            num_produtos = random.randint(30, 50)

            for _ in range(num_produtos):
                produto = df.sample(n=1).iloc[0]
                product_id = str(fake.uuid4())
                product_title = produto['title'] 
                product_brand = f"brand {random.randint(1, 100)}"  
                product_quantity = random.randint(1, 100)
                product_price = round(produto['price'], 2)
                product_category = produto['categoryName'] 

                product_insert = f"""INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('{product_id}', '{product_title}', '{product_title}', '{product_brand}', TRUE, {product_quantity}, {product_price}, '{establishment_id}', '{product_category}', 'ACTIVE');"""
                
                product_dimension_insert = f"""INSERT INTO "ProductDimension" ("productId", "length", "height", "width")
VALUES ('{product_id}', {round(random.uniform(10.0, 100.0), 2)}, {round(random.uniform(10.0, 100.0), 2)}, {round(random.uniform(10.0, 100.0), 2)});"""

                f.write(product_insert + '\n')
                f.write(product_dimension_insert + '\n')
                f.write('\n')

            f.write("-- >>>> PRODUCTS INFO ENDS ------------------------------------------------------")
            f.write('\n')
            f.write("-- USER INFO ENDS ------------------------------------------------------")
            f.write('\n')

gerar_dados_em_arquivo(10, './2.supplier-inserts.sql')
