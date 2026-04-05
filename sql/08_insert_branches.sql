INSERT INTO branches (
    branch_id, branch_name, service_type, branch_geom
) VALUES
(
    1, 'Sleman Branch', 'Full Service',
    ST_GeomFromText('POINT(110.3650 -7.7350)', 4326)
),
(
    2, 'City Center Branch', 'Full Service',
    ST_GeomFromText('POINT(110.3900 -7.7750)', 4326)
),
(
    3, 'South Branch', 'Lite Service',
    ST_GeomFromText('POINT(110.4100 -7.8000)', 4326)
);