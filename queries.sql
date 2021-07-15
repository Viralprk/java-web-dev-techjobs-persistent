## Part 1: Test it with SQL
1)  At this point, you will have one table, job. In queries.sql under “Part 1”, list the columns and their data types in the table.

id - int
employer - varchar
name - varchar
skills - varchar


SELECT * FROM techjobs.job;
------------------------------------------------------------------------
## Part 2: Test it with SQL
##SQL TASK: In queries.sql under “Part 2”, write a query to list the names of the employers in St. Louis City.

SELECT * FROM techjobs.employer  where location = 'St. Louis'
-------------------------------------------------------------------------
## Part 3: Test it with SQL
## “Part 3”, write the SQL statement to remove the job table.
Drop table techjobs.job;
-------------------------------------------------------------------------
## Part 4: Test it with SQL

##write a query to return a list of the names and descriptions of all skills that are attached to jobs in alphabetical order.
If a skill does not have a job listed, it should not be included in the results of this query.

SELECT skill.name, skill.description
FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
ORDER BY name ASC;
-------------------------------------------------------------------------