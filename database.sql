CREATE TABLE kits (
  id INT AUTO_INCREMENT PRIMARY KEY,
  kit_name VARCHAR(100) NOT NULL,
  contents TEXT NOT NULL,
  location VARCHAR(100),
  status ENUM('Available','Deployed','Needs Restock') DEFAULT 'Available',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO kits (kit_name, contents, location, status) VALUES
('Family Kit', 'Water, Food, Flashlight, Radio', 'Caloocan City', 'Available'),
('First Aid Kit', 'Bandages, Alcohol, Medicine', 'Manila', 'Needs Restock'),
('Rescue Kit', 'Helmet, Gloves, Rope', 'Quezon City', 'Deployed');
