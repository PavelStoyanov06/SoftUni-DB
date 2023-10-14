SELECT
	p.PeakName
	,r.RiverName
	,LOWER(CONCAT_WS('', LEFT(p.PeakName, LEN(p.PeakName) - 1), r.RiverName)) AS Mix
FROM Rivers AS r, Peaks AS p
WHERE RIGHT(LOWER(p.PeakName), 1) = LEFT(LOWER(r.RiverName), 1)
ORDER BY Mix