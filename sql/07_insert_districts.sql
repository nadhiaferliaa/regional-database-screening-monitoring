INSERT INTO districts (
    district_id, district_name, district_risk, economic_score, branch_density_score, district_geom
) VALUES
(
    1, 'Depok', 'low', 85, 80,
    ST_GeomFromText('POLYGON((110.3700 -7.7900, 110.4200 -7.7900, 110.4200 -7.7400, 110.3700 -7.7400, 110.3700 -7.7900))', 4326)
),
(
    2, 'Mlati', 'medium', 70, 60,
    ST_GeomFromText('POLYGON((110.3400 -7.7600, 110.3900 -7.7600, 110.3900 -7.7200, 110.3400 -7.7200, 110.3400 -7.7600))', 4326)
),
(
    3, 'Gondokusuman', 'low', 78, 85,
    ST_GeomFromText('POLYGON((110.3800 -7.7900, 110.4050 -7.7900, 110.4050 -7.7650, 110.3800 -7.7650, 110.3800 -7.7900))', 4326)
),
(
    4, 'Jetis', 'high', 60, 55,
    ST_GeomFromText('POLYGON((110.3600 -7.7800, 110.3900 -7.7800, 110.3900 -7.7500, 110.3600 -7.7500, 110.3600 -7.7800))', 4326)
),
(
    5, 'Umbulharjo', 'medium', 72, 65,
    ST_GeomFromText('POLYGON((110.3900 -7.8200, 110.4300 -7.8200, 110.4300 -7.7800, 110.3900 -7.7800, 110.3900 -7.8200))', 4326)
);