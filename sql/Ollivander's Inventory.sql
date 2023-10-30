SELECT w.id, p.age, w.coins_needed, w.power
FROM Wands AS w
JOIN Wands_Property AS p ON w.code = p.code
WHERE p.is_evil = 0 AND w.coins_needed =
(SELECT MIN(coins_needed)
FROM Wands AS x
JOIN Wands_Property AS y ON x.code = y.code
WHERE x.power = w.power AND y.age = p.age)
ORDER BY w.power DESC, p.age DESC;
