CREATE TABLE products (
	product_id INT IDENTITY (1, 1) PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
);
INSERT INTO products (product_name, brand_id, category_id, model_year, list_price) VALUES
('iPhone 12', 1, 1, 2020, 799.99),
('Galaxy S21', 2, 1, 2021, 999.99),
('MacBook Pro', 1, 2, 2021, 1299.99),
('Dell XPS 13', 3, 2, 2020, 999.99),
('Sony WH-1000XM4', 4, 3, 2021, 349.99),
('Bose QuietComfort 35', 5, 3, 2019, 299.99),
('Kindle Paperwhite', 6, 4, 2021, 129.99),
('iPad Pro', 1, 4, 2021, 999.99),
('PlayStation 5', 4, 5, 2020, 499.99),
('Xbox Series X', 7, 5, 2020, 499.99);

DECLARE 
    @product_name VARCHAR(MAX), 
    @list_price   DECIMAL;

DECLARE cursor_product CURSOR
FOR SELECT 
        product_name, 
        list_price
    FROM 
        products;

OPEN cursor_product;

FETCH NEXT FROM cursor_product INTO 
    @product_name, 
    @list_price;

WHILE @@FETCH_STATUS = 0
    BEGIN
        Update dbo.products
		set list_price = @list_price* 1/100
		where product_name=@product_name
		PRINT @product_name +' ' +CAST(@list_price AS varchar);
        FETCH NEXT FROM cursor_product INTO 
            @product_name, 
            @list_price;
    END;

CLOSE cursor_product;

DEALLOCATE cursor_product;
