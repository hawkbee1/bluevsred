BEGIN;


--
-- MIGRATION VERSION FOR bluevsred
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bluevsred', '20240412092530655', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240412092530655', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
