

SELECT
    INITCAP(skills.skills) as "Skill",
    CAST(COUNT(skills.skills) AS INT) AS "Demand",
    CAST(ROUND(AVG(jpf.salary_year_avg), 0) AS INT) AS "Salary"
  

FROM job_postings_fact AS jpf

INNER JOIN
    skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id

INNER JOIN
    skills_dim AS skills
    ON sjd.skill_id = skills.skill_id

WHERE
    job_title_short = 'Data Analyst' AND
    jpf.salary_year_avg IS NOT NULL
    
GROUP BY
    skills.skills

HAVING
    COUNT(skills.skills) >= 10

ORDER BY
    "Salary" DESC,
    "Demand" DESC
    
    
    




