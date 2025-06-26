# Insurance-claims-sql-project
SQL project analyzing insurance claims,lapse rates and customer patterns for actuarial use.

# 🧾 Insurance Claims SQL Project

This project simulates an insurance company's internal database using SQL. It is designed to showcase how SQL can be used in an actuarial or insurance analytics context — analyzing claims, customer demographics, and policy behavior.

---

## 🧱 Project Structure

- `schema.sql` — SQL scripts to create tables (`customers`, `policies`, `claims`)
- `insert_sample_data.sql` — Sample data for testing the database
- `queries.sql` — SQL queries for actuarial analysis and business insights
- `insights.md` — Summary of analytical findings
- `visuals/` — (Optional) Charts or dashboard screenshots

---

## 🗂️ Database Tables

### 1. `customers`
| Column       | Type     | Description                |
|--------------|----------|----------------------------|
| customer_id  | INT      | Unique ID for customer     |
| name         | TEXT     | Customer name              |
| age          | INT      | Age                        |
| gender       | TEXT     | Gender                     |
| region       | TEXT     | Geographic region          |

### 2. `policies`
| Column       | Type     | Description                |
|--------------|----------|----------------------------|
| policy_id    | INT      | Unique policy ID           |
| customer_id  | INT      | Linked to `customers`      |
| policy_type  | TEXT     | e.g., Health, Life, Auto   |
| premium      | DECIMAL  | Monthly premium amount     |
| issue_date   | DATE     | Policy issue date          |
| status       | TEXT     | Active, Cancelled, etc.    |

### 3. `claims`
| Column        | Type     | Description                 |
|---------------|----------|-----------------------------|
| claim_id      | INT      | Unique ID per claim         |
| policy_id     | INT      | Linked to `policies`        |
| claim_amount  | DECIMAL  | Claim value submitted       |
| claim_date    | DATE     | When the claim was filed    |
| claim_status  | TEXT     | Approved, Rejected, Pending |

---

## 🔍 Key Analyses (via SQL)

- ✅ Claim frequency by **policy type** and **region**
- ✅ Average **claim amount** by age group
- ✅ **Approval vs. rejection** rate of claims
- ✅ Identification of **high-risk** or **high-claim customers**
- ✅ Summary stats for **premium vs. claims ratio**

---

## 🧰 Tools Used

- SQL (tested in SQLite, DB Fiddle)
- GitHub for version control
- (Optional) Excel or Power BI for visualizations

---

## 📊 Sample Query

```sql
-- Total approved claims by policy type
SELECT p.policy_type, COUNT(*) AS approved_claims
FROM claims c
JOIN policies p ON c.policy_id = p.policy_id
WHERE c.claim_status = 'Approved'
GROUP BY p.policy_type;
