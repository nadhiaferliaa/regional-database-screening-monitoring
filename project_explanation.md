# Project Explanation

## 1. Project Context
This repository presents a compact database study that integrates regional context, service-point records, applicant information, and loan observations into a single analytical framework. The project was developed to examine how structured relational and spatial data can be organized and queried in order to produce interpretable screening and monitoring outputs.

The study is not intended to reproduce the complexity of a full operational system. Instead, it focuses on a smaller analytical setting in which database structure, SQL logic, and aggregation procedures can be documented with clarity. In this sense, the repository should be read as an academic-style applied database project centered on methodological coherence rather than system scale.

## 2. Database Design
The analytical database consists of four main tables:

- `districts`
- `branches`
- `applicants`
- `loans`

These tables were designed to represent different but related analytical layers. The `districts` table provides regional context, while the `branches` table introduces service-point locations. The `applicants` table stores individual-level records, and the `loans` table provides simplified transaction-level observations for monitoring purposes.

The resulting structure allows the project to move across multiple levels of analysis, from individual records to district-level summaries.

## 3. Role of Spatial Data
A distinguishing feature of the repository is the inclusion of spatial attributes through PostGIS. Spatial columns are not used here for complex geospatial modeling, but rather for basic regional and proximity-based analysis. Their inclusion serves two methodological purposes.

First, spatial data enrich the relational structure by introducing locational context into the database. Second, they make it possible to perform simple distance-based interpretation, such as identifying the nearest branch to an applicant. This expands the analytical scope of the database beyond purely tabular summarization.

## 4. Analytical Stages

### 4.1 Database Preparation
The first stage of the project establishes the database environment, enables spatial functionality, defines the schema, and loads the synthetic dataset. This stage is important because analytical outputs depend fundamentally on clear table relationships and consistent data structure.

### 4.2 Screening Analysis
The second stage applies explicit SQL-based conditions to applicant records. The purpose of this step is not predictive modeling, but transparent classification. By relying on documented rules, the project demonstrates how analytical categories can be produced in a way that remains traceable and interpretable.

### 4.3 Regional Monitoring
The third stage aggregates loan observations at district level. This transforms record-level data into a monitoring-oriented view, making it possible to compare districts in terms of balance concentration, delinquency distribution, and simplified watchlist conditions.

## 5. Methodological Approach
The project follows a sequential analytical logic:

1. establish the schema,
2. load and validate the records,
3. apply classification logic,
4. aggregate records into summaries,
5. interpret the outputs in a regional context.

This sequence is intentionally simple, but it reflects an important principle in applied data work: meaningful interpretation depends on careful progression from structure to logic, and from logic to summarized outputs.

## 6. Analytical Contribution
The principal contribution of the repository lies in the integration of three elements within one coherent workflow:
- database construction,
- rule-based screening,
- and district-level monitoring.

Together, these elements show that even a compact and synthetic dataset can support a complete analytical process when the schema, SQL rules, and summaries are aligned.

## 7. Limitations
The project uses synthetic data and simplified assumptions. The screening logic is intentionally explicit and reduced in scope, while the monitoring outputs are limited to a small set of illustrative indicators. These limitations are acknowledged by design, since the project aims to emphasize methodological clarity rather than empirical completeness.

## 8. Concluding Remark
This repository demonstrates how a structured database can serve as the basis for a compact but interpretable analytical study. Its value lies in the coherence between schema design, SQL logic, and output interpretation, making it suitable as a documented example of applied database analysis.