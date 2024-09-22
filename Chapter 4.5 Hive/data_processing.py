import os
import pandas as pd

# Загружаем данные
customers_csv = pd.read_csv('.\csv_files\customers.csv')
organizations_csv = pd.read_csv('.\csv_files\organizations.csv')
people_csv = pd.read_csv('.\csv_files\people.csv')

# Добавляем колонку Subscription Date
customers_csv['Subscription Date'] = pd.to_datetime(customers_csv['Subscription Date'])
customers_csv['Subscription Year'] = customers_csv['Subscription Date'].dt.year

# Добавляем колонку Group
df = pd.DataFrame({'data' : range(1, 100001)})
customers_csv['Group'] = (df.index // 10000) + 1
organizations_csv['Group'] = (df.index // 10000) + 1
people_csv['Group'] = (df.index // 10000) + 1

# Убираем запятые в значениях
organizations_csv['Name'] = organizations_csv['Name'].astype(str)
organizations_csv['Name'] = organizations_csv['Name'].str.replace(',', '')

customers_csv['Company'] = customers_csv['Company'].astype(str)
customers_csv['Company'] = customers_csv['Company'].str.replace(',', '')

people_csv['Job Title'] = people_csv['Job Title'].astype(str)
people_csv['Job Title'] = people_csv['Job Title'].str.replace(',', '')

# Выгружаем обработанные данные
if not os.path.exists('updated'):
    os.makedirs('updated') 

file_path = os.path.join('updated', 'customers.csv')
customers_csv.to_csv(file_path, index=False)
file_path = os.path.join('updated', 'organizations.csv')
organizations_csv.to_csv(file_path, index=False)
file_path = os.path.join('updated', 'people.csv')
people_csv.to_csv(file_path, index=False)



