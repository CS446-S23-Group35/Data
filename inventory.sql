BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "inventory" (
	"id"	INTEGER NOT NULL,
	"name"	TEXT,
	"amount"	NUMERIC,
	"amount_unit"	TEXT,
	"expiry_date"	DATE,
	"is_expiry_estimated"	BOOLEAN,
	"purchase_date"	DATE,
	"soft_delete"	BOOLEAN,
	PRIMARY KEY("id")
);
COMMIT;
