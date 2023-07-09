CREATE TABLE IF NOT EXISTS public.publisher (
    publisher_id SERIAL PRIMARY KEY,
    publisher_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.authors (
    authors_id SERIAL PRIMARY KEY,
    main_author VARCHAR(255) NOT NULL,
    coauthor1 VARCHAR(255),
    coauthor2 VARCHAR(255),
    coauthor3 VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS public.books (
    book_code SERIAL PRIMARY KEY,
    publisher INT NOT NULL,
  	author INT NOT NULL,
    FOREIGN KEY (publisher) REFERENCES publisher (publisher_id) ON DELETE SET NULL,
    FOREIGN KEY (author) REFERENCES authors (authors_id) ON DELETE SET NULL,
    title VARCHAR(255) NOT NULL,
    publication_date DATE,
    pages INTEGER,
    cost DECIMAL,
    amount INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS public.reader (
    library_card SERIAL PRIMARY KEY,
    reader_name VARCHAR(255) NOT NULL,
    reader_address VARCHAR(255) NOT NULL,
    reader_phone VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.transfer (
    transfer_id SERIAL PRIMARY KEY,
  	reader INT NOT NULL,
  	book INT NOT NULL,
    FOREIGN KEY (reader) REFERENCES reader (library_card) ON DELETE SET NULL,
    FOREIGN KEY (book) REFERENCES books (book_code) ON DELETE SET NULL,
    transfer_date DATE NOT NULL,
    return_date DATE NOT NULL
);
