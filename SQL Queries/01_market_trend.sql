/* Job Market Demand Trends Over Time

Are data jobs increasing or decreasing month by month?
Which roles are growing fastest?
How has job posting volume changed over time?
Which job titles are trending upward in 2024–2025?
*/

SELECT 
    job_title_short,
    COUNT(*) AS job_count,
    EXTRACT(YEAR FROM job_posted_date) AS posted_year
FROM
    job_postings_fact
WHERE 
    ( job_title_short LIKE '%Data Analyst%' OR 
      job_title_short LIKE '%Data Scientist%' OR
      job_title_short LIKE '%Data Engineer%')
    AND 
        job_country = 'United Kingdom'
GROUP BY
    posted_year,
    job_title_short
ORDER BY
    posted_year;



/*  INSIGHTS FOUND 

1. Overall Job Market Trend

The job market experienced a significant decrease in postings from 2023 to 2024, followed by a period of stabilization in 2025.

    - 2023: 666,586 total postings
    - 2024: 408,430 total postings (a ~38% decrease)
    - 2025: 408,281 total postings (stabilized)

2. Trends by Job Title

    - Data Analyst: Showed a sharp decline in 2024 but has started to recover in 2025, with an increase from 115,314 to 135,752 postings.
    - Data Engineer & Data Scientist: Both roles have seen a continuous decrease year-over-year. Data Engineering dropped from 186k to 115k, and Data Science dropped from 172k to 86k over the three-year period.
    - Senior Roles: Senior Data Analyst, Senior Data Engineer, and Senior Data Scientist roles follow similar patterns but at lower volumes. Interestingly, Senior Data Analyst postings also showed a recovery in 2025.

3. Most Demanded Jobs (Total 2023-2025)

The highest demand remains in general analyst and engineering roles. The top 3 most demanded jobs are:

    - Data Analyst: 447,505 postings
    - Data Engineer: 430,419 postings
    - Data Scientist: 357,847 postings
*/

