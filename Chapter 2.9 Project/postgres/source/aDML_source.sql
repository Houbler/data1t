INSERT INTO sales (order_time, product_name, cost, brand, model, category, cookies, amount) VALUES
    ('2023-06-01', 'Телефон Oppo Find X6', 59000, 'Oppo', 'Find X6', 'Телефон', '111', 1),
    ('2023-06-01', 'Ноутбук Apple MacBook Pro', 140000, 'Apple', 'MacBook Pro', 'Ноутбук', '444', 2),
    ('2023-06-01', 'Ноутбук Apple Macbook Air', 84000, 'Apple', 'Macbook Air', 'Ноутбук', '000', 1),
    ('2023-06-02', 'Телефон Apple iPhone 13 Pro', 110000, 'Apple', 'iPhone 13 Pro', 'Телефон', '888', 1),
    ('2023-06-02', 'Телефон Samsung Galaxy S21 Ultra', 78000, 'Samsung', 'Galaxy S21 Ultra', 'Телефон', '555', 2),
    ('2023-06-02', 'Ноутбук HP 250 G6', 37000, 'HP', '250 G6', 'Ноутбук', '111', 1),
    ('2023-06-02', 'Ноутбук Acer Aspire 3', 38000, 'Acer', 'Aspire 3', 'Ноутбук', '999', 1),
    ('2023-06-02', 'Ноутбук Asus ZenBook UX430UN', 140000, 'Asus', 'ZenBook UX430UN', 'Ноутбук', '222', 1),
    ('2023-06-03', 'Телефон Xiaomi Redmi Note 10 Pro', 30000, 'Xiaomi', 'Redmi Note 10 Pro', 'Телефон', '777', 1),
    ('2023-06-03', 'Ноутбук Acer Swift 3', 71000, 'Acer', 'Swift 3', 'Ноутбук', '333', 1),
    ('2023-06-04', 'Телефон Google Pixel 6', 35000, 'Google', 'Pixel 6', 'Телефон', '888', 2),
    ('2023-06-04', 'Телефон Samsung Galaxy Z Flip3', 59000, 'Samsung', 'Galaxy Z Flip3', 'Телефон', '666', 2),
    ('2023-06-04', 'Телефон Oppo Reno6 Pro+ 5G', 36000, 'Oppo', 'Reno6 Pro+ 5G', 'Телефон', '888', 1),
    ('2023-06-05', 'Телефон Vivo X70 Pro+', 77000, 'Vivo', 'X70 Pro+', 'Телефон', '000', 4),
    ('2023-06-05', 'Ноутбук Dell Inspiron 3567', 46000, 'Dell', 'Inspiron 3567', 'Ноутбук', '444', 2);

INSERT INTO user_account_info (cookies, buyers_name, gender, birth_date, email, phone) VALUES
    ('111', 'Стрелков Вадим Аристархович', 'M', '1980-02-23', 'regu_hebutu49@outlook.com', '+7 (913) 391-15-65'),
    ('222', 'Евдокимов Болеслав Тимурович', 'M', '2004-01-02', 'mamofa-biki68@mail.com', '+7 (997) 828-49-68'),
    ('333', 'Виноградова Октябрина Дмитрьевна', 'F', '1973-04-21', 'bafo_jurifo70@hotmail.com', '+7 (968) 372-11-27'),
    ('444', 'Кошелев Моисей Геннадьевич', 'M', '1998-09-22', 'wif-agafimi79@gmail.com', '+7 (930) 923-13-22'),
    ('555', 'Гущина Малика Вениаминовна', 'F', '2003-09-12', 'heban_ivita39@outlook.com', '+7 (912) 832-23-12'),
    ('666', 'Воронова Хильда Валентиновна', 'F', '1980-12-15', 'hik_okomuto99@gmail.com', '+7 (936) 164-73-96'),
    ('777', 'Новиков Севастьян Степанович', 'M', '1998-06-19', 'fihufeg-oma25@aol.com', '+7 (905) 999-14-17'),
    ('888', 'Князев Демьян Эдуардович', 'M', '1985-01-18', 'vatuyuc_ito13@hotmail.com', '+7 (991) 271-73-76'),
    ('999', 'Николаева Нева Тарасовна', 'F', '1981-01-19', 'nihosih_oni27@outlook.com', '+7 (959) 458-38-89'),
    ('000', 'Боброва Анэля Дмитрьевна', 'F', '1963-01-22', 'dey_igucera86@yahoo.com', '+7 (979) 850-19-25');

INSERT INTO promos (product_name, start_date_promo, end_date_promo, percent) VALUES
    ('Телефон Oppo Find X6','2023-06-01', '2023-08-31', 15.0),
    ('Телефон Samsung Galaxy S21 Ultra','2023-07-15', '2023-09-15', 20.0),
    ('Ноутбук Acer Swift 3','2023-07-15', '2023-09-15', 20.0),
    ('Ноутбук HP 250 G6', '2023-07-20', '2023-09-20', 15.0),
    ('Ноутбук Apple MacBook Pro','2023-08-20', '2023-08-30', 5.5);