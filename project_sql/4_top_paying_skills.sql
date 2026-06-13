

SELECT
    skills.skills,
    ROUND(AVG(jpf.salary_year_avg), 0) AS average_salary
  

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

ORDER BY
    average_salary DESC

LIMIT 25


