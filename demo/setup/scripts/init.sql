CREATE TABLE raw_customers (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(3000),
  last_name VARCHAR(3000)
);

CREATE TABLE raw_orders (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  order_date DATE,
  status VARCHAR(300)
);

CREATE TABLE raw_payments (
  id INTEGER PRIMARY KEY,
  order_id INTEGER,
  payment_method VARCHAR(300),
  amount INTEGER
);

COPY raw_customers FROM '/data/raw_customers.csv' DELIMITER ',' CSV HEADER;
COPY raw_orders FROM '/data/raw_orders.csv' DELIMITER ',' CSV HEADER;
COPY raw_payments FROM '/data/raw_payments.csv' DELIMITER ',' CSV HEADER;