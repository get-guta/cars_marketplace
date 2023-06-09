DROP TABLE IF EXISTS cars CASCADE;

CREATE TABLE cars (
    id SERIAL PRIMARY KEY,
    model VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    description TEXT NOT NULL,
    image VARCHAR(255),
    date_created TIMESTAMP NOT NULL DEFAULT NOW(),
    is_sold BOOLEAN NOT NULL DEFAULT false,
    users_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);
