INSERT INTO grupp (id, gruppnamn, skapad) VALUES
(3, 'Man + hustru', '2025-04-14 12:00:00');

INSERT INTO bokning (id, boende_id, skapad) VALUES
(3, 2, '2025-04-14 12:00:00');

INSERT INTO bokning_platser (bokning_id, plats_id, skapad) VALUES
(3, 2, '2025-04-14 10:00:00'),
(3, 3, '2025-04-14 10:00:00');

UPDATE plats
SET status = 'bokad'
WHERE id = 2;

UPDATE plats
SET status = 'bokad'
WHERE id = 3;

UPDATE person
SET plats_id = 2, grupp_id = 3, bokning_id=3
WHERE id = 3;

