
CREATE TABLE IF NOT EXISTS processadores (
                               id SERIAL PRIMARY KEY,
                               marca VARCHAR(50),
                               nome VARCHAR(100),
                               info_tecnica TEXT,
                               preco_medio_brl NUMERIC(10, 2)
);

CREATE TABLE IF NOT EXISTS memorias_ram (
                              id SERIAL PRIMARY KEY,
                              marca VARCHAR(50),
                              nome VARCHAR(100),
                              info_tecnica TEXT,
                              preco_medio_brl NUMERIC(10, 2)
);

CREATE TABLE IF NOT EXISTS placas_mae (
                            id SERIAL PRIMARY KEY,
                            marca VARCHAR(50),
                            nome VARCHAR(100),
                            info_tecnica TEXT,
                            preco_medio_brl NUMERIC(10, 2)
);

CREATE TABLE IF NOT EXISTS placas_video (
                              id SERIAL PRIMARY KEY,
                              marca VARCHAR(50),
                              nome VARCHAR(100),
                              info_tecnica TEXT,
                              preco_medio_brl NUMERIC(10, 2)
);

INSERT INTO processadores (marca, nome, info_tecnica, preco_medio_brl) VALUES
                                                                           ('Intel', 'Core i3-12100F', '4 Cores, 8 Threads, 3.3GHz (4.3GHz Turbo), LGA1700, Sem vídeo integrado', 600.00),
                                                                           ('Intel', 'Core i5-12400F', '6 Cores, 12 Threads, 2.5GHz (4.4GHz Turbo), LGA1700, Sem vídeo integrado', 850.00),
                                                                           ('Intel', 'Core i5-13400F', '10 Cores, 16 Threads, 2.5GHz (4.6GHz Turbo), LGA1700, Sem vídeo integrado', 1300.00),
                                                                           ('Intel', 'Core i5-13600K', '14 Cores, 20 Threads, 3.5GHz (5.1GHz Turbo), LGA1700, Desbloqueado', 2100.00),
                                                                           ('Intel', 'Core i7-13700K', '16 Cores, 24 Threads, 3.4GHz (5.4GHz Turbo), LGA1700, Desbloqueado', 2800.00),
                                                                           ('Intel', 'Core i9-13900K', '24 Cores, 32 Threads, 3.0GHz (5.8GHz Turbo), LGA1700, Desbloqueado', 3900.00),
                                                                           ('Intel', 'Core i5-14600K', '14 Cores, 20 Threads, 3.5GHz (5.3GHz Turbo), LGA1700, 14ª Geração', 2300.00),
                                                                           ('Intel', 'Core i7-14700K', '20 Cores, 28 Threads, 3.4GHz (5.6GHz Turbo), LGA1700, 14ª Geração', 3100.00),
                                                                           ('AMD', 'Ryzen 5 5500', '6 Cores, 12 Threads, 3.6GHz (4.2GHz Turbo), AM4, Sem vídeo integrado', 600.00),
                                                                           ('AMD', 'Ryzen 5 5600', '6 Cores, 12 Threads, 3.5GHz (4.4GHz Turbo), AM4, Cache L3 32MB', 850.00),
                                                                           ('AMD', 'Ryzen 7 5700X3D', '8 Cores, 16 Threads, 3.0GHz (4.1GHz Turbo), AM4, Tecnologia 3D V-Cache', 1500.00),
                                                                           ('AMD', 'Ryzen 5 7600', '6 Cores, 12 Threads, 3.8GHz (5.1GHz Turbo), AM5, DDR5 Apenas', 1400.00),
                                                                           ('AMD', 'Ryzen 7 7700X', '8 Cores, 16 Threads, 4.5GHz (5.4GHz Turbo), AM5, DDR5 Apenas', 2200.00),
                                                                           ('AMD', 'Ryzen 7 7800X3D', '8 Cores, 16 Threads, 4.2GHz (5.0GHz Turbo), AM5, Melhor CPU para jogos atual', 3000.00),
                                                                           ('AMD', 'Ryzen 9 7950X', '16 Cores, 32 Threads, 4.5GHz (5.7GHz Turbo), AM5, High-End Workstation', 4200.00);

