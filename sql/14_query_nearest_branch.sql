SELECT
    a.applicant_id,
    a.full_name,
    d.district_name,
    nb.branch_name AS nearest_branch,
    ROUND((nb.distance_m / 1000.0)::numeric, 2) AS distance_km
FROM applicants a
JOIN districts d
    ON a.district_id = d.district_id
CROSS JOIN LATERAL (
    SELECT
        b.branch_name,
        ST_Distance(a.home_geom::geography, b.branch_geom::geography) AS distance_m
    FROM branches b
    ORDER BY ST_Distance(a.home_geom::geography, b.branch_geom::geography)
    LIMIT 1
) AS nb
ORDER BY a.applicant_id;