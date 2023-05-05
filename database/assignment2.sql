
-- This is where I insert tony stark into the account table
INSERT INTO account
	(account_firstname, account_lastname, account_email, account_password)
VALUES
	('Tony','Stark','tony@starkent.com','Iam1ronM@n');

--Here is where I update his account and make it an admin account	
UPDATE 
	account
SET
	account_type = 'Admin'
WHERE 
	account_id = 1;
	
-- This will delete Tony Starks info 
DELETE
FROM 
	account
WHERE
	account_id = 1;
		
		
-- Changing the hummer description section
UPDATE 
	inventory
SET	
	inv_description = REPLACE(inv_description, 'small interiors', 'huge interiors')
WHERE
	inv_id = 10;


-- Selecting the sports cars and showing their make and model and classification 
SELECT inv_make, inv_model, classification_name
FROM inventory i
	JOIN classification cl
	ON i.classification_id = cl.classification_id
WHERE 
	classification_name = 'Sport';


-- Updated the inventory files so that the have /vehicles in them 
UPDATE 
	inventory 
SET 
	inv_image = REPLACE(inv_image, 'ges/', 'ges/vehicles/'),
	inv_thumbnail = REPLACE(inv_thumbnail,'ges/', 'ges/vehicles/');


    