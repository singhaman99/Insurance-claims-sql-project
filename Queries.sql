-- Total claims by policy type
SELECT p.policy_type, COUNT(c.claim_id) AS total_claims
FROM claims c
JOIN policies p ON c.policy_id = p.policy_id
GROUP BY p.policy_type;
