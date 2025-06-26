# Insurance-claims-sql-project
SQL project analyzing insurance claims,lapse rates and customer patterns for actuarial use.

# Insurance Claims SQL Project

This project simulates an insurance company's database using SQL. It includes customer, policy, and claim data, and analyzes key metrics relevant to actuarial decision-making.

## 📂 Tables:
- `customers`: Age, region, gender
- `policies`: Policy type, premium, status
- `claims`: Amounts, dates, and statuses

## 🔍 Key Analyses:
- Average claim by region
- Claim frequency by policy type
- Approval/rejection rates
- High-claim customers

## 🧰 Tools:
- SQLite / DB Fiddle
- GitHub for version control
- (Optional) Power BI or Excel for visuals

## 🧪 Sample Queries:
```sql
SELECT policy_type, COUNT(*) AS total_claims
FROM policies p
JOIN claims c ON c.policy_id = p.policy_id
GROUP BY policy_type;
