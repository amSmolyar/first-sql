select name, surname from persons
where lower(city_of_living) = lower('moscow')
order by surname;