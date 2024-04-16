BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "example" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "battle" (
    "id" serial PRIMARY KEY,
    "creationDate" timestamp without time zone NOT NULL,
    "startDate" timestamp without time zone NOT NULL,
    "maxActionPoints" double precision NOT NULL,
    "actionPointsRecoveryRate" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "player" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "talle_map" (
    "id" serial PRIMARY KEY,
    "path" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "team" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "colorCode" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "troop" (
    "id" serial PRIMARY KEY,
    "path" text NOT NULL,
    "troopType" text NOT NULL
);


--
-- MIGRATION VERSION FOR bluevsred
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bluevsred', '20240412073903562', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240412073903562', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
