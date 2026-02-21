/*
What are the most demanded skills for Data Analysts?
Are cloud tools required?
Is Python more demanded than Excel?

*/

SELECT 
    jpf.job_title_short,
    sd.skills,
    COUNT(sd.skill_id) AS skill_count 
FROM
    job_postings_fact AS jpf 
INNER JOIN skills_job_dim AS sjd 
    ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim AS sd
    ON sjd.skill_id = sd.skill_id 
WHERE
    jpf.job_title_short LIKE '%Data%'
GROUP BY
    sd.skills,
    jpf.job_title_short
ORDER BY
   skill_count DESC
LIMIT 50;

/*

Key Insights into Data Role Skills
    The "Big Three" Technologies: SQL and Python are the undisputed leaders across the entire data domain. 
    SQL is the most requested skill overall ($752,153$ mentions), followed very closely by Python ($716,308$ mentions).
Role-Specific Specialization:
    Data Analysts: Rely heavily on SQL, Excel, and visualization tools like Tableau and Power BI. This role is the most "spreadsheet and dashboard" centric.
    Data Engineers: Focus on infrastructure and big data. Their top skills include SQL, Python, AWS, Azure, and Spark. They have a much higher requirement for cloud platforms compared to Analysts.
    Data Scientists: While they also use SQL, Python is their primary tool, followed by R and specialized analytical tools.

Cloud Dominance: AWS and Azure have emerged as essential skills for Data Engineers and are increasingly appearing in Data Scientist requirements, reflecting the shift toward cloud-based data architectures.

*/
