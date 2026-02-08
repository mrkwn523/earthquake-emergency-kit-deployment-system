CREATE TABLE kits (
  id INT AUTO_INCREMENT PRIMARY KEY,
  kit_type VARCHAR(100) NOT NULL,
  location VARCHAR(255),
  status ENUM('Currently Restocked','Needs Restock') DEFAULT 'Currently Restocked',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO kits (kit_name, location, status) VALUES
('Family Kit', 'Caloocan City', 'Currently Restocked'),
('First Aid Kit', 'Manila', 'Needs Restock');
