BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "example" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "data" integer NOT NULL
);


--
-- MIGRATION VERSION FOR bluevsred
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bluevsred', '20240403080154821', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240403080154821', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
