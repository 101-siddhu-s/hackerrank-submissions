SELECT s.Name
FROM Students AS s
JOIN Friends AS f ON s.ID = f.ID
JOIN Packages AS pac1 ON s.ID = pac1.ID
JOIN Packages AS pac2 ON f.Friend_ID = pac2.ID
WHERE pac2.Salary > pac1.Salary
ORDER BY pac2.Salary;
