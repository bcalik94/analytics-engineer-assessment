SELECT 
    a.event_id AS event_id, -- [Corrected] Alias for clarity
    COUNT(adt.id) AS ticket_count, -- Counts all tickets associated with the ad
    ev.event_end, -- [Included] Directly includes the event_end date for each ad’s event
    COUNT(CASE WHEN ev.is_expired THEN adt.id ELSE NULL END) AS expired_ticket_count -- [Corrected] Correctly counts expired tickets
FROM 
    website.ad AS a
    LEFT JOIN website.event AS ev ON a.event_id = ev.id AND ev.is_verified  -- [Simplified] Direct condition for verified events in JOIN
    LEFT JOIN website.ad_ticket AS adt ON a.id = adt.ad_id -- [Simplified] Direct join without subquery
WHERE 
    a.source NOT IN ('web-mobile', 'web') AND a.source IS NOT NULL -- [Clarified] Explicit exclusion of specific sources and NULL
GROUP BY 
    a.event_id -- [Corrected] Grouping by ad for granularity
ORDER BY 
    a.event_id;-- [Maintained] Ordering results by ad id



