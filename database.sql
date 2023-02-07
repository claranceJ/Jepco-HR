-- Create the employees table
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  position VARCHAR(50),
  department VARCHAR(50)
);

-- Create the attendance table
CREATE TABLE attendance (
  id INT,
  name VARCHAR(50),
  date DATE,
  status VARCHAR(50),
  FOREIGN KEY (id) REFERENCES employees(id)
);

-- Create the payroll table
CREATE TABLE payroll (
  id INT,
  name VARCHAR(50),
  position VARCHAR(50),
  salary INT,
  FOREIGN KEY (id) REFERENCES employees(id)
);

-- Insert employee data
INSERT INTO employees (id, name, position, department)
VALUES
  (1, 'John Doe', 'Manager', 'Cleaning'),
  (2, 'Jane Doe', 'Supervisor', 'Cleaning'),
  ...;

-- Insert attendance data
INSERT INTO attendance (id, name, date, status)
VALUES
  (1, 'John Doe', '2023-01-01', 'Present'),
  (2, 'Jane Doe', '2023-01-01', 'Absent'),
  ...;

-- Insert payroll data
INSERT INTO payroll (id, name, position, salary)
VALUES
  (1, 'John Doe', 'Manager', 9000),
  (2, 'Jane Doe', 'Supervisor', 6000),
  ...;
