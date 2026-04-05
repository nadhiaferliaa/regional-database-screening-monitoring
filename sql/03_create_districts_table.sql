CREATE TABLE districts (
    district_id INTEGER PRIMARY KEY,
    district_name VARCHAR(50) NOT NULL,
    district_risk VARCHAR(10) NOT NULL,
    economic_score INTEGER,
    branch_density_score INTEGER
);

SELECT AddGeometryColumn('public', 'districts', 'district_geom', 4326, 'POLYGON', 2);