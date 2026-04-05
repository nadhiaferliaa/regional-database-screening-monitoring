WITH screening AS (
    WITH nearest_branch AS (
        SELECT
            a.applicant_id,
            MIN(ST_Distance(a.home_geom::geography, b.branch_geom::geography)) AS distance_m
        FROM applicants a
        CROSS JOIN branches b
        GROUP BY a.applicant_id
    )
    SELECT
        a.applicant_id,
        CASE
            WHEN a.previous_default_flag = true THEN 'REJECT'
            WHEN a.monthly_income < 3500000 THEN 'REJECT'
            WHEN a.active_loan_count > 2 THEN 'REVIEW'
            WHEN a.requested_loan / NULLIF(a.monthly_income, 0) > 4 THEN 'REVIEW'
            WHEN nb.distance_m > 8000 THEN 'REVIEW'
            WHEN d.district_risk = 'high' THEN 'REVIEW'
            ELSE 'APPROVE'
        END AS screening_result
    FROM applicants a
    JOIN districts d
        ON a.district_id = d.district_id
    JOIN nearest_branch nb
        ON a.applicant_id = nb.applicant_id
)
SELECT
    screening_result,
    COUNT(*) AS total_applicants
FROM screening
GROUP BY screening_result
ORDER BY total_applicants DESC;