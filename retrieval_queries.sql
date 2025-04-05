-- Get all lost items
SELECT * FROM items WHERE status = 'Lost';

-- Get all found items
SELECT * FROM items WHERE status = 'Found';

-- Get matched items with user details
SELECT 
    m.match_id,
    l.item_name AS lost_item,
    f.item_name AS found_item,
    m.match_score,
    m.status
FROM matches m
JOIN items l ON m.lost_item_id = l.item_id
JOIN items f ON m.found_item_id = f.item_id;
