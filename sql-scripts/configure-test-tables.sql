INSERT INTO boende (id, boende_typ, adress, skapad) VALUES
(1, 'MLUBA', 'Address A', '2025-04-14 09:00:00'),
(2, 'MLUBA', 'Address B', '2025-04-14 09:00:00'),
(3, 'TLMBA', 'Address C', '2025-04-14 09:30:00');

INSERT INTO plats (id, beskrivning, status, notering, boende_id, skapad) VALUES
(1, 'Rum 2, säng 5 ', 'belagd', NULL, 1, '2025-04-14 09:00:00'),
(2, 'Rum 1, säng 1 ', 'bokningsbar', NULL, 2, '2025-04-14 09:30:00'),
(3, 'Rum 1, säng 2 ', 'bokningsbar', NULL, 2, '2025-04-14 09:30:00'),
(4, 'Rum 1, säng 2 ', 'belagd', NULL, 3, '2025-04-14 10:00:00');

INSERT INTO grupp (id, gruppnamn, skapad) VALUES
(1, 'Ensamkommande', '2025-04-04 08:00:00'),
(2, 'Ensamkommande', '2025-04-14 08:30:00');

INSERT INTO bokning (id, boende_id, skapad) VALUES
(1, 1, '2025-04-04 10:00:00'),
(2, 3, '2025-04-14 11:00:00');

INSERT INTO bokning_platser (bokning_id, plats_id, skapad) VALUES
(1, 1, '2025-04-14 10:00:00'),
(2, 4, '2025-04-14 10:00:00');

INSERT INTO person (id, dossier_nummer, förnamn, efternamn, kön, plats_id, grupp_id, bokning_id, skapad) VALUES
(1, 12345, 'John', 'Doe', 'Man', 1, 1, 1, '2025-04-04 10:00:00'),
(2, 67890, 'Jane', 'Smith', 'Kvinna', 4, 2, 2, '2025-04-14 10:30:00'),
(3, NULL, 'Alex', 'Johnson', 'Man', NULL, NULL, NULL, '2025-04-14 11:00:00');


