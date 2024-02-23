DECLARE @selectedTheatreID INT = 1;
DECLARE @selectedDate DATE = '2024-02-24';

SELECT s.ShowID, m.MovieName, s.StartTime, s.EndTime
FROM Show s
JOIN Movie m ON s.MovieID = m.MovieID
WHERE s.TheatreID = @selectedTheatreID AND s.Date = @selectedDate;