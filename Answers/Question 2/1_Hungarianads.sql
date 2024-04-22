SELECT
    SUM(CASE WHEN el.country = 'HU' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS percentage_hungarian
FROM ad a
JOIN event e ON a.event_id = e.id
JOIN event_location el ON e.location_id = el.id;
