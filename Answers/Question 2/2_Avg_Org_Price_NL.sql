SELECT AVG(a.original_price) AS avg_original_price
FROM ad a
JOIN event e ON a.event_id = e.id
JOIN event_location el ON e.location_id = el.id
WHERE el.country = 'NL';
