-- Script being executed on DB init, creates read only user
-- for replicas purposes.
CREATE USER byteplanet WITH PASSWORD 'byteplanet';
GRANT CONNECT ON DATABASE byteplanet TO byteplanet;
GRANT USAGE ON SCHEMA public TO byteplanet;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO byteplanet;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO byteplanet;