INSERT INTO memorias_ram (marca, nome, info_tecnica, preco_medio_brl) VALUES
                                                                          ('Kingston', 'Fury Beast 8GB', 'DDR4, 3200MHz, CL16, Preto', 160.00),
                                                                          ('Kingston', 'Fury Beast 16GB', 'DDR4, 3200MHz, CL16, Preto', 280.00),
                                                                          ('Corsair', 'Vengeance LPX 8GB', 'DDR4, 3200MHz, CL16, Perfil Baixo', 170.00),
                                                                          ('XPG', 'Gammix D35 8GB', 'DDR4, 3200MHz, CL16, Com Dissipador', 150.00),
                                                                          ('Asgard', 'Loki W2 16GB (2x8GB)', 'DDR4, 3200MHz, CL16, RGB (Kit)', 350.00),
                                                                          ('Kingston', 'Fury Beast 16GB (DDR5)', 'DDR5, 5200MHz, CL40, Preto', 450.00),
                                                                          ('Corsair', 'Vengeance 32GB (2x16GB)', 'DDR5, 5600MHz, CL36, Otimizado AMD Expo', 950.00),
                                                                          ('G.Skill', 'Trident Z5 RGB 32GB', 'DDR5, 6000MHz, CL36, Alta Performance', 1200.00),
                                                                          ('XPG', 'Lancer RGB 16GB', 'DDR5, 6000MHz, CL40, Branco', 550.00),
                                                                          ('TeamGroup', 'T-Force Delta RGB 32GB', 'DDR5, 6000MHz, CL30, Latência Baixa', 1100.00);

INSERT INTO placas_mae (marca, nome, info_tecnica, preco_medio_brl) VALUES
                                                                        ('Asus', 'Prime H610M-E D4', 'Socket LGA1700, Chipset H610, DDR4, mATX (Entrada Intel)', 550.00),
                                                                        ('Gigabyte', 'B660M Gaming X', 'Socket LGA1700, Chipset B660, DDR4, mATX', 850.00),
                                                                        ('MSI', 'MAG B760M Mortar WiFi', 'Socket LGA1700, Chipset B760, DDR5, mATX, WiFi 6E', 1400.00),
                                                                        ('Asus', 'TUF Gaming Z790-Plus', 'Socket LGA1700, Chipset Z790, DDR5, ATX (Overclock Intel)', 2100.00),
                                                                        ('Gigabyte', 'Z790 Aorus Elite AX', 'Socket LGA1700, Chipset Z790, DDR5, ATX, WiFi 6E', 2300.00),
                                                                        ('Gigabyte', 'B450M Gaming', 'Socket AM4, Chipset B450, DDR4, mATX (Básico Ryzen 5000)', 500.00),
                                                                        ('MSI', 'B550M Pro-VDH WiFi', 'Socket AM4, Chipset B550, DDR4, mATX, WiFi Integrado', 750.00),
                                                                        ('Asus', 'TUF Gaming B550M-Plus', 'Socket AM4, Chipset B550, DDR4, mATX, Robustez Militar', 950.00),
                                                                        ('AsRock', 'B550 Steel Legend', 'Socket AM4, Chipset B550, DDR4, ATX, RGB Polychrome', 1100.00),
                                                                        ('Gigabyte', 'B650M K', 'Socket AM5, Chipset B650, DDR5, mATX (Entrada Ryzen 7000)', 900.00),
                                                                        ('MSI', 'PRO B650M-A WiFi', 'Socket AM5, Chipset B650, DDR5, mATX, WiFi 6E', 1300.00),
                                                                        ('Asus', 'TUF Gaming B650-Plus', 'Socket AM5, Chipset B650, DDR5, ATX, PCIe 5.0 M.2', 1700.00),
                                                                        ('Gigabyte', 'X670 Aorus Elite AX', 'Socket AM5, Chipset X670, DDR5, ATX (High-End AMD)', 2200.00),
                                                                        ('Asus', 'ROG Strix X670E-A Gaming', 'Socket AM5, Chipset X670E, DDR5, ATX, WiFi 6E, Branca', 3100.00),
                                                                        ('MSI', 'MPG Z790 Edge WiFi', 'Socket LGA1700, Chipset Z790, DDR5, ATX, Prata/Branco', 2600.00);

