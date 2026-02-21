/*
Remote vs Onsite Deep Dive
*/

SELECT
    job_title_short,
    
    ROUND(AVG(CASE WHEN job_work_from_home = TRUE THEN salary_year_avg END), 0) AS avg_salary_remote_usd,
    ROUND(AVG(CASE WHEN job_work_from_home = FALSE THEN salary_year_avg END), 0) AS avg_salary_onsite_usd,
    
    COUNT(CASE WHEN job_work_from_home = TRUE  THEN 1 END) AS remote_job_count,
    COUNT(CASE WHEN job_work_from_home = FALSE THEN 1 END) AS onsite_job_count,
    COUNT(*) AS total_postings

FROM job_postings_fact

WHERE salary_year_avg IS NOT NULL          -- ignore postings with no salary
  AND job_title_short IS NOT NULL

GROUP BY job_title_short

HAVING COUNT(*) >= 10                      -- only titles with decent sample size
ORDER BY total_postings DESC;


/* 
Key Insights

    Remote Pay Premium:  Data Scientists and Data Engineers actually earn more on average when working remotely than onsite, with premiums of approximately $1,820 and $1,067 respectively.
    Senior Data Scientists see the largest benefit from remote work, earning an average of $5,409 more than their onsite counterparts.
    Onsite Pay Advantage: For roles like Senior Data Analysts, Senior Data Engineers, and Business Analysts, onsite positions tend to offer slightly higher average salaries (up to $3,500 more).

    Market Availability:  The vast majority of job postings remain onsite.
    Remote work is most prevalent in senior positions, with Senior Data Scientists having the highest percentage of remote opportunities (~13.4%).
    Data Analysts have the lowest percentage of remote roles (~5.3%), suggesting that entry-level or foundational analytical roles are still largely tied to physical offices.
*/
