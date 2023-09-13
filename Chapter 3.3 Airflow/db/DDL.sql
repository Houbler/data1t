CREATE TABLE IF NOT EXISTS public.exchange (
    id SERIAL PRIMARY KEY,
    date TIMESTAMP NOT NULL,
    first_c VARCHAR(5) NOT NULL,
    second_c VARCHAR(5) NOT NULL,
    exchange_rate DECIMAL(15,6) NOT NULL
    );