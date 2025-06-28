SET SERVEROUTPUT ON;

-- =========================================
-- Scenario 1: Apply 1% discount to loan interest rates for customers above 60
-- =========================================
DECLARE
  CURSOR cur_customers IS
    SELECT customer_id, age FROM customers;
BEGIN
  FOR cust_rec IN cur_customers LOOP
    IF cust_rec.age > 60 THEN
      UPDATE loans
      SET interest_rate = interest_rate - 1
      WHERE customer_id = cust_rec.customer_id;
      DBMS_OUTPUT.PUT_LINE('Applied discount for customer ID: ' || cust_rec.customer_id);
    END IF;
  END LOOP;
  COMMIT;
END;
/

-- =========================================
-- Scenario 2: Promote customers to VIP if balance > $10,000
-- =========================================
DECLARE
  CURSOR cur_customers IS
    SELECT customer_id, balance FROM customers;
BEGIN
  FOR cust_rec IN cur_customers LOOP
    IF cust_rec.balance > 10000 THEN
      UPDATE customers
      SET isvip = 'TRUE'
      WHERE customer_id = cust_rec.customer_id;
      DBMS_OUTPUT.PUT_LINE('Customer ID ' || cust_rec.customer_id || ' promoted to VIP.');
    END IF;
  END LOOP;
  COMMIT;
END;
/

-- =========================================
-- Scenario 3: Reminders for loans due in next 30 days
-- =========================================
DECLARE
  CURSOR cur_loans IS
    SELECT l.loan_id, l.customer_id, l.due_date, c.name
    FROM loans l
    JOIN customers c ON l.customer_id = c.customer_id
    WHERE l.due_date BETWEEN SYSDATE AND SYSDATE + 30;
BEGIN
  FOR loan_rec IN cur_loans LOOP
    DBMS_OUTPUT.PUT_LINE('Reminder: Loan ID ' || loan_rec.loan_id ||
                         ' for customer ' || loan_rec.name ||
                         ' is due on ' || TO_CHAR(loan_rec.due_date, 'DD-MON-YYYY'));
  END LOOP;
END;
/ 