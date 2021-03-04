INSERT INTO customers (idcustomers, `name`, phone_number, email, address, city, `state/province`, country, `zip/postal_code`) VALUES
(0, 'Pablo Picasso' , '+34 636 17 63 82', '-','Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(0, 'Abraham Lincoln' , '+1 305 907 7086', '-','120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(0, 'Napoléon Bonaparte' , '+33 1 79 75 40 00', '-','40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO salespersons (idsalespersons, `name`, store_name) VALUES
(DEFAULT, 'Petey Cruiser' , 'Madrid'),
(DEFAULT, 'Anna Sthesia' , 'Barcelona'),
(DEFAULT, 'Paul Molive' , 'Berlin'),
(DEFAULT, 'Gail Forcewind' , 'Paris'),
(DEFAULT, 'Paige Turner' , 'Mimia'),
(DEFAULT, 'Bob Frapples' , 'Mexico City'),
(DEFAULT, 'Walter Melon' , 'Amsterdam'),
(DEFAULT, 'Shonda Leer' , 'São Paulo');

INSERT INTO invoices (idinvoices, invoice_number, `date`, salespersons_idsalespersons, customers_idcustomers) VALUES
(DEFAULT, 852399038 , 22-08-2018, 3, 1),
(DEFAULT, 731166526 , 31-12-2018, 5, 0),
(DEFAULT, 271135104 , 22-01-2019, 7, 2);
