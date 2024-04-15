SELECT pizzeria.name, pizzeria.rating
FROM pizzeria
FULL OUTER JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
WHERE pizzeria.id IS NULL OR person_visits.pizzeria_id IS NULL;