# Databricks ETL Pipeline (Bronze → Silver → Gold)

## Project Overview

This project demonstrates an **ETL pipeline implemented in Databricks using Apache Spark and Delta Lake**.  
The pipeline processes university admission data stored in CSV files and transforms it through the **Medallion Architecture**:

- **Bronze Layer** – raw ingested data
- **Silver Layer** – cleaned and transformed data
- **Gold Layer** – analytical and aggregated results

The goal of the project is to analyze admission results such as grant distribution, university competitiveness, and language influence on results.

---

# Project Structure

---

# Files Description

## 1. `etl_pipeline.ipynb`

This Jupyter notebook contains the **complete ETL pipeline implemented with PySpark in Databricks**.

The notebook includes the following stages:

### Bronze Layer
- Reads raw CSV files
- Stores them in Delta format
- Table created:

### Silver Layer
Data cleaning and transformation:

- Convert `TR class` values to **admission status**
  - `table-success` → **Grant**
  - `table-warning` → **Kontrakt**
  - others → **Yiqilgan**
- Convert `Ball` values from comma format to **float**

Result table:

### Gold Layer
Aggregation and analytical tables:

Examples:

- Status distribution (Grant / Kontrakt / Failed)
- University ranking based on average grant score
- Language comparison of grant results

Gold tables are created under:

---

## 2. `analysis_queries.sql`

This file contains **Spark SQL queries used for analytical tasks**, including:

- Status distribution percentages
- University competitiveness ranking
- Highest score student who failed in a specific major
- Grant distribution by education language

These queries operate on the **Silver layer tables**.

---

## 3. `data_sample/` (Reduced Dataset)

The original dataset used in this project is approximately **150MB**, which exceeds recommended GitHub repository size for example datasets.

Therefore this repository contains a **reduced sample version of the CSV files**.

Purpose of the sample dataset:

- Demonstrate the ETL pipeline
- Allow reproduction of the transformations
- Keep repository lightweight

The full dataset structure is preserved, but the number of rows/files is reduced.

---

# Technologies Used

- Apache Spark (PySpark)
- Databricks
- Delta Lake
- Spark SQL
- Python

---

# Important Note

The catalog structure (`etl_catalog`) exists inside the **Databricks workspace** and cannot be exported directly to GitHub.  

However, the notebook contains all the code required to recreate the full pipeline.

---

# Author

GitHub: Kamronbek-J
