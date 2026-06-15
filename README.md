# Introduction
This project explores data for high-paying job postings, a wide variety of skills that are in demand, and where the stars for high demand and high salary postings align.

The queries can be found here: [project_sql folder](/project_sql/)
# Questions
- What are the top-paying remote data analyst jobs with high salaries?
- What are the required skills needed for these positions?
- What skills are most in demand for the typical data analyst position?
- Which specific skills tend to relate more to higher salaries?
- Which skills are the most optimal to learn for data analysts?

All of these questions are answered clearly with the queries provided.

# Tools I Used
- SQL: a standard programming language that enables us to query to database provided for the information we're searching for.
- PostgreSQL: Database management system, ideal for handling the various data.
- Visual Studio Code: Powerful IDE to manage our data and execute the written queries.
- Git/Github: Needed to administer our SQL scripts and data analysis for thorough project shaping.

# The Analysis

This project uses the provided `job_postings_fact`, `company_dim`, `skills_dim`, and `skills_job_dim` datasets to answer the main questions about remote data analyst positions.

- `1_top_paying_jobs.sql` identifies the top-paying remote data analyst positions using average yearly salary.
- `2_top_paying_jobs_skills.sql` expands that analysis to show the skills required for those highest-paying positions.
- `3_in_demand_skills.sql` finds the most common skills listed for remote data analyst positions.
- `4_top_paying_skills.sql` ranks skills by the average salary of jobs that require them.
- `5_most_optimal_skills.sql` combines demand and salary to highlight skills that are both common and financially desired.

Each query is designed to provide a different perspective:
- highest salary jobs,
- skill requirements for premium roles,
- most demanded skills,
- skills that correlate with higher salaries,
- and the most optimal skills to learn for remote data analyst work.

# What I Learned

- Remote Data Analyst roles are evaluated on both salary potential and required skill sets.
- Skills like SQL, Python, and Excel often appear among the most in-demand qualifications for remote data analyst positions.
- Some skills are more strongly associated with higher average salaries than others, suggesting a prioritization for career development.
- Combining frequency and salary impact provides a more practical view of which skills are optimal to look out for.

# Graph Conclusions

- `1_top_paying_jobs.sql` exhibits the highest-paying remote data analyst jobs; they are the best starting point for salary-focused jobs.
- `2_top_paying_jobs_skills.sql` demonstrates the skills required for top-paying roles and shows that premium jobs still require a well-rounded technical toolkit.
![plot_1](https://raw.githubusercontent.com/langstonstewart/sql_project_data_job_analysis/refs/heads/main/plots/plot_1.png)
*The top 10 Data Analyst positions from the 2023 dataset by salary, all almost over 200k.*
- `3_in_demand_skills.sql` identifies skills that keep appearing across remote analyst postings.
![plot_3](https://raw.githubusercontent.com/langstonstewart/sql_project_data_job_analysis/refs/heads/main/plots/plot_3.png)
*SQL, Excel, and Python dominate the skill selection for Data Analyst positions, with a demand count of over 4,000.*
- `4_top_paying_skills.sql` reveals which skills tend to be associated with higher salaries.
![plot_4](https://raw.githubusercontent.com/langstonstewart/sql_project_data_job_analysis/refs/heads/main/plots/plot_4.png)
*While not as in demand, it seems Svn governs the skill selection at an average salary of 400k.*
- `5_most_optimal_skills.sql` surfaces skills that balance both demand and salary impact, making them especially useful for learning and career planning.
![plot_5](https://raw.githubusercontent.com/langstonstewart/sql_project_data_job_analysis/refs/heads/main/plots/plot_5.png)
*All skills listed are over an average salary of 70k; as suggested by their color intensity, Python, SQL, Tableau, and Excel are more in demand.*

# How to Use

1. Open the `project_sql` folder.
2. Load the CSV files from `csv_files` into PostgreSQL using the scripts in `sql_load` if needed.
3. Run each `.sql` file in order to inspect the results and verify the analysis.
4. Use this README and the SQL queries together to understand which remote data analyst skills and positions are most valuable for you.


# Closing Thoughts

This project has strengthened my SQL skills, and I have learned how to successfully execute powerful SQL queries to grasp information I needed from the datasets provided. With the high-demand skills I possess, focusing on high-paying positions will give me an advantage within a competitive job market. I am looking forward to continuing my learning of data analytics to soon become a competent Data Analyst.

Data sourced from [datanerd.tech](https://datanerd.tech) by [Luke Barousse](https://datanerd.tech/about)