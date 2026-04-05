# Regional Database, Screening, and Monitoring Analysis

## Background
The increasing availability of structured regional data has created broader opportunities for database-driven analysis across administrative, operational, and monitoring contexts. In many analytical settings, meaningful interpretation does not emerge from isolated tables, but from the integration of multiple entities such as regions, service points, individual records, and transaction-level observations.

This project was developed as a compact database study that examines how relational and spatial data can be organized into a coherent analytical framework. The repository combines district-level context, branch-level location data, applicant records, and loan observations in order to demonstrate a complete workflow of database preparation, rule-based screening, and district-level monitoring.

Rather than approaching the dataset as a product prototype, the project is positioned as an academic-style analytical study with emphasis on schema design, query logic, and interpretability of outputs.

## Project Objectives
The main objectives of this project are:

1. To construct a relational-spatial database that integrates district, branch, applicant, and loan records.
2. To demonstrate how structured SQL logic can be used to classify records based on explicit conditions.
3. To produce district-level summaries that support comparative interpretation and monitoring.
4. To document a compact analytical workflow that moves from data preparation to screening and aggregation.

## Scope of the Project
The scope of this repository is limited to a simplified and synthetic dataset. The project does not attempt to replicate a real operational system in full complexity. Instead, it focuses on the methodological aspects of database analysis, including:
- table design and relational linkage,
- spatial data handling,
- rule-based classification,
- district-level aggregation,
- and monitoring-oriented summarization.

## Data Structure
The database consists of four main tables:

- `districts`  
  Stores district-level contextual attributes and spatial polygons.

- `branches`  
  Stores branch or service-point information with associated point locations.

- `applicants`  
  Stores applicant-level demographic and financial attributes, including home location.

- `loans`  
  Stores simplified loan-level records used for monitoring and summary analysis.

Together, these tables support both entity-level inspection and district-level aggregation.

## Analytical Workflow
The analytical workflow of the project consists of three main stages:

### 1. Database Preparation
The first stage focuses on establishing the database schema, creating relational and spatial columns, and loading the synthetic dataset into PostgreSQL/PostGIS.

### 2. Screening Analysis
The second stage applies explicit SQL-based rules to classify applicant records into analytical categories. The purpose of this stage is to demonstrate transparent categorization logic based on defined conditions.

### 3. Regional Monitoring
The final stage aggregates loan-related records at district level in order to produce simplified monitoring outputs. These summaries enable observation of concentration, delinquency distribution, and basic watchlist conditions.

## Main Analytical Outputs
The repository produces several outputs, including:
- applicant distribution by district,
- nearest-branch analysis,
- rule-based applicant screening,
- screening summary counts,
- outstanding balance by district,
- DPD bucket summaries,
- and district-level watchlist identification.

## Repository Structure
```text
.
├── README.md
├── project_explanation.md
├── insights.md
├── data_dictionary.md
├── sql/
└── screenshots/