INSERT INTO applicants (
    applicant_id, full_name, district_id, age, employment_type,
    monthly_income, requested_loan, previous_default_flag,
    active_loan_count, home_status, home_geom
) VALUES
(101, 'Ayu Pratiwi', 1, 28, 'Salaried', 7000000, 12000000, false, 0, 'Owned',
 ST_GeomFromText('POINT(110.3950 -7.7600)', 4326)),

(102, 'Bagas Saputra', 2, 24, 'Gig Worker', 4000000, 10000000, false, 1, 'Rented',
 ST_GeomFromText('POINT(110.3550 -7.7350)', 4326)),

(103, 'Citra Lestari', 4, 31, 'Entrepreneur', 8500000, 25000000, false, 2, 'Owned',
 ST_GeomFromText('POINT(110.3720 -7.7640)', 4326)),

(104, 'Dimas Ramadhan', 5, 22, 'Salaried', 3200000, 9000000, false, 0, 'Family',
 ST_GeomFromText('POINT(110.4100 -7.7950)', 4326)),

(105, 'Eka Purnama', 3, 45, 'Entrepreneur', 12000000, 35000000, true, 1, 'Owned',
 ST_GeomFromText('POINT(110.3920 -7.7740)', 4326)),

(106, 'Fani Maheswari', 1, 29, 'Salaried', 6000000, 15000000, false, 3, 'Owned',
 ST_GeomFromText('POINT(110.4020 -7.7550)', 4326)),

(107, 'Galih Nugroho', 2, 38, 'Salaried', 9500000, 18000000, false, 0, 'Owned',
 ST_GeomFromText('POINT(110.3600 -7.7420)', 4326)),

(108, 'Hana Putri', 4, 27, 'Gig Worker', 4500000, 20000000, false, 1, 'Rented',
 ST_GeomFromText('POINT(110.3800 -7.7580)', 4326)),

(109, 'Indra Kurniawan', 5, 41, 'Entrepreneur', 15000000, 30000000, false, 2, 'Owned',
 ST_GeomFromText('POINT(110.4180 -7.7980)', 4326)),

(110, 'Jihan Aulia', 3, 26, 'Salaried', 5000000, 8000000, false, 0, 'Family',
 ST_GeomFromText('POINT(110.3990 -7.7700)', 4326));