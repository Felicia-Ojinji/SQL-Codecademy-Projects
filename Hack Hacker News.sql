--To view 5 rows out of all hacker_news columns:
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

-- The Total score of all the stories
SELECT SUM(score)
FROM hacker_news;

-- Filter out users with a lot of accumulated points across their stories
SELECT user,  SUM(score) AS 'score'
FROM hacker_news
GROUP BY user
HAVING score > 200
ORDER BY user DESC;

-- To get the percetage of the users score
SELECT(517+282+304+309)/6366.0;

--The number of times each offender posted the link
SELECT user, COUNT(*)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY user
ORDER BY COUNT (*) DESC;

-- Sites feeding Hacker News
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url Like '%medium.com%' THEN 'Medium'
   WHEN url Like '%ytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source'
FROM hacker_news
GROUP BY 1;

-- To view the Timestamp Column
SELECT timestamp
FROM hacker_news
LIMIT 10;

-- Best time of the day to post a story
SELECT timestamp, COUNT(*) AS 'count'
FROM hacker_news
GROUP BY timestamp
ORDER BY count DESC;

 -- Returns the Columns: timestamp,score and count for each hour
SELECT  strftime('%H', timestamp), AVG(score),COUNT (*)
FROM hacker_news
GROUP BY 1
ORDER BY 1;

