
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS employee;

---------- Department Table ----------

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
);

---------- Roles Table ----------

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL(10,0),
  department_id INT NOT NULL,

  FOREIGN KEY (department_id)
  REFERENCES department(id)
);

---------- Employee Table ----------
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT NOT NULL,
  manager_id INT, 

  FOREIGN KEY (roles_id) 
  REFERENCES roles(id),

  FOREIGN KEY (manager_id)
  REFERENCES employee(id) 
);