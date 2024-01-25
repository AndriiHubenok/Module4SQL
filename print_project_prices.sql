SELECT project.ID, SUM(worker.salary * (extract(year from age(project.FINISH_DATE, project.START_DATE)) * 12 +
extract(month from age(project.FINISH_DATE, project.START_DATE)))) AS PRICE
FROM project
JOIN project_worker ON project.id = project_worker.project_id
JOIN worker ON project_worker.worker_id = worker.id
GROUP BY project.id
ORDER BY price DESC;
