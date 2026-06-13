

SELECT
    skills.skills,
    COUNT(sjd.job_id) as demand_count

FROM job_postings_fact AS jpf

INNER JOIN
    skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id

INNER JOIN
    skills_dim AS skills
    ON sjd.skill_id = skills.skill_id

WHERE
    job_title_short = 'Data Analyst' AND
    job_work_from_home

GROUP BY
    skills.skills

ORDER BY
    demand_count DESC

LIMIT 5