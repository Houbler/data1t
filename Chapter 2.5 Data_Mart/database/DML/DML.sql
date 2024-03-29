INSERT INTO public.products (product_name, price) VALUES
    ('Испорченный телефон', 7000),
    ('Сарафанное радио', 12000),
    ('Патефон', 18000);

INSERT INTO public.shop_names (shop_name) VALUES
    ('dns'),
    ('mvideo'),
    ('sitilink');

INSERT INTO public.plan (product_id, shop_id, plan_cnt, plan_date) VALUES
    (1, 1, 60, '2023-07-30'),
    (2, 1, 40, '2023-07-30'),
    (3, 1, 35, '2023-07-30'),
    (1, 2, 70, '2023-07-30'),
    (2, 2, 60, '2023-07-30'),
    (3, 2, 20, '2023-07-30'),
    (1, 3, 40, '2023-07-30'),
    (2, 3, 25, '2023-07-30'),
    (3, 3, 20, '2023-07-30'),
    (1, 1, 50, '2023-08-30'),
    (2, 1, 35, '2023-08-30'),
    (3, 1, 20, '2023-08-30'),
    (1, 2, 50, '2023-08-30'),
    (2, 2, 40, '2023-08-30'),
    (3, 2, 15, '2023-08-30'),
    (1, 3, 20, '2023-08-30'),
    (2, 3, 20, '2023-08-30'),
    (3, 3, 10, '2023-08-30');;

INSERT INTO public.shop_dns (shop_id, sales_date, product_id, sales_cnt) VALUES
    (1, '2023-07-01', 1, 5), 
    (1, '2023-07-01', 2, 1), 
    (1, '2023-07-02', 3, 2), 
    (1, '2023-07-03', 1, 5), 
    (1, '2023-07-03', 3, 2), 
    (1, '2023-07-04', 1, 3), 
    (1, '2023-07-05', 2, 5), 
    (1, '2023-07-06', 3, 1), 
    (1, '2023-07-06', 1, 5), 
    (1, '2023-07-07', 1, 3), 
    (1, '2023-07-08', 1, 4), 
    (1, '2023-07-08', 2, 2), 
    (1, '2023-07-09', 3, 5), 
    (1, '2023-07-10', 1, 1), 
    (1, '2023-07-11', 3, 5), 
    (1, '2023-07-12', 1, 2), 
    (1, '2023-07-13', 1, 3), 
    (1, '2023-07-13', 2, 5), 
    (1, '2023-07-13', 3, 4), 
    (1, '2023-07-14', 1, 1), 
    (1, '2023-07-14', 3, 5), 
    (1, '2023-07-15', 2, 5), 
    (1, '2023-07-17', 1, 1), 
    (1, '2023-07-17', 2, 2), 
    (1, '2023-07-18', 1, 3), 
    (1, '2023-07-18', 2, 5), 
    (1, '2023-07-18', 3, 2), 
    (1, '2023-07-19', 1, 4), 
    (1, '2023-07-20', 2, 1), 
    (1, '2023-07-21', 2, 1), 
    (1, '2023-07-22', 1, 1), 
    (1, '2023-07-23', 1, 5), 
    (1, '2023-07-24', 3, 4), 
    (1, '2023-07-25', 2, 1), 
    (1, '2023-07-25', 1, 1), 
    (1, '2023-07-26', 3, 1), 
    (1, '2023-07-26', 1, 4), 
    (1, '2023-07-27', 1, 3), 
    (1, '2023-07-28', 1, 3), 
    (1, '2023-07-29', 3, 4),
    (1, '2023-08-01', 3, 3), 
    (1, '2023-08-01', 1, 2), 
    (1, '2023-08-02', 2, 4), 
    (1, '2023-08-03', 2, 1), 
    (1, '2023-08-03', 1, 1), 
    (1, '2023-08-04', 1, 4), 
    (1, '2023-08-05', 1, 1), 
    (1, '2023-08-06', 2, 1), 
    (1, '2023-08-06', 1, 2), 
    (1, '2023-08-07', 2, 1), 
    (1, '2023-08-08', 2, 4), 
    (1, '2023-08-08', 1, 1), 
    (1, '2023-08-09', 2, 3), 
    (1, '2023-08-10', 1, 2), 
    (1, '2023-08-11', 3, 1), 
    (1, '2023-08-12', 3, 4), 
    (1, '2023-08-13', 1, 1), 
    (1, '2023-08-13', 2, 1), 
    (1, '2023-08-13', 3, 4), 
    (1, '2023-08-14', 2, 2), 
    (1, '2023-08-14', 3, 2), 
    (1, '2023-08-15', 2, 3), 
    (1, '2023-08-17', 1, 2), 
    (1, '2023-08-17', 2, 1), 
    (1, '2023-08-18', 1, 4), 
    (1, '2023-08-18', 2, 3), 
    (1, '2023-08-18', 3, 1), 
    (1, '2023-08-19', 1, 3), 
    (1, '2023-08-20', 3, 3), 
    (1, '2023-08-21', 2, 3), 
    (1, '2023-08-22', 3, 2), 
    (1, '2023-08-23', 3, 1), 
    (1, '2023-08-24', 1, 3), 
    (1, '2023-08-25', 2, 3), 
    (1, '2023-08-25', 3, 1), 
    (1, '2023-08-26', 1, 4), 
    (1, '2023-08-26', 2, 3), 
    (1, '2023-08-27', 1, 4), 
    (1, '2023-08-28', 3, 3), 
    (1, '2023-08-29', 3, 2); 

    INSERT INTO public.shop_mvideo (shop_id, sales_date, product_id, sales_cnt) VALUES
    (2, '2023-07-01', 1, 2),
    (2, '2023-07-01', 2, 4),
    (2, '2023-07-02', 2, 4),
    (2, '2023-07-03', 3, 1),
    (2, '2023-07-03', 2, 1),
    (2, '2023-07-04', 1, 3),
    (2, '2023-07-05', 2, 2),
    (2, '2023-07-06', 1, 1),
    (2, '2023-07-06', 2, 4),
    (2, '2023-07-07', 2, 4),
    (2, '2023-07-08', 2, 4),
    (2, '2023-07-08', 3, 3),
    (2, '2023-07-09', 1, 2),
    (2, '2023-07-10', 3, 3),
    (2, '2023-07-11', 2, 4),
    (2, '2023-07-12', 2, 4),
    (2, '2023-07-13', 1, 3),
    (2, '2023-07-13', 2, 3),
    (2, '2023-07-13', 3, 4),
    (2, '2023-07-14', 2, 1),
    (2, '2023-07-14', 1, 1),
    (2, '2023-07-15', 2, 4),
    (2, '2023-07-17', 2, 1),
    (2, '2023-07-17', 3, 3),
    (2, '2023-07-18', 1, 4),
    (2, '2023-07-18', 2, 3),
    (2, '2023-07-18', 3, 1),
    (2, '2023-07-19', 2, 2),
    (2, '2023-07-20', 1, 4),
    (2, '2023-07-21', 2, 3),
    (2, '2023-07-22', 1, 1),
    (2, '2023-07-23', 1, 4),
    (2, '2023-07-24', 2, 3),
    (2, '2023-07-25', 1, 3),
    (2, '2023-07-25', 3, 4),
    (2, '2023-07-26', 2, 3),
    (2, '2023-07-26', 3, 4),
    (2, '2023-07-27', 3, 3),
    (2, '2023-07-28', 3, 2),
    (2, '2023-07-29', 1, 1),
    (2, '2023-08-01', 3, 1), 
    (2, '2023-08-01', 1, 1), 
    (2, '2023-08-02', 1, 3), 
    (2, '2023-08-03', 1, 1), 
    (2, '2023-08-03', 3, 1), 
    (2, '2023-08-04', 3, 3), 
    (2, '2023-08-05', 1, 1), 
    (2, '2023-08-06', 1, 3), 
    (2, '2023-08-06', 1, 3), 
    (2, '2023-08-07', 3, 2), 
    (2, '2023-08-08', 3, 3), 
    (2, '2023-08-08', 1, 1), 
    (2, '2023-08-09', 2, 3), 
    (2, '2023-08-10', 1, 1), 
    (2, '2023-08-11', 1, 1), 
    (2, '2023-08-12', 1, 2), 
    (2, '2023-08-13', 2, 2), 
    (2, '2023-08-13', 1, 1), 
    (2, '2023-08-13', 2, 2), 
    (2, '2023-08-14', 1, 3), 
    (2, '2023-08-14', 3, 1), 
    (2, '2023-08-15', 3, 1), 
    (2, '2023-08-17', 1, 2), 
    (2, '2023-08-17', 2, 3), 
    (2, '2023-08-18', 3, 3), 
    (2, '2023-08-18', 2, 1), 
    (2, '2023-08-18', 1, 2), 
    (2, '2023-08-19', 1, 3), 
    (2, '2023-08-20', 2, 2), 
    (2, '2023-08-21', 1, 1), 
    (2, '2023-08-22', 2, 1), 
    (2, '2023-08-23', 2, 2), 
    (2, '2023-08-24', 1, 3), 
    (2, '2023-08-25', 1, 2), 
    (2, '2023-08-25', 1, 2), 
    (2, '2023-08-26', 3, 2), 
    (2, '2023-08-26', 2, 2), 
    (2, '2023-08-27', 2, 1), 
    (2, '2023-08-28', 1, 2), 
    (2, '2023-08-29', 1, 3); 

    INSERT INTO public.shop_sitilink (shop_id, sales_date, product_id, sales_cnt) VALUES
    (3, '2023-07-01', 1, 1), 
    (3, '2023-07-01', 3, 1), 
    (3, '2023-07-02', 2, 2), 
    (3, '2023-07-03', 2, 1), 
    (3, '2023-07-03', 1, 3), 
    (3, '2023-07-04', 3, 2), 
    (3, '2023-07-05', 1, 3), 
    (3, '2023-07-06', 2, 3), 
    (3, '2023-07-06', 1, 1), 
    (3, '2023-07-07', 3, 1), 
    (3, '2023-07-08', 2, 3), 
    (3, '2023-07-08', 1, 1), 
    (3, '2023-07-09', 1, 1), 
    (3, '2023-07-10', 2, 1), 
    (3, '2023-07-11', 3, 2), 
    (3, '2023-07-12', 3, 3), 
    (3, '2023-07-13', 1, 1), 
    (3, '2023-07-13', 2, 3), 
    (3, '2023-07-13', 3, 2), 
    (3, '2023-07-14', 2, 3), 
    (3, '2023-07-14', 1, 2), 
    (3, '2023-07-15', 2, 1), 
    (3, '2023-07-17', 3, 1), 
    (3, '2023-07-17', 1, 1), 
    (3, '2023-07-18', 1, 1), 
    (3, '2023-07-18', 3, 1), 
    (3, '2023-07-18', 2, 1), 
    (3, '2023-07-19', 3, 3), 
    (3, '2023-07-20', 2, 2), 
    (3, '2023-07-21', 2, 1), 
    (3, '2023-07-22', 2, 3), 
    (3, '2023-07-23', 2, 1), 
    (3, '2023-07-24', 3, 3), 
    (3, '2023-07-25', 2, 1), 
    (3, '2023-07-25', 3, 2), 
    (3, '2023-07-26', 1, 1), 
    (3, '2023-07-26', 3, 1), 
    (3, '2023-07-27', 3, 1), 
    (3, '2023-07-28', 1, 1), 
    (3, '2023-07-29', 1, 1),
    (3, '2023-08-01', 2, 1), 
    (3, '2023-08-01', 1, 1), 
    (3, '2023-08-02', 2, 2), 
    (3, '2023-08-03', 3, 2), 
    (3, '2023-08-03', 3, 1), 
    (3, '2023-08-04', 2, 1), 
    (3, '2023-08-05', 2, 2), 
    (3, '2023-08-06', 3, 1), 
    (3, '2023-08-06', 1, 1), 
    (3, '2023-08-07', 3, 1), 
    (3, '2023-08-08', 3, 2), 
    (3, '2023-08-08', 1, 1), 
    (3, '2023-08-09', 1, 2), 
    (3, '2023-08-10', 1, 2), 
    (3, '2023-08-11', 3, 1), 
    (3, '2023-08-12', 3, 2), 
    (3, '2023-08-13', 3, 1), 
    (3, '2023-08-13', 2, 2), 
    (3, '2023-08-13', 1, 1), 
    (3, '2023-08-14', 1, 2), 
    (3, '2023-08-14', 2, 1), 
    (3, '2023-08-15', 2, 2), 
    (3, '2023-08-17', 2, 2), 
    (3, '2023-08-17', 1, 1), 
    (3, '2023-08-18', 2, 1), 
    (3, '2023-08-18', 1, 2), 
    (3, '2023-08-18', 1, 1), 
    (3, '2023-08-19', 1, 1), 
    (3, '2023-08-20', 1, 2), 
    (3, '2023-08-21', 2, 1), 
    (3, '2023-08-22', 3, 1), 
    (3, '2023-08-23', 1, 1), 
    (3, '2023-08-24', 1, 2), 
    (3, '2023-08-25', 3, 1), 
    (3, '2023-08-25', 2, 2), 
    (3, '2023-08-26', 1, 1), 
    (3, '2023-08-26', 3, 1), 
    (3, '2023-08-27', 3, 1), 
    (3, '2023-08-28', 2, 2), 
    (3, '2023-08-29', 3, 2); 