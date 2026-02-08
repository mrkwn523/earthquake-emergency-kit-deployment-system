CREATE TABLE kits (
  id INT AUTO_INCREMENT PRIMARY KEY,
  kit_name VARCHAR(100) NOT NULL,
  location VARCHAR(100),
  status ENUM('Available','Deployed','Needs Restock') DEFAULT 'Available',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO kits (kit_name, location, status) VALUES
('Family Kit', 'Caloocan City', 'Available'),
('First Aid Kit', 'Manila', 'Needs Restock'),
('Rescue Kit', 'Quezon City', 'Deployed');
