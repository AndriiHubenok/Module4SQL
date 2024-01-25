SELECT ID, extract(year from age(FINISH_DATE, START_DATE)) * 12 +
extract(month from age(FINISH_DATE, START_DATE)) AS MONTH_COUNT
FROM project
group by ID
order by MONTH_COUNT DESC
FETCH FIRST 1 ROWS WITH TIES;