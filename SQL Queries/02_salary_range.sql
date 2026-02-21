/*

What Does the Market Pay for That Role? What is the salary distribution for Data Analysts?

Average salary, Median salary, Salary range


*/
-- Salary Range
SELECT 
    job_title_short, 
    percentile_cont(0.5) WITHIN GROUP 
        (ORDER BY salary_year_avg) AS median_salary,
    ROUND(AVG(salary_year_avg)) AS avg_salary
FROM
    job_postings_fact
WHERE
    salary_year_avg IS NOT NULL
    AND job_country = 'United Kingdom'
GROUP BY
    job_title_short
ORDER BY
    median_salary;


/*
Key Insights from Salary Data

Highest-Paying Role: The Senior Data Engineer holds the highest median salary at $147,500, followed closely by Machine Learning Engineers at $139,826.
Entry to Mid-Level Gap: There is a significant jump between Data Analyst ($85,375) and Data Engineer ($126,750), indicating that engineering and science-focused roles generally command higher compensation than analytical roles.

*/