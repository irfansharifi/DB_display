-- creating the table schema
CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  fname VARCHAR(100) NOT NULL,
  lname VARCHAR(100) NOT NULL,
  bdate DATE,
  salary INT,
  email VARCHAR(100) DEFAULT NULL,
  dept VARCHAR(255) DEFAULT 'IT'
);


-- inserting data into table (Crud)
INSERT INTO employees (fname, lname, bdate, salary, email, dept) VALUES 
  ('Irfan', 'Sharifi', '2002/02/05', 20000, 'irfans@gmail.com', 'Software'),
  ('Zakirullah', 'Ahmadi', '1998/06/11', 26000, 'zahmadi22@gmail.com', 'HR'),
  ('Hosai', 'Akhtar', '2000/08/17', 22500, 'hosai52@gmail.com', 'Business'),
  ('Bashir', 'Farooqi', '1999/12/21', 30000, 'bashir23@gmail.com', 'HR'),
  ('Shabina', 'Bahrami', '2001/10/26', 35000, 'shabb@yahoo.com', 'Software'),
  ('Bahir', 'Quraishi22', '2000/01/01', 24000, 'bahirqr@hotmail.com', 'Software');
  
  
INSERT INTO employees (fname, lname, bdate, salary) VALUES 
  ('Tamim', 'Reshad', '2003/12/11', 15000);

-- updating data (crUd) 
UPDATE employees SET email = 'reshadtamim@yahoo.com' WHERE fname = 'Tamim' AND lname = 'Reshad';

UPDATE employees SET lname = 'Quraishi' WHERE fname = 'Bahir';

-- reading data from db (cRud)
SELECT * FROM employees;
/* output:
|Irfan|Sharifi|05/02/2002|20000|irfans@gmail.com|Software
|Zakirullah|Ahmadi|11/06/1998|26000|zahmadi22@gmail.com|HR
|Hosai|Akhtar|17/08/2000|22500|hosai52@gmail.com|Business
|Bashir|Farooqi|21/12/1999|30000|bashir23@gmail.com|HR
|Shabina|Bahrami|26/10/2001|35000|shabb@yahoo.com|Software
|Bahir|Quraishi|01/01/2000|24000|bahirqr@hotmail.com|Software
|Tamim|Reshad|12/11/2003|15000|reshadtamim@yahoo.com|IT
*/
SELECT fname, lname, salary FROM employees WHERE salary > 25000;
/* output:
Zakirullah|Ahmadi|26000
Bashir|Farooqi|30000
Shabina|Bahrami|35000
*/


-- deleting data (cruD)
DELETE FROM employees WHERE dept = 'HR' AND salary >= 30000;

SELECT * FROM employees;

/* output:
|Irfan|Sharifi|05/02/2002|20000|irfans@gmail.com|Software
|Zakirullah|Ahmadi|11/06/1998|26000|zahmadi22@gmail.com|HR
|Hosai|Akhtar|17/08/2000|22500|hosai52@gmail.com|Business
|Shabina|Bahrami|26/10/2001|35000|shabb@yahoo.com|Software
|Bahir|Quraishi|01/01/2000|24000|bahirqr@hotmail.com|Software
|Tamim|Reshad|12/11/2003|15000|reshadtamim@yahoo.com|IT
*/



