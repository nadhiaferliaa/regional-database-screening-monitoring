CREATE TABLE applicants (
    applicant_id INTEGER PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    district_id INTEGER REFERENCES districts(district_id),
    age INTEGER,
    employment_type VARCHAR(30),
    monthly_income NUMERIC(12,2),
    requested_loan NUMERIC(12,2),
    previous_default_flag BOOLEAN,
    active_loan_count INTEGER,
    home_status VARCHAR(20)
);

SELECT AddGeometryColumn('public', 'applicants', 'home_geom', 4326, 'POINT', 2);