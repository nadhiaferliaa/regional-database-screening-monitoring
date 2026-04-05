SELECT
    d.district_name,
    d.district_risk,
    COUNT(l.loan_id) AS total_loans,
    SUM(l.outstanding_balance) AS total_outstanding,
    AVG(l.dpd) AS avg_dpd
FROM districts d
LEFT JOIN loans l
    ON d.district_id = l.district_id
GROUP BY d.district_name, d.district_risk
ORDER BY total_outstanding DESC;