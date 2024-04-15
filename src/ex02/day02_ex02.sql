SELECT
  COALESCE(person.name, '-') AS person_name,
  dt.visit_date AS visit_date,
  COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM (SELECT *
    FROM person_visits
    WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS dt
FULL JOIN person ON dt.person_id = person.id
FULL JOIN pizzeria ON dt.pizzeria_id = pizzeria.id
ORDER BY 1, 2, 3;