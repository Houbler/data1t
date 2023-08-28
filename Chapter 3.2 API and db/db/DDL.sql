CREATE TABLE IF NOT EXISTS public.exchange (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    first_c VARCHAR(5) NOT NULL,
    second_c VARCHAR(5) NOT NULL,
    exchange_rate DECIMAL(15,2) NOT NULL
    );