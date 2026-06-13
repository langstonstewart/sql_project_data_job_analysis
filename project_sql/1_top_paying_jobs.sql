




SELECT
    companies.name as company_name,
    jpf.job_title_short as job_role,
    jpf.job_title,
    jpf.job_work_from_home,
    jpf.salary_year_avg
  

FROM job_postings_fact as jpf


LEFT JOIN
    company_dim as companies
    ON jpf.company_id = companies.company_id


WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home

ORDER BY
    salary_year_avg DESC

LIMIT 10