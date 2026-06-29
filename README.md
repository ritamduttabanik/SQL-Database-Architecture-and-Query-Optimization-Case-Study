# 🎒 SQL Database Architecture & Query Optimization Case Study

Welcome to my SQL Portfolio project! This repository contains an end-to-end relational database analysis spanning **Academic Student Portals** and **Industrial Factory Data Logistics**.

The goal of this project is to bypass superficial data manipulation and leverage advanced SQL querying to uncover deep structural patterns across overlapping student course rosters, execute temporal string reconstructions, and audit factory asset distributions.

---

## 🛠️ Advanced SQL & Relational Engineering Toolkit Demonstrated

This project explores complex data workflows, data structures, and optimization paradigms across two distinct operational domains:

* **Academic Portal & School Subjects:** Evaluates performance-optimized operations across standard school courses, student demographics, and grade records (`student`, `Chem`, `Bio`, `Phy`).
* **Industrial Factory Logs:** Audits enterprise-level supply chain records, tracking production-line material assembly volumes and tier-1 vendor logistics (`Client`).

---

## 🚀 Key Database Architectures & Problem Solving

### 1. Wildcard Pattern Extraction & Text Cleansing
Leverages pattern validation filters (`LIKE`, `NOT LIKE`) to perform text cleansing and dynamic noise isolation at the raw database boundary.
* **Engineering Impact:** Seamlessly extracts precise target matches (e.g., "Till") while programmatically filtering out spelling data exceptions (e.g., "Tommy").

### 2. ISO-8601 Chronological Date Reconstruction
Overcomes common text-storage limitations by dynamically parsing and reconstructing unstructured `DD-MM-YYYY` string fields into standardized, queryable `YYYY-MM-DD` ISO formats using substring functions (`SUBSTR`).

### 3. Metric Aggregations & Performance Partitioning
Evaluates group performance metrics by isolating conditional passing subsets (`WHERE`) paired with granular grouping partitions (`GROUP BY`) to calculate dynamic class averages.

### 4. Advanced Set Algebra Across Subjects
Utilizes declarative relational set operations (`INTERSECT`, `EXCEPT`) over separate student course rosters rather than running heavy, multi-layered JOIN operations to instantly map complex cross-subject enrollments.

---

## ⚠️ Schema Migration & DDL Integrity Note

When pushing table structural adjustments (such as `ALTER TABLE ADD COLUMN`) directly within live applications, executing raw scripts repeatedly will trigger critical database duplicate-column faults.
* **Best Practice Applied:** Always isolate table structural updates inside dedicated, single-run environment migration scripts or build structural metadata checks before deploying to a production server.

---

## 🤝 Acknowledgement & Mentorship
Special thanks to my instructor, **Prateek Agrawal Sir** at **Ivy Professional School**, for his guidance, and to the open-source data community whose benchmarking frameworks and course documentation helped bring these optimization paradigms to life.

---

## 🔗 Let's Connect!
I build responsive analytics networks, clean databases, and smooth ETL pipelines.

* **LinkedIn Presentation:** [View the full slide analysis and walk-through here!](PASTE_YOUR_LINKEDIN_POST_URL_HERE)
* **LinkedIn Profile:** [Your Name](PASTE_YOUR_LINKEDIN_PROFILE_URL_HERE)
