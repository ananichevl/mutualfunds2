--liquibase formatted sql
--changeset test:1
MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
);

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
);

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
);

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
);

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SATS Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
        name
)
VALUES (companies_seq.nextval,
  'SATS Ltd'
)
;