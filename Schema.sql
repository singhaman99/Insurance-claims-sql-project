-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name TEXT,
    age INT,
    gender TEXT,
    region TEXT
);

-- Create policies table
CREATE TABLE policies (
    policy_id INT PRIMARY KEY,
    customer_id INT,
    policy_type TEXT,
    premium DECIMAL(10,2),
    issue_date DATE,
    status TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create claims table
CREATE TABLE claims (
    claim_id INT PRIMARY KEY,
    policy_id INT,
    claim_amount DECIMAL(10,2),
    claim_date DATE,
    claim_status TEXT,
    FOREIGN KEY (policy_id) REFERENCES policies(policy_id)
);
