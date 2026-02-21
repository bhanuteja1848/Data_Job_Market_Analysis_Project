/*
Degree Requirement Shift
*/

SELECT 
    job_title_short,
    COUNT(CASE WHEN job_no_degree_mention = TRUE THEN 1 END) AS degree_not_required,
    COUNT(CASE WHEN job_no_degree_mention = FALSE THEN 1 END) AS degree_required
FROM
    job_postings_fact
GROUP BY
    job_title_short
ORDER BY
    degree_not_required DESC


/* Key Insights 

Degrees are highly mandatory for Scientific and ML roles:

    Machine Learning Engineers have the strictest requirements, with 97.4% of job postings requiring a degree.
    Data Scientists (both junior and senior) follow closely, with over 94% of roles mandating a degree.

More flexibility in Analyst and Engineering roles:

    Data Analysts have the most entry points for those without degrees, with nearly 30% of postings not explicitly requiring one.
    Data Engineers also show significant flexibility, with about 28.4% of roles not requiring a degree.

The "Seniority Bar": Interestingly, the requirement for a degree increases slightly as roles become more senior for Analysts and Engineers, but for Scientists, the bar remains consistently high regardless of seniority level.

*/