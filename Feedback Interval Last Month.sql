CREATE TABLE zomato_feedback (
         feedback_id INT, 
         customer_id INT, 
         customer_name VARCHAR(100), 
         feedback_date DATE, 
         rating INT
     );
     CREATE TABLE swiggy_feedback (
         feedback_id INT, 
         customer_id INT, 
         customer_name VARCHAR(100), 
         feedback_date DATE, 
         rating INT
     );
     INSERT INTO zomato_feedback VALUES 
         (1, 201, 'Raj Mehta', '2023-09-20', 5), 
         (2, 202, 'Anita Singh', '2023-10-05', 4), 
         (3, 201, 'Raj Mehta', '2023-10-10', 3);
     INSERT INTO swiggy_feedback VALUES 
         (1, 201, 'Raj Mehta', '2023-09-25', 4), 
         (2, 203, 'Sita Sharma', '2023-10-01', 5), 
         (3, 202, 'Anita Singh', '2023-09-30', 2);

SELECT * FROM ZOMATO_FEEDBACK

SELECT * FROM SWIGGY_FEEDBACK

/*
Find all customers who have given feedback on both Zomato and Swiggy in the past month
*/


SELECT Z.CUSTOMER_NAME
FROM ZOMATO_FEEDBACK Z
JOIN SWIGGY_FEEDBACK S
ON Z.FEEDBACK_ID = S.FEEDBACK_ID
AND Z.CUSTOMER_ID = S.CUSTOMER_ID
AND Z.FEEDBACK_DATE = CURRENT_DATE - INTERVAL '1 Month'
AND S.FEEDBACK_DATE = CURRENT_DATE - INTERVAL '1 Month'
