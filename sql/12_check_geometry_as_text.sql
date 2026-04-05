SELECT district_id, district_name, ST_AsText(district_geom) FROM districts;
SELECT branch_id, branch_name, ST_AsText(branch_geom) FROM branches;
SELECT applicant_id, full_name, ST_AsText(home_geom) FROM applicants;