CREATE TABLE food_brands (
         brand_id INT PRIMARY KEY, 
         brand_name VARCHAR(100), 
         average_rating DECIMAL(2, 1), 
         years_in_business INT
     );
     INSERT INTO food_brands VALUES 
         (1, 'Organic India', 4, 6), 
         (2, 'Dabur', 3.5, 10), 
         (3, 'Patanjali', 4, 3);

/*
Get all organic food brands that have an average rating of 4 stars and have been in business for over 5 years
*/

SELECT * FROM FOOD_BRANDS

SELECT BRAND_NAME
FROM FOOD_BRANDS
WHERE AVERAGE_RATING > 4 AND YEARS_IN_BUSINESS > 5