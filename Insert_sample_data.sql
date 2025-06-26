-- Sample customers
INSERT INTO customers VALUES
(1, 'Alice', 35, 'F', 'North'),
(2, 'Bob', 42, 'M', 'South'),
(3, 'Charlie', 29, 'M', 'West'),
(4, 'Diana', 50, 'F', 'East');

-- Sample policies
INSERT INTO policies VALUES
(101, 1, 'Health', 250.00, '2022-01-01', 'Active'),
(102, 2, 'Life', 300.00, '2021-06-15', 'Cancelled'),
(103, 3, 'Health', 200.00, '2023-02-10', 'Active'),
(104, 4, 'Auto', 150.00, '2022-12-01', 'Active');

-- Sample claims
INSERT INTO claims VALUES
(201, 101, 1000.00, '2023-01-15', 'Approved'),
(202, 101, 500.00, '2024-03-01', 'Rejected'),
(203, 102, 20000.00, '2022-08-10', 'Approved'),
(204, 104, 700.00, '2024-09-20', 'Pending');
