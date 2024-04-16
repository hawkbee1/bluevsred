BEGIN;


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

--
-- MIGRATION VERSION FOR _repair
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('_repair', '20240412074114893', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240412074114893', "timestamp" = now();


COMMIT;
