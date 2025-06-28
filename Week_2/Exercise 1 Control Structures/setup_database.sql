-- =========================================
-- Setup Database Tables and Sample Data
-- =========================================

-- Create customers table
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER,
    balance NUMBER(10,2),
    isvip VARCHAR2(5) DEFAULT 'FALSE'
);

-- Create loans table
CREATE TABLE loans (
    loan_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    interest_rate NUMBER(5,2),
    due_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert sample customer data
INSERT INTO customers (customer_id, name, age, balance, isvip) VALUES (1, 'John Smith', 65, 15000.00, 'FALSE');
INSERT INTO customers (customer_id, name, age, balance, isvip) VALUES (2, 'Mary Johnson', 45, 8000.00, 'FALSE');
INSERT INTO customers (customer_id, name, age, balance, isvip) VALUES (3, 'Robert Brown', 70, 25000.00, 'FALSE');
INSERT INTO customers (customer_id, name, age, balance, isvip) VALUES (4, 'Lisa Davis', 35, 12000.00, 'FALSE');
INSERT INTO customers (customer_id, name, age, balance, isvip) VALUES (5, 'Michael Wilson', 55, 5000.00, 'FALSE');

-- Insert sample loan data
INSERT INTO loans (loan_id, customer_id, interest_rate, due_date) VALUES (101, 1, 5.5, SYSDATE + 15);
INSERT INTO loans (loan_id, customer_id, interest_rate, due_date) VALUES (102, 2, 6.0, SYSDATE + 45);
INSERT INTO loans (loan_id, customer_id, interest_rate, due_date) VALUES (103, 3, 4.8, SYSDATE + 10);
INSERT INTO loans (loan_id, customer_id, interest_rate, due_date) VALUES (104, 4, 5.2, SYSDATE + 60);
INSERT INTO loans (loan_id, customer_id, interest_rate, due_date) VALUES (105, 5, 6.5, SYSDATE + 25);

COMMIT;

-- Display initial data
SELECT 'Customers Table:' as info FROM dual;
SELECT * FROM customers;

SELECT 'Loans Table:' as info FROM dual;
SELECT * FROM loans; 