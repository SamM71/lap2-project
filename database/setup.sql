DROP TABLE IF EXISTS accounts, customers, helpers, items, jobs;

CREATE TABLE accounts (
  account_id INT GENERATED ALWAYS AS IDENTITY,
  email VARCHAR(50) UNIQUE NOT NULL,
  user_name VARCHAR(50) NOT NULL, 
  user_password VARCHAR(50) NOT NULL,
  PRIMARY KEY (account_id)
);

INSERT INTO accounts
  (email, user_name, user_password)
VALUES
  ('sam@example.com', 'Sam Mocock', 'jkljkl'),
  ('ravia@example.com', 'Ravia Saini', 'jkjk'),
  ('nathan@example.com', 'Nathan Smith', 'jkl');