WITH date_visit_lol AS 
	(SELECT visit_date
	 FROM person_visits
	WHERE person_id = 1 OR person_id = 2)
SELECT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') missing_date
LEFT JOIN 
	date_visit_lol
	ON missing_date = date_visit_lol.visit_date
	WHERE visit_date IS NULL
	ORDER BY missing_date;
	
-- WITH - это как подключить библиотеку include сверху, то есть инициализируем, а внизу уже просто
-- используем инициализированную переменную