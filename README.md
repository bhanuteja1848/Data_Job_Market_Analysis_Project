# 📌 Introduction

The data job market is evolving rapidly — but what roles are truly **in demand**? What **skills** are employers prioritizing? And is a degree still necessary to enter the industry?

This project analyzes real-world job postings from 2023–2025 to uncover the answers.


# 📊 Project Overview

This project presents a structured analysis of data-related job postings, focusing on key roles such as **Data Analyst, Data Engineer, Data Scientist**, and senior-level positions within these domains.

Using real-world job posting data collected between 2023 and 2025, the project explores how the data job market is evolving and identifies the factors shaping hiring decisions across the industry.

The primary objective of this analysis is to uncover:
- Which data roles are experiencing increasing demand
- Salary expectations across different data positions
- The most in-demand technical and professional skills
- The distribution of remote vs on-site roles
- Whether a formal degree is still required to enter data careers

By analyzing these dimensions, this project aims to provide clear, data-driven insights into hiring trends, compensation benchmarks, and the evolving skill requirements of the modern data workforce.

The SQL queries used in this analysis can be found here [SQL Queries](/SQL%20Queries/).

# Dataset Overview
The dataset contains job postings for data-related roles, including Data Analyst, Data Engineer, Data Scientist, and senior-level positions.

It covers postings from 2023 to 2025 and includes details such as:

- Job title
- Salary information
- Posting date
- Work type (Remote / On-site)
- Degree requirement indicator
- Company information
- Required skills

# ER Diagram

![ER Diagram](/assets/ERD.png)

# Summary of Key Findings : The Data Job Market

The data job market is currently in a "Recovery & Stabilization" phase. After a volatile 2024, the market has leveled out in 2025, making this a strategic time to enter the field.

### 1. The Market Story: Recovery is Here

After a 38% dip in 2024, the job market has officially stabilized. Most notably, Data Analyst roles have begun a strong recovery, growing from 115k to over 135k postings in the last year alone. While Scientist and Engineer roles are still recalibrating, the "Analyst" is leading the charge back to growth.

### 2. The Demand vs. Pay Gap

- **Most In-Demand:** The Data Analyst is the king of the market with over **447,000** total postings.

- **Highest Paid:** Engineering roles command the highest salaries. A Senior Data Engineer earns a median of **$147,500**, nearly **$62,000** more than a standard Data Analyst.

### 3. The Winning Skillset

To stay competitive, the data points to three clear priorities:

- The Gold Standard: **SQL** and **Python** are mandatory, with over 1.4 million combined mentions.
- The Analyst Toolkit: Success in analyst roles is driven by a mastery of **Excel**, **Tableau**, and **Power BI**.
- The Future-Proof Skill: **Cloud Platforms (AWS/Azure)** are no longer optional for high-paying Engineering and Science roles.

# Tools Used

For my deep dive into the data analyst job market, I used several key tools:

- **SQL**: The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL**: The chosen database management system, ideal for handling the job posting data.
- **Visual Studio** Code: My go-to for database management and executing SQL queries.
- **Git & GitHub**: Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.


# 🔍 Deep Dive

Now, let's break down the data to understand the "what," "how," and "how much" of the current data job market.

**1. High Demand Roles**

The market is currently dominated by three core roles. If you are looking for the highest volume of opportunities, the Data Analyst position is the clear winner.

- **The Big Three:** Data Analyst, Data Engineer, and Data Scientist make up the vast majority of the market.

- **The Volume Leader:** With over 447,000 postings, Data Analyst is the most accessible and high-volume entry point into the industry.

- **Engineering vs. Science:** Data Engineering slightly edges out Data Science in total volume, reflecting a strong corporate need for building data infrastructure.


<img src="assets/01_Most_Demanded_Jobs.png" width="100%" alt="In demand roles">

**2. Skills By Role**

The technical requirements vary significantly depending on which path you choose. While some skills are universal, others define your specialization.

The Universal Language: SQL is a top-two requirement for every single role, followed closely by Python.


<img src="assets/02_Top_Skills_By_Role.png" width="50%" alt="In demand roles">

**3. Salary Range**

Salary is often tied to the technical complexity of the role. Engineering roles currently command the highest premium in the market.

- **The Top Tier**: Senior Data Engineers earn the highest median salary at approximately $147,500.
- **The Mid-Market:** Data Scientists and Data Engineers earn healthy medians between $95k and $126k.
- **The Entry Level:** Business Analysts and Data Analysts typically start in the $70k - $85k range, providing a strong baseline for career growth.

![Salaries](/assets/03_Median_Salaries_for_data_roles.png)


# 4. Remote Work vs. Onsite Reality

While remote work is popular, the data shows that the majority of job postings still lean toward onsite or hybrid models, though pay remains competitive for both.

- Onsite postings significantly outnumber remote postings across all job titles.

- **The Salary Gap:** Interestingly, Remote roles often pay slightly more than onsite roles for positions like Data Scientist and Senior Data Scientist, likely due to companies competing for global talent.

![Remote Vs Onsite](/assets/04_Remote_vs_onsite_pay.png)

# 5. Degree Required?

Despite the rise of bootcamps and self-learning, the "Degree Required" checkbox is still very much alive in the data world.

**The Standard:** For roles like Data Scientist and Data Analyst, the vast majority of job postings explicitly list a degree as a requirement.
**The Exception:** Data Engineering shows a slightly higher tolerance for non-degree applicants compared to Data Science, though "Degree Required" is still the dominant preference

![Degree](/assets/05_degree_requirement.png)

# 🧠 Lessons Learned

This project was more than just an analysis; it was a deep dive into advanced technical workflows. Here is how I leveled up:

**Advanced SQL Architecture:** I moved beyond basics to master complex joins and Common Table Expressions (CTEs), allowing me to structure messy data into clean, readable temporary result sets.

**Precision Data Aggregation:** I refined my use of GROUP BY and aggregate functions like COUNT() and AVG(), transforming thousands of rows into high-level executive summaries.

**Strategic Problem Solving:** I learned to translate "vague" business questions into precise technical queries, ensuring the data I pulled actually answered the "Why?" behind the trends.

# 💡 Final Insights

The data reveals a clear roadmap for anyone looking to dominate the data market:

**The Remote Goldmine:** Remote opportunities for Data Analysts are not just convenient—they are lucrative, with top-tier roles reaching salaries as high as $650,000.

**The SQL Mandate:** SQL isn't just a "good-to-have." It is the highest-demanded skill and a primary driver for high-salary roles. If you want to maximize your value, start here.

**The Power of Niche Expertise:** While SQL is the foundation, specialized skills like Solidity and SVN command massive salary premiums, showing that "niche" often equals "highly paid."

**Market Optimization:** For the best return on investment (ROI) in your learning journey, the combination of SQL + Python remains the most efficient path to both job security and high pay.

# 🚀 Closing Thoughts

This project served as a bridge between technical execution and market strategy. By analyzing the data, I’ve gained a clearer picture of how to prioritize skill development in a competitive landscape. For any aspiring data professional, the message is clear: focus on the high-demand foundations, but keep an eye on emerging niche technologies to truly stand out.

