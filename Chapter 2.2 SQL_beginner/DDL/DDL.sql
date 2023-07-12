CREATE TABLE IF NOT EXISTS public.publisher (
    publisher_id SERIAL PRIMARY KEY,
    publisher_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.author (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.books (
    book_code SERIAL PRIMARY KEY,
    publisher INT NOT NULL,
    FOREIGN KEY (publisher) REFERENCES publisher (publisher_id) ON DELETE SET NULL,
    title VARCHAR(255) NOT NULL,
    publication_date DATE,
    pages INTEGER,
    cost DECIMAL,
    amount INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS public.authors_books (
    author_book_id SERIAL PRIMARY KEY,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES author (author_id) ON DELETE SET NULL,
    book_id INT NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books (book_code) ON DELETE SET NULL
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
