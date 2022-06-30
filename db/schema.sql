
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS employee;

---------- Department Table ----------

CREATE TABLE departments (
  id INT NOT NULL PRIMARY KEY,
  department_name VARCHAR(30)
);

---------- Roles Table ----------

CREATE TABLE roles (
  id INT NOT NULL PRIMARY KEY,
  title VARCHAR(40) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL,

  FOREIGN KEY (department_id)
  REFERENCES departments(id)
);

---------- Employee Table ----------
CREATE TABLE employee (
  id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NOT NULL, 

  FOREIGN KEY (role_id) 
  REFERENCES roles(id),

);