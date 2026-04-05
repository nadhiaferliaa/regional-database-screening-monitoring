SELECT
    d.district_name,
    COUNT(a.applicant_id) AS total_applicants,
    AVG(a.monthly_income) AS avg_income,
    AVG(a.requested_loan) AS avg_requested_loan
FROM districts d
LEFT JOIN applicants a
    ON d.district_id = a.district_id
GROUP BY d.district_name
ORDER BY total_applicants DESC;