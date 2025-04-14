SELECT p.id AS person_id, p.dossier_nummer, p.förnamn, p.efternamn, p.kön, p.skapad AS person_skapad, bo.adress AS boende_adress, p.plats_id, p.bokning_id, b.skapad AS bokning_skapad
FROM person p
JOIN plats pl ON p.plats_id = pl.id
JOIN boende bo ON pl.boende_id = bo.id
JOIN bokning b ON p.bokning_id = b.id;
