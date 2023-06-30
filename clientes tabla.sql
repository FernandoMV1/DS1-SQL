CREATE TABLE cliente(
	customer_id INT GENERATED ALWAYS AS IDENTITY, 
	customer_address_id INT,
	customer_name VARCHAR(255) NOT NULL,
	net_payment_term INT NOT NULL,
	customer_discount INT,
	dui char(9)
	PRIMARY KEY (customer_id),
	CONSTRAINT fk_adress
		FOREIGN KEY(customer_address_id)
			REFERENCES direccion(address_id))



