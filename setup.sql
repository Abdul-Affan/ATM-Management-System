CREATE DATABASE IF NOT EXISTS atmdb;
USE atmdb;

CREATE TABLE IF NOT EXISTS users (
    card_number VARCHAR(20) PRIMARY KEY,
    pin VARCHAR(10) NOT NULL,
    balance DECIMAL(15, 2) DEFAULT 0.00
);

CREATE TABLE IF NOT EXISTS transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    card_number VARCHAR(20),
    transaction_type VARCHAR(50),
    amount DECIMAL(15, 2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (card_number) REFERENCES users(card_number)
);

-- Insert a default user for testing
INSERT IGNORE INTO users (card_number, pin, balance) VALUES ('1234567890123456', '2025', 1000.00);
