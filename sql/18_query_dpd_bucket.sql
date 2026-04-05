SELECT
    d.district_name,
    COUNT(*) FILTER (WHERE l.dpd = 0) AS current_count,
    COUNT(*) FILTER (WHERE l.dpd BETWEEN 1 AND 30) AS dpd_1_30,
    COUNT(*) FILTER (WHERE l.dpd BETWEEN 31 AND 60) AS dpd_31_60,
    COUNT(*) FILTER (WHERE l.dpd > 60) AS dpd_61_plus
FROM districts d
LEFT JOIN loans l
    ON d.district_id = l.district_id
GROUP BY d.district_name
ORDER BY d.district_name;