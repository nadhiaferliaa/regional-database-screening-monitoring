CREATE TABLE branches (
    branch_id INTEGER PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    service_type VARCHAR(50)
);

SELECT AddGeometryColumn('public', 'branches', 'branch_geom', 4326, 'POINT', 2);