INSERT INTO placas_video (marca, nome, info_tecnica, preco_medio_brl) VALUES
                                                                          ('AMD', 'Radeon RX 6600', '8GB GDDR6, 128-bit, 1080p Gaming (Custo-Benefício)', 1300.00),
                                                                          ('NVIDIA', 'GeForce RTX 3050', '6GB GDDR6, 96-bit, Ray Tracing de Entrada', 1200.00),
                                                                          ('NVIDIA', 'GeForce RTX 3060', '12GB GDDR6, 192-bit, Popular para 1080p/Trabalho', 1800.00),
                                                                          ('NVIDIA', 'GeForce RTX 4060', '8GB GDDR6, DLSS 3.0, Eficiência Energética', 1900.00),
                                                                          ('AMD', 'Radeon RX 7600', '8GB GDDR6, Arquitetura RDNA 3, 1080p Ultra', 1750.00),
                                                                          ('NVIDIA', 'GeForce RTX 4060 Ti', '8GB GDDR6, DLSS 3.0, 1080p/1440p Entrada', 2500.00),
                                                                          ('AMD', 'Radeon RX 6750 XT', '12GB GDDR6, 192-bit, Excelente para 1440p', 2300.00),
                                                                          ('NVIDIA', 'GeForce RTX 4060 Ti 16GB', '16GB GDDR6, Mais VRAM para texturas/IA', 3000.00),
                                                                          ('AMD', 'Radeon RX 7700 XT', '12GB GDDR6, RDNA 3, 1440p High', 3200.00),
                                                                          ('NVIDIA', 'GeForce RTX 4070', '12GB GDDR6X, DLSS 3.0, 1440p Ray Tracing', 3800.00),
                                                                          ('NVIDIA', 'GeForce RTX 4070 Super', '12GB GDDR6X, Versão melhorada da 4070', 4300.00),
                                                                          ('AMD', 'Radeon RX 7800 XT', '16GB GDDR6, 256-bit, Competidora da 4070', 3600.00),
                                                                          ('NVIDIA', 'GeForce RTX 4070 Ti Super', '16GB GDDR6X, 256-bit, 1440p Ultra/4K Entrada', 5800.00),
                                                                          ('AMD', 'Radeon RX 7900 GRE', '16GB GDDR6, High-End Custo Benefício', 4200.00),
                                                                          ('NVIDIA', 'GeForce RTX 4080 Super', '16GB GDDR6X, 4K Gaming Sólido, Ray Tracing Alto', 7500.00),
                                                                          ('AMD', 'Radeon RX 7900 XT', '20GB GDDR6, 320-bit, 4K Rasterization', 5500.00),
                                                                          ('AMD', 'Radeon RX 7900 XTX', '24GB GDDR6, Topo de linha AMD, 4K Ultra', 7000.00),
                                                                          ('NVIDIA', 'GeForce RTX 4090', '24GB GDDR6X, Topo de linha Absoluto, IA/4K/8K', 13000.00),
                                                                          ('Intel', 'Arc A580', '8GB GDDR6, Entrada Intel, 1080p', 1100.00),
                                                                          ('Intel', 'Arc A750', '8GB GDDR6, Competidora da RTX 3060', 1400.00);