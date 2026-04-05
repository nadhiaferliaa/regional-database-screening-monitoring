SELECT
    d.district_name,
    d.district_risk,
    SUM(l.outstanding_balance) AS total_outstanding,
    COUNT(*) FILTER (WHERE l.dpd > 30) AS delinquent_accounts,
    CASE
        WHEN d.district_risk = 'high'
             AND COUNT(*) FILTER (WHERE l.dpd > 30) >= 1
        THEN 'WATCHLIST'
        ELSE 'NORMAL'
    END AS monitoring_flag
FROM districts d
LEFT JOIN loans l
    ON d.district_id = l.district_id
GROUP BY d.district_name, d.district_risk
ORDER BY total_outstanding DESC NULLS LAST;