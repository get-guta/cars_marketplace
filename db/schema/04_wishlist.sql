DROP TABLE IF EXISTS wishlist CASCADE;
CREATE TABLE wishlist (
    id SERIAL PRIMARY KEY,
    users_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    cars_id INTEGER REFERENCES cars(id) ON DELETE CASCADE,
    date_created TIMESTAMP NOT NULL DEFAULT NOW()
);