INSERT INTO F VALUES('ABC','EF',False,'ABC += ABCDEF, dus het is een superkey, dus het is geen schending');
INSERT INTO F VALUES('E','D',True,'E += ADE, dit is geen superkey en ook niet triviaal, dus het is een schending');
INSERT INTO F VALUES('D','A',True,'D += AD, dit is geen superkey en ook niet triviaal, dus het is een schending');

INSERT INTO F1 VALUES('D', 'A', False, 'D += AD, dit is een superkey en dus geen schending.');
INSERT INTO F2 VALUES('ABC', 'EF', False, 'ABC += BCDEF, dus het is een superkey, dus het is geen schending');
INSERT INTO F2 VALUES('E', 'D' True, 'E+=DE, dit is geen superkey en ook niet triviaal, dus het is een schending');