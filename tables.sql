BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "inventory" (
	"id"					INTEGER NOT NULL,
	"name"					TEXT,
	"amount"				NUMERIC,
	"amount_unit"			TEXT,
	"expiry_date"			DATE,
	"is_expiry_estimated"	BOOLEAN,
	"purchase_date"			DATE,
	"soft_delete"			BOOLEAN,
	"owners"				TEXT[],
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "users" (
	"id"			TEXT NOT NULL,
	"inventory"		JSONB DEFAULT '{}',
	"shopping_list"	JSONB DEFAULT '[]',
	PRIMARY KEY("id")
);
COMMIT;
