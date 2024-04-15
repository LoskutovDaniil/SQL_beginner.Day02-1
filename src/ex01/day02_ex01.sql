SELECT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') missing_date
LEFT JOIN 
	(SELECT visit_date
	 FROM person_visits
	WHERE person_id = 1 OR person_id = 2) as date_visit_lol
	ON missing_date = date_visit_lol.visit_date
	WHERE visit_date IS NULL
	ORDER BY missing_date;

