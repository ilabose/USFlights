SELECT COUNT(*) FROM FLIGHTS;

SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides 
FROM Flights 
GROUP by Origin; 

SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades 
FROM Flights 
GROUP BY colMonth, Origin, colYear 
ORDER BY Origin, colYear, colMonth;

SELECT City, colYear, colMonth, AVG(Flights.ArrDelay) AS prom_arribades
FROM Flights
JOIN USAirports
WHERE Flights.Origin = USAirports.IATA 
GROUP BY City, colYear, colMonth
ORDER BY City, colYear, colMonth;

SELECT UniqueCarrier, colYear, colMonth, SUM(cancelled) as total_cancelled
FROM Flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY total_cancelled DESC, colYear, ColMonth;

SELECT TailNum, SUM(Distance) as totalDistance
FROM Flights
WHERE TailNum <> ''
GROUP BY TailNum
ORDER BY totalDistance DESC
LIMIT 10;

SELECT UniqueCarrier, avg(ArrDelay) as avgDelay FROM Flights
GROUP BY UniqueCarrier
HAVING avgDelay > 10
ORDER BY avgDelay DESC;