-- Insert sample users
INSERT INTO users (name, email, phone) VALUES
('Amit Kumar', 'amit@example.com', '9876543210'),
('Priya Sharma', 'priya@example.com', '8765432109');

-- Insert sample items
INSERT INTO items (item_name, description, category, image_url, status, reported_by, report_date) VALUES
('Black Wallet', 'Black leather wallet with ATM cards', 'Accessories', 'wallet.jpg', 'Lost', 1, '2025-04-01'),
('Red Water Bottle', '1L Milton red bottle', 'Utilities', 'bottle.jpg', 'Found', 2, '2025-04-02');

-- Insert sample match
INSERT INTO matches (lost_item_id, found_item_id, match_score, status) VALUES
(1, 2, 0.85, 'Pending');
