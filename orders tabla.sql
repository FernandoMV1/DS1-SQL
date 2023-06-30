CREATE TABLE orders(
	order_id INT GENERATED ALWAYS AS IDENTITY, 
	customer_id INT,
	order_date DATE NOT NULL,
	order_total INT NOT NULL,
	PRIMARY KEY (order_id),
	CONSTRAINT fk_cliente
		FOREIGN KEY(customer_id)
			REFERENCES cliente(costumer_id));