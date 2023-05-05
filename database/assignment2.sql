
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
		
		

