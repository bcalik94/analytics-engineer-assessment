SELECT COUNT(*) AS Pixies_sold_listings
FROM ad a
JOIN event e ON a.event_id = e.id
WHERE e.title LIKE '%Pixies%' AND a.is_sold = 1;