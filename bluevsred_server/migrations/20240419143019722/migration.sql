BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "troop" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "troop" (
    "id" serial PRIMARY KEY,
    "troopType" text NOT NULL,
    "actionPoints" double precision NOT NULL
);


--
-- MIGRATION VERSION FOR bluevsred
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bluevsred', '20240419143019722', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240419143019722', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
