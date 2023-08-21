DROP TABLE IF EXISTS accounts, customers, helpers, items, jobs;

CREATE TABLE accounts (
  account_id INT GENERATED ALWAYS AS IDENTITY,
  email VARCHAR(50) UNIQUE NOT NULL,
  user_name VARCHAR(50) NOT NULL, 
  user_password VARCHAR(50) NOT NULL,
  PRIMARY KEY (account_id)
);

CREATE TABLE customers (
  customer_id INT GENERATED ALWAYS AS IDENTITY,
  account_id INT,
  active_requests INT DEFAULT 0,
  item_sale INT DEFAULT 0,
  PRIMARY KEY (customer_id),
  CONSTRAINT fk_account
    FOREIGN KEY (account_id)
    REFERENCES accounts(account_id)
);

CREATE TABLE fixers (
  fixer_id INT GENERATED ALWAYS AS IDENTITY,
  account_id INT,
  bio VARCHAR(200),
  experience VARCHAR(200),
  jobs_done INT DEFAULT 0,
  rating INT DEFAULT 0,
  CONSTRAINT fk_account
    FOREIGN KEY (account_id)
    REFERENCES accounts(account_id)
);

-- CREATE TABLE items (
--   item_id INT GENERATED ALWAYS AS IDENTITY,
--   customer_id 
-- )

INSERT INTO accounts
  (email, user_name, user_password)
VALUES
  ('sam@example.com', 'Sam Mocock', 'jkljkl'),
  ('ravia@example.com', 'Ravia Saini', 'jkjk'),
  ('nathan@example.com', 'Nathan Smith', 'jkl');

INSERT INTO customers
  (account_id, active_requests)
VALUES
  (1, 2),
  (2, 1);

INSERT INTO fixers
  (account_id, bio, experience)
VALUES
  (3, 'Hello this is an example bio. My name is Nathan.', 'Hobbyist');