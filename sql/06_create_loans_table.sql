CREATE TABLE loans (
    loan_id INTEGER PRIMARY KEY,
    applicant_id INTEGER REFERENCES applicants(applicant_id),
    district_id INTEGER REFERENCES districts(district_id),
    outstanding_balance NUMERIC(12,2),
    dpd INTEGER,
    loan_status VARCHAR(20),
    disbursement_date DATE
);