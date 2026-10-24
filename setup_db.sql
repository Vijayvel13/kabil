-- ========================================================
-- AETHERSTORE DATABASE SETUP SCRIPT
-- Database: aether_store
-- Table: products
-- ========================================================

CREATE DATABASE IF NOT EXISTS `aether_store`
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE `aether_store`;

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `title` VARCHAR(255) NOT NULL,
  `category` VARCHAR(64) NOT NULL,
  `price` DECIMAL(10, 2) NOT NULL,
  `rating` DECIMAL(2, 1) NOT NULL DEFAULT 4.0,
  `reviews_count` INT NOT NULL DEFAULT 0,
  `image` TEXT NOT NULL,
  `tags` TEXT NOT NULL, -- comma-separated or JSON
  `specs` LONGTEXT NOT NULL, -- JSON string
  `in_stock` TINYINT(1) NOT NULL DEFAULT 1,
  `featured` TINYINT(1) NOT NULL DEFAULT 0,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ========================================================
-- SEED DATA INSERTION (19 Tech Products)
-- ========================================================

INSERT INTO `products` (`id`, `title`, `category`, `price`, `rating`, `reviews_count`, `image`, `tags`, `specs`, `in_stock`, `featured`) VALUES
(
  'prod-lap-1',
  'Lenovo IdeaPad 3 Slim',
  'laptops',
  36990.00,
  4.2,
  1420,
  'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&auto=format&fit=crop&q=80',
  'budget, student, lightweight, coding',
  '{\"CPU\":\"Intel Core i3 12th Gen (1215U)\",\"RAM\":\"8GB DDR4 (Expandable to 16GB)\",\"Storage\":\"512GB PCIe NVMe SSD\",\"Display\":\"15.6\\\" FHD Anti-Glare (1920x1080)\",\"Battery\":\"45Wh (Up to 6 hrs)\",\"Weight\":\"1.63 kg\",\"OS\":\"Windows 11 Home\"}',
  1,
  0
),
(
  'prod-lap-2',
  'ASUS Vivobook 15',
  'laptops',
  43990.00,
  4.4,
  2150,
  'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=800&auto=format&fit=crop&q=80',
  'coding, student, budget, battery',
  '{\"CPU\":\"AMD Ryzen 5 7520U (4 Cores / 8 Threads)\",\"RAM\":\"16GB LPDDR5 5500MHz\",\"Storage\":\"512GB M.2 NVMe PCIe 3.0 SSD\",\"Display\":\"15.6\\\" FHD 16:9 NanoEdge Slim Bezel\",\"Battery\":\"42Wh Fast Charging (60% in 49 mins)\",\"Weight\":\"1.70 kg\",\"OS\":\"Windows 11 Home\"}',
  1,
  1
),
(
  'prod-lap-3',
  'HP 15s Natural Silver',
  'laptops',
  47990.00,
  4.3,
  1890,
  'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&auto=format&fit=crop&q=80',
  'coding, productivity, battery, student',
  '{\"CPU\":\"Intel Core i5 12th Gen (1235U 10-core)\",\"RAM\":\"16GB DDR4 3200MHz\",\"Storage\":\"512GB PCIe M.2 SSD\",\"Display\":\"15.6\\\" Micro-edge FHD 250 nits\",\"Battery\":\"41Wh (Up to 7.5 hrs)\",\"Weight\":\"1.69 kg\",\"OS\":\"Windows 11 Home + MS Office\"}',
  1,
  1
),
(
  'prod-lap-4',
  'Acer Aspire 5 Thin & Light',
  'laptops',
  52990.00,
  4.5,
  1240,
  'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=800&auto=format&fit=crop&q=80',
  'coding, productivity, lightweight, student',
  '{\"CPU\":\"Intel Core i5 13th Gen (1335U 10-core)\",\"RAM\":\"16GB LPDDR5 Dual-Channel\",\"Storage\":\"512GB PCIe Gen4 NVMe SSD\",\"Display\":\"14\\\" WUXGA (1920x1200) IPS 16:10\",\"Battery\":\"50Wh Li-ion (Up to 8 hrs)\",\"Weight\":\"1.48 kg (Aluminum Top)\",\"OS\":\"Windows 11 Home\"}',
  1,
  1
),
(
  'prod-lap-5',
  'ASUS TUF Gaming F15',
  'laptops',
  58990.00,
  4.6,
  3100,
  'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&auto=format&fit=crop&q=80',
  'gaming, coding, performance',
  '{\"CPU\":\"Intel Core i5 11th Gen (11400H 6-core)\",\"GPU\":\"NVIDIA GeForce RTX 2050 (4GB GDDR6)\",\"RAM\":\"16GB DDR4 3200MHz\",\"Storage\":\"512GB PCIe 3.0 NVMe SSD\",\"Display\":\"15.6\\\" FHD 144Hz IPS-level Adaptive Sync\",\"Battery\":\"48Wh High Capacity\",\"Weight\":\"2.30 kg\",\"OS\":\"Windows 11 Home\"}',
  1,
  0
),
(
  'prod-lap-6',
  'Acer Swift Go 14 OLED',
  'laptops',
  64990.00,
  4.7,
  880,
  'https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?w=800&auto=format&fit=crop&q=80',
  'lightweight, battery, coding, productivity, flagship',
  '{\"CPU\":\"Intel Core i5 13th Gen (13500H 12-core)\",\"RAM\":\"16GB LPDDR5 6400MHz\",\"Storage\":\"512GB PCIe Gen4 SSD\",\"Display\":\"14\\\" 2.8K (2880x1800) OLED 90Hz 100% DCI-P3\",\"Battery\":\"65Wh (Up to 10.5 hrs)\",\"Weight\":\"1.25 kg Ultralight Aluminum\",\"OS\":\"Windows 11 Home\"}',
  1,
  1
),
(
  'prod-lap-7',
  'Apple MacBook Air M1 (Silver)',
  'laptops',
  69990.00,
  4.8,
  5400,
  'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800&auto=format&fit=crop&q=80',
  'battery, lightweight, coding, productivity, flagship',
  '{\"CPU\":\"Apple M1 Chip (8-Core CPU / 7-Core GPU)\",\"RAM\":\"8GB Unified Memory Architecture\",\"Storage\":\"256GB High-Speed SSD\",\"Display\":\"13.3\\\" Retina Display True Tone (2560x1600)\",\"Battery\":\"49.9Wh (Up to 18 hrs Battery Life)\",\"Weight\":\"1.29 kg Fanless Silent Design\",\"OS\":\"macOS Sonoma\"}',
  1,
  1
),
(
  'prod-lap-8',
  'Lenovo Legion 5 Gaming',
  'laptops',
  79990.00,
  4.7,
  1650,
  'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800&auto=format&fit=crop&q=80',
  'gaming, coding, flagship, performance',
  '{\"CPU\":\"AMD Ryzen 7 5800H (8 Cores / 16 Threads)\",\"GPU\":\"NVIDIA GeForce RTX 3050 (4GB 95W TGP)\",\"RAM\":\"16GB DDR4 3200MHz Dual-Channel\",\"Storage\":\"512GB NVMe SSD (Gen 4 ready)\",\"Display\":\"15.6\\\" FHD 165Hz 100% sRGB Dolby Vision\",\"Battery\":\"60Wh Rapid Charge Pro\",\"Weight\":\"2.40 kg Coldfront 3.0 Cooling\",\"OS\":\"Windows 11 Home\"}',
  1,
  0
),
(
  'prod-phone-1',
  'OnePlus Nord CE 4 5G',
  'smartphones',
  24999.00,
  4.4,
  3820,
  'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=800&auto=format&fit=crop&q=80',
  'battery, budget, student',
  '{\"Processor\":\"Snapdragon 7 Gen 3 (4nm)\",\"RAM\":\"8GB LPDDR4x (+8GB Virtual RAM)\",\"Storage\":\"128GB UFS 3.1\",\"Display\":\"6.7\\\" Fluid AMOLED 120Hz HDR10+\",\"Battery\":\"5500 mAh + 100W SUPERVOOC Fast Charge\",\"Camera\":\"50MP Sony LYT-600 OIS + 8MP Ultra-wide\",\"OS\":\"OxygenOS 14 based on Android 14\"}',
  1,
  1
),
(
  'prod-phone-2',
  'Redmi Note 13 Pro+ 5G',
  'smartphones',
  29999.00,
  4.3,
  2940,
  'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800&auto=format&fit=crop&q=80',
  'budget, flagship, battery',
  '{\"Processor\":\"MediaTek Dimensity 7200 Ultra (4nm)\",\"RAM\":\"8GB LPDDR5\",\"Storage\":\"256GB UFS 3.1\",\"Display\":\"6.67\\\" 3D Curved 1.5K CrystalRes AMOLED 120Hz\",\"Battery\":\"5000 mAh + 120W HyperCharge (19 min full)\",\"Camera\":\"200MP Samsung ISOCELL HP3 OIS + 8MP + 2MP\",\"OS\":\"Xiaomi HyperOS (IP68 Water Resistance)\"}',
  1,
  0
),
(
  'prod-phone-3',
  'Samsung Galaxy S23 FE 5G',
  'smartphones',
  49999.00,
  4.5,
  1850,
  'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=800&auto=format&fit=crop&q=80',
  'flagship, productivity',
  '{\"Processor\":\"Samsung Exynos 2200 (4nm Octa-core)\",\"RAM\":\"8GB LPDDR5\",\"Storage\":\"128GB UFS 3.1\",\"Display\":\"6.4\\\" Dynamic AMOLED 2X 120Hz Vision Booster\",\"Battery\":\"4500 mAh + 25W Fast & Wireless Charging\",\"Camera\":\"50MP OIS + 12MP Ultra-wide + 8MP 3x Telephoto\",\"OS\":\"One UI 6.1 with Galaxy AI Suite\"}',
  1,
  1
),
(
  'prod-phone-4',
  'Apple iPhone 14 (Midnight 128GB)',
  'smartphones',
  56990.00,
  4.7,
  4610,
  'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=800&auto=format&fit=crop&q=80',
  'flagship, battery, lightweight',
  '{\"Processor\":\"Apple A15 Bionic (5-core GPU)\",\"RAM\":\"6GB High-Speed RAM\",\"Storage\":\"128GB NVMe Storage\",\"Display\":\"6.1\\\" Super Retina XDR OLED (HDR10, Dolby Vision)\",\"Battery\":\"3279 mAh (All-Day Battery Life, MagSafe 15W)\",\"Camera\":\"12MP Dual Pixel OIS + 12MP Ultra-wide Cinematic 4K\",\"OS\":\"iOS 17 (IP68 Ceramic Shield)\"}',
  1,
  1
),
(
  'prod-head-1',
  'Sony WH-1000XM4 Noise Cancelling',
  'headphones',
  22990.00,
  4.8,
  6200,
  'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800&auto=format&fit=crop&q=80',
  'flagship, travel, battery, coding',
  '{\"Type\":\"Over-Ear Wireless ANC Headphones\",\"Driver\":\"40mm Dome type (CCAW Voice coil)\",\"Battery\":\"30 hrs with ANC On (Quick Charge 10m = 5h)\",\"ANC\":\"Dual Noise Sensor HD QN1 Processor\",\"Connectivity\":\"Bluetooth 5.0, LDAC, Multi-point 2 devices\",\"Weight\":\"254 g Lightweight Foldable\"}',
  1,
  1
),
(
  'prod-head-2',
  'Bose QuietComfort 45 Wireless',
  'headphones',
  25900.00,
  4.7,
  3410,
  'https://images.unsplash.com/photo-1546435770-a3e426bf472b?w=800&auto=format&fit=crop&q=80',
  'flagship, travel, lightweight',
  '{\"Type\":\"Over-Ear Acoustic Noise Cancelling\",\"Battery\":\"24 hrs on single charge (USB-C Fast Charge)\",\"ANC\":\"Quiet Mode & Aware Mode with 6 Mics\",\"Connectivity\":\"Bluetooth 5.1 with SimpleSync\",\"Weight\":\"240 g Ultra-plush cushions\"}',
  1,
  0
),
(
  'prod-head-3',
  'OnePlus Buds Pro 2 with Spatial Audio',
  'headphones',
  8990.00,
  4.4,
  2210,
  'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=800&auto=format&fit=crop&q=80',
  'budget, student, battery, travel',
  '{\"Type\":\"True Wireless Earbuds In-Ear\",\"Driver\":\"MelodyBoost Dual Drivers (11mm + 6mm)\",\"ANC\":\"Smart Adaptive Noise Cancellation up to 48dB\",\"Battery\":\"39 hrs total case playback (Fast Qi Charging)\",\"Latency\":\"54ms ultra-low gaming latency\",\"WaterResistance\":\"IP55 buds / IPX4 case\"}',
  1,
  0
),
(
  'prod-head-4',
  'OnePlus Bullets Wireless Z2',
  'headphones',
  1999.00,
  4.2,
  8900,
  'https://images.unsplash.com/photo-1572536147248-ac59a8abfa4b?w=800&auto=format&fit=crop&q=80',
  'budget, battery, student',
  '{\"Type\":\"Neckband In-Ear Earphones\",\"Driver\":\"12.4mm Bass Drivers with AI Call Noise Cancellation\",\"Battery\":\"30 hrs Battery Life (10 min charge = 20 hrs)\",\"WaterResistance\":\"IP55 Sweat and Water Resistant\",\"Connectivity\":\"Bluetooth 5.0 with Magnetic Pause/Resume\"}',
  1,
  0
),
(
  'prod-watch-1',
  'Apple Watch SE (2nd Gen GPS 44mm)',
  'smartwatches',
  27900.00,
  4.7,
  2740,
  'https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=800&auto=format&fit=crop&q=80',
  'flagship, student, productivity',
  '{\"Display\":\"Retina LTPO OLED 1000 nits display\",\"Processor\":\"S8 SiP with 64-bit dual-core processor\",\"Sensors\":\"Optical heart sensor, Crash & Fall Detection\",\"WaterResistance\":\"50m Swimproof water resistance\",\"Battery\":\"18 hrs all-day battery life (Low Power Mode)\",\"Case\":\"100% Recycled Aluminum Midnight Case\"}',
  1,
  1
),
(
  'prod-watch-2',
  'Samsung Galaxy Watch 6 (44mm Bluetooth)',
  'smartwatches',
  21999.00,
  4.5,
  1980,
  'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&auto=format&fit=crop&q=80',
  'flagship, battery, productivity',
  '{\"Display\":\"1.5\\\" Super AMOLED Sapphire Crystal Glass\",\"Processor\":\"Exynos W930 Dual Core 1.4GHz\",\"Sensors\":\"BioActive Sensor (ECG, Blood Pressure, BIA)\",\"Battery\":\"425 mAh (Up to 40 hrs runtime)\",\"WaterResistance\":\"5ATM + IP68 / MIL-STD-810H\",\"OS\":\"Wear OS 4 Powered by Samsung One UI Watch\"}',
  1,
  0
),
(
  'prod-watch-3',
  'Amazfit GTR 4 Classic Smartwatch',
  'smartwatches',
  16999.00,
  4.4,
  1430,
  'https://images.unsplash.com/photo-1544117518-30df578096a4?w=800&auto=format&fit=crop&q=80',
  'battery, budget, student',
  '{\"Display\":\"1.43\\\" HD AMOLED Anti-fingerprint Glass\",\"Battery\":\"Ultra-long 14-day Battery Life (475 mAh)\",\"GPS\":\"Dual-band Circularly Polarized GPS Antenna\",\"Sensors\":\"BioTracker 4.0 PPG Biometric sensor\",\"Features\":\"Bluetooth phone calls & local music storage\",\"WaterResistance\":\"5 ATM Water Resistant\"}',
  1,
  0
),
(
  'prod-dress-1',
  'Ethereal Silk Floral Maxi Dress',
  'dresses',
  1499.00,
  4.6,
  840,
  'https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?w=800&auto=format&fit=crop&q=80',
  'casual, summer, lightweight, party',
  '{\"Material\":\"100% Pure Mulberry Silk & Crepe\",\"Pattern\":\"Botanical Floral Print with Flared Hem\",\"Occasion\":\"Brunch, Evening Soirée, Resort Wear\",\"Length\":\"Floor Length Maxi with Concealed Zip\",\"Care\":\"Gentle Hand Wash or Dry Clean Only\"}',
  1,
  1
),
(
  'prod-dress-2',
  'Classic Velvet Evening Midi Gown',
  'dresses',
  2199.00,
  4.8,
  520,
  'https://images.unsplash.com/photo-1566174053879-31528523f8ae?w=800&auto=format&fit=crop&q=80',
  'formal, party, flagship, luxury',
  '{\"Material\":\"Royal Velvet Blend with Satin Lining\",\"Fit\":\"Slim A-line Silhouette with Back Slit\",\"Occasion\":\"Cocktail Gala, Black Tie & Red Carpet\",\"Color\":\"Deep Midnight Emerald / Sapphire\",\"Care\":\"Professional Dry Clean\"}',
  1,
  0
),
(
  'prod-jewel-1',
  'Miami Cuban Link 925 Sterling Silver Chain',
  'jewelry',
  1299.00,
  4.7,
  1120,
  'https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?w=800&auto=format&fit=crop&q=80',
  'luxury, party, flagship, casual',
  '{\"Metal\":\"925 Solid Sterling Silver with Rhodium Coat\",\"Width\":\"6mm Diamond Cut Cuban Curb Link\",\"Length\":\"22 Inches (55 cm) with Box Lock Clasp\",\"Weight\":\"38 grams Solid Density\",\"Hypoallergenic\":\"100% Nickel-free and Anti-tarnish\"}',
  1,
  1
),
(
  'prod-jewel-2',
  '18K Gold Plated Minimalist Pendant Chain',
  'jewelry',
  799.00,
  4.5,
  760,
  'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?w=800&auto=format&fit=crop&q=80',
  'budget, student, casual, lightweight',
  '{\"Metal\":\"18K Yellow Gold Micron Plating over Brass\",\"Pendant\":\"Geometric Solitaire CZ Crystal\",\"Length\":\"18 Inches + 2 Inch Extender\",\"Closure\":\"Durable Lobster Claw Clasp\",\"Warranty\":\"1 Year Anti-Fading Guarantee\"}',
  1,
  0
),
(
  'prod-shoe-1',
  'Nike Air Zoom Pegasus 40 Running Shoes',
  'shoes',
  1899.00,
  4.8,
  3200,
  'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&auto=format&fit=crop&q=80',
  'casual, student, lightweight, daily wear',
  '{\"Cushioning\":\"Dual Zoom Air Units (Forefoot & Heel)\",\"Midsole\":\"Nike React Foam for Resilient Energy Return\",\"Upper\":\"Engineered Single-Layer Breathable Mesh\",\"Sole\":\"Waffle-inspired Rubber Traction Outsole\",\"Weight\":\"288 grams (UK 8)\"}',
  1,
  1
),
(
  'prod-shoe-2',
  'Adidas Ultraboost Light Performance Sneakers',
  'shoes',
  2499.00,
  4.7,
  2100,
  'https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?w=800&auto=format&fit=crop&q=80',
  'casual, luxury, flagship, daily wear',
  '{\"Midsole\":\"Light BOOST Generation (-30% Lighter)\",\"Upper\":\"Primeknit+ Textile with Linear Energy Push\",\"Outsole\":\"Continental™ Better Rubber All-weather Grip\",\"Closure\":\"Adaptive Lace System\",\"Drop\":\"10 mm (Heel: 30 mm / Forefoot: 20 mm)\"}',
  1,
  0
),
(
  'prod-perf-1',
  'Dior Sauvage Eau De Parfum (100ml)',
  'perfumes',
  1199.00,
  4.9,
  4890,
  'https://images.unsplash.com/photo-1523293182086-7651a899d37f?w=800&auto=format&fit=crop&q=80',
  'luxury, party, flagship, fragrance',
  '{\"Concentration\":\"Eau De Parfum (EDP Intense)\",\"TopNotes\":\"Calabrian Bergamot & Spicy Sichuan Pepper\",\"HeartNotes\":\"Star Anise, Nutmeg & Lavender\",\"BaseNotes\":\"Papua New Guinean Vanilla & Ambroxan\",\"Longevity\":\"10 - 12 Hours Sillage & Projection\"}',
  1,
  1
),
(
  'prod-perf-2',
  'Bleu De Chanel Pour Homme (100ml)',
  'perfumes',
  1499.00,
  4.8,
  3950,
  'https://images.unsplash.com/photo-1594035910387-fea47794261f?w=800&auto=format&fit=crop&q=80',
  'luxury, formal, flagship, fragrance',
  '{\"Concentration\":\"Eau De Parfum Vaporisateur Spray\",\"TopNotes\":\"Grapefruit, Lemon, Mint & Pink Pepper\",\"HeartNotes\":\"Ginger, Iso E Super, Nutmeg & Jasmine\",\"BaseNotes\":\"Incense, Vetiver, Cedar, Sandalwood & Patchouli\",\"Longevity\":\"8 - 10 Hours Elegant Projection\"}',
  1,
  0
);

