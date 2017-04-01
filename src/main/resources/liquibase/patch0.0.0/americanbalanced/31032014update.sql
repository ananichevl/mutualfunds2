-- liquibase formatted sql
-- changeset mkp:add-records-31032014-01

MERGE INTO funds f
USING ( SELECT 1 FROM dual ) d
ON ( f.name = 'americanbalanced' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (  funds_seq.nextval,
'americanbalanced'
)
;

-- changeset mkp:add-records-31032014-02
MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Wells Fargo & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Wells Fargo & Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Wells Fargo & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Wells Fargo & Co',
(SELECT id FROM companies WHERE name='Wells Fargo & Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Wells Fargo & Co'),
2099774,
42215000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'American Express Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'American Express Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'American Express Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'American Express Co',
(SELECT id FROM companies WHERE name='American Express Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='American Express Co'),
1460647,
16224000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Berkshire Hathaway Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Berkshire Hathaway Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Berkshire Hathaway Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Berkshire Hathaway Inc Class A',
(SELECT id FROM companies WHERE name='Berkshire Hathaway Inc Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Berkshire Hathaway Inc Class A'),
1217775,
6500,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'JPMorgan Chase & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'JPMorgan Chase & Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'JPMorgan Chase & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'JPMorgan Chase & Co',
(SELECT id FROM companies WHERE name='JPMorgan Chase & Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='JPMorgan Chase & Co'),
1069771,
17621000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ACE Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ACE Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ACE Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ACE Ltd',
(SELECT id FROM companies WHERE name='ACE Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='ACE Ltd'),
599313,
6050000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Citigroup Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Citigroup Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Citigroup Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Citigroup Inc',
(SELECT id FROM companies WHERE name='Citigroup Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Citigroup Inc'),
404600,
8500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Goldman Sachs Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Goldman Sachs Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Goldman Sachs Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Goldman Sachs Group Inc',
(SELECT id FROM companies WHERE name='Goldman Sachs Group Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Goldman Sachs Group Inc'),
400892,
2446700,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Weyerhaeuser Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Weyerhaeuser Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Weyerhaeuser Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Weyerhaeuser Co',
(SELECT id FROM companies WHERE name='Weyerhaeuser Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Weyerhaeuser Co'),
376127,
12815242,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SunTrust Banks Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SunTrust Banks Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SunTrust Banks Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SunTrust Banks Inc',
(SELECT id FROM companies WHERE name='SunTrust Banks Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='SunTrust Banks Inc'),
374026,
9400000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'US Bancorp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'US Bancorp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'US Bancorp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'US Bancorp',
(SELECT id FROM companies WHERE name='US Bancorp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='US Bancorp'),
351452,
8200000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Moody’s Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Moody’s Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Moody’s Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Moody’s Corp',
(SELECT id FROM companies WHERE name='Moody’s Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Moody’s Corp'),
349008,
4400000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'American Tower Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'American Tower Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'American Tower Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'American Tower Corp',
(SELECT id FROM companies WHERE name='American Tower Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='American Tower Corp'),
233329,
2850000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Arch Capital Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Arch Capital Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Arch Capital Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Arch Capital Group Ltd',
(SELECT id FROM companies WHERE name='Arch Capital Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Arch Capital Group Ltd'),
223831,
3890000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BlackRock Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BlackRock Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BlackRock Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BlackRock Inc',
(SELECT id FROM companies WHERE name='BlackRock Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='BlackRock Inc'),
220136,
700000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Capital One Financial Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Capital One Financial Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Capital One Financial Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Capital One Financial Corp',
(SELECT id FROM companies WHERE name='Capital One Financial Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Capital One Financial Corp'),
187499,
2430000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Chubb Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Chubb Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Chubb Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Chubb Corp',
(SELECT id FROM companies WHERE name='Chubb Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Chubb Corp'),
133950,
1500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bank of America Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bank of America Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bank of America Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bank of America Corp',
(SELECT id FROM companies WHERE name='Bank of America Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Bank of America Corp'),
120400,
7000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Allstate Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Allstate Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Allstate Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Allstate Corp',
(SELECT id FROM companies WHERE name='Allstate Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Allstate Corp'),
113160,
2000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'T Rowe Price Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'T Rowe Price Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'T Rowe Price Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'T Rowe Price Group Inc',
(SELECT id FROM companies WHERE name='T Rowe Price Group Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='T Rowe Price Group Inc'),
59292,
720000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Boeing Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Boeing Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Boeing Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Boeing Co',
(SELECT id FROM companies WHERE name='Boeing Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Boeing Co'),
1665880,
13275000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Lockheed Martin Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Lockheed Martin Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Lockheed Martin Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Lockheed Martin Corp',
(SELECT id FROM companies WHERE name='Lockheed Martin Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Lockheed Martin Corp'),
1142196,
6997037,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Union Pacific Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Union Pacific Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Union Pacific Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Union Pacific Corp',
(SELECT id FROM companies WHERE name='Union Pacific Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Union Pacific Corp'),
1110009,
5915000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'General Electric Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'General Electric Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'General Electric Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'General Electric Co',
(SELECT id FROM companies WHERE name='General Electric Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='General Electric Co'),
662784,
25600000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cummins Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cummins Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cummins Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cummins Inc',
(SELECT id FROM companies WHERE name='Cummins Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Cummins Inc'),
547449,
3674400,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Caterpillar Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Caterpillar Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Caterpillar Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Caterpillar Inc',
(SELECT id FROM companies WHERE name='Caterpillar Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Caterpillar Inc'),
526661,
5300000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Parker-Hannifin Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Parker-Hannifin Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Parker-Hannifin Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Parker-Hannifin Corp',
(SELECT id FROM companies WHERE name='Parker-Hannifin Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Parker-Hannifin Corp'),
490811,
4100000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Deere & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Deere & Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Deere & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Deere & Co',
(SELECT id FROM companies WHERE name='Deere & Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Deere & Co'),
450368,
4960000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'United Technologies Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'United Technologies Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'United Technologies Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'United Technologies Corp',
(SELECT id FROM companies WHERE name='United Technologies Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='United Technologies Corp'),
365709,
3130000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'General Dynamics Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'General Dynamics Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'General Dynamics Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'General Dynamics Corp',
(SELECT id FROM companies WHERE name='General Dynamics Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='General Dynamics Corp'),
203136,
1865000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Honeywell International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Honeywell International Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Honeywell International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Honeywell International Inc',
(SELECT id FROM companies WHERE name='Honeywell International Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Honeywell International Inc'),
162330,
1750000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Northrop Grumman Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Northrop Grumman Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Northrop Grumman Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Northrop Grumman Corp',
(SELECT id FROM companies WHERE name='Northrop Grumman Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Northrop Grumman Corp'),
154225,
1250000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Rockwell Collins Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Rockwell Collins Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Rockwell Collins Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Rockwell Collins Inc',
(SELECT id FROM companies WHERE name='Rockwell Collins Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Rockwell Collins Inc'),
111538,
1400000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Emerson Electric Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Emerson Electric Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Emerson Electric Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Emerson Electric Co',
(SELECT id FROM companies WHERE name='Emerson Electric Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Emerson Electric Co'),
73480,
1100000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Canadian Pacific Railway Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Canadian Pacific Railway Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Canadian Pacific Railway Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Canadian Pacific Railway Ltd',
(SELECT id FROM companies WHERE name='Canadian Pacific Railway Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Canadian Pacific Railway Ltd'),
19326,
128981,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Amazoncom Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Amazoncom Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Amazoncom Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Amazoncom Inc',
(SELECT id FROM companies WHERE name='Amazoncom Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Amazoncom Inc'),
1957873,
5818000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Home Depot Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Home Depot Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Home Depot Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Home Depot Inc',
(SELECT id FROM companies WHERE name='Home Depot Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Home Depot Inc'),
1786704,
22579349,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Comcast Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Comcast Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Comcast Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Comcast Corp Class A',
(SELECT id FROM companies WHERE name='Comcast Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Comcast Corp Class A'),
1215986,
24310000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Walt Disney Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Walt Disney Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Walt Disney Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Walt Disney Co',
(SELECT id FROM companies WHERE name='Walt Disney Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Walt Disney Co'),
427974,
5345000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'VF Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'VF Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'VF Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'VF Corp',
(SELECT id FROM companies WHERE name='VF Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='VF Corp'),
420784,
6800000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'General Motors Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'General Motors Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'General Motors Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'General Motors Co',
(SELECT id FROM companies WHERE name='General Motors Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='General Motors Co'),
258150,
7500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'DIRECTV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'DIRECTV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'DIRECTV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'DIRECTV',
(SELECT id FROM companies WHERE name='DIRECTV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='DIRECTV'),
234610,
3070000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Time Warner Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Time Warner Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Time Warner Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Time Warner Inc',
(SELECT id FROM companies WHERE name='Time Warner Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Time Warner Inc'),
212323,
3250000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Macy’s Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Macy’s Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Macy’s Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Macy’s Inc',
(SELECT id FROM companies WHERE name='Macy’s Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Macy’s Inc'),
207515,
3500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'NIKE Inc Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'NIKE Inc Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'NIKE Inc Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'NIKE Inc Class B',
(SELECT id FROM companies WHERE name='NIKE Inc Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='NIKE Inc Class B'),
188671,
2554442,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Las Vegas Sands Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Las Vegas Sands Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Las Vegas Sands Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Las Vegas Sands Corp',
(SELECT id FROM companies WHERE name='Las Vegas Sands Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Las Vegas Sands Corp'),
162505,
2011700,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Johnson Controls Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Johnson Controls Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Johnson Controls Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Johnson Controls Inc',
(SELECT id FROM companies WHERE name='Johnson Controls Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Johnson Controls Inc'),
115697,
2445000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CBS Corp Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CBS Corp Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CBS Corp Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CBS Corp Class B',
(SELECT id FROM companies WHERE name='CBS Corp Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='CBS Corp Class B'),
91155,
1475000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Microsoft Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Microsoft Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Microsoft Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Microsoft Corp',
(SELECT id FROM companies WHERE name='Microsoft Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Microsoft Corp'),
2307122,
56285000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Texas Instruments Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Texas Instruments Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Texas Instruments Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Texas Instruments Inc',
(SELECT id FROM companies WHERE name='Texas Instruments Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Texas Instruments Inc'),
1137022,
24115000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Google Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Google Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Google Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Google Inc Class A',
(SELECT id FROM companies WHERE name='Google Inc Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Google Inc Class A'),
575477,
516350,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ASML Holding NV (New York registered)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ASML Holding NV (New York registered)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ASML Holding NV (New York registered)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ASML Holding NV (New York registered)',
(SELECT id FROM companies WHERE name='ASML Holding NV (New York registered)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='ASML Holding NV (New York registered)'),
355896,
3812080,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ASML Holding NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ASML Holding NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ASML Holding NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ASML Holding NV',
(SELECT id FROM companies WHERE name='ASML Holding NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='ASML Holding NV'),
136132,
1470405,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'TE Connectivity Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'TE Connectivity Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'TE Connectivity Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'TE Connectivity Ltd',
(SELECT id FROM companies WHERE name='TE Connectivity Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='TE Connectivity Ltd'),
469939,
7805000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Taiwan Semiconductor Manufacturing Co Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Taiwan Semiconductor Manufacturing Co Ltd (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Taiwan Semiconductor Manufacturing Co Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Taiwan Semiconductor Manufacturing Co Ltd (ADR)',
(SELECT id FROM companies WHERE name='Taiwan Semiconductor Manufacturing Co Ltd (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Taiwan Semiconductor Manufacturing Co Ltd (ADR)'),
426426,
21300000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cisco Systems Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cisco Systems Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cisco Systems Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cisco Systems Inc',
(SELECT id FROM companies WHERE name='Cisco Systems Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Cisco Systems Inc'),
392175,
17500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Analog Devices Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Analog Devices Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Analog Devices Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Analog Devices Inc',
(SELECT id FROM companies WHERE name='Analog Devices Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Analog Devices Inc'),
272343,
5125000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'VeriSign Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'VeriSign Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'VeriSign Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'VeriSign Inc',
(SELECT id FROM companies WHERE name='VeriSign Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='VeriSign Inc'),
269550,
5000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Avago Technologies Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Avago Technologies Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Avago Technologies Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Avago Technologies Ltd',
(SELECT id FROM companies WHERE name='Avago Technologies Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Avago Technologies Ltd'),
223760,
3474000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Intel Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Intel Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Intel Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Intel Corp',
(SELECT id FROM companies WHERE name='Intel Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Intel Corp'),
193575,
7500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'salesforcecom inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'salesforcecom inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'salesforcecom inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'salesforcecom inc',
(SELECT id FROM companies WHERE name='salesforcecom inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='salesforcecom inc'),
113038,
1980000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Maxim Integrated Products Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Maxim Integrated Products Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Maxim Integrated Products Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Maxim Integrated Products Inc',
(SELECT id FROM companies WHERE name='Maxim Integrated Products Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Maxim Integrated Products Inc'),
98698,
2980000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Merck & Co Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Merck & Co Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Merck & Co Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Merck & Co Inc',
(SELECT id FROM companies WHERE name='Merck & Co Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Merck & Co Inc'),
1460692,
25730000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'UnitedHealth Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'UnitedHealth Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'UnitedHealth Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'UnitedHealth Group Inc',
(SELECT id FROM companies WHERE name='UnitedHealth Group Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='UnitedHealth Group Inc'),
762097,
9295000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Pfizer Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Pfizer Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Pfizer Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Pfizer Inc',
(SELECT id FROM companies WHERE name='Pfizer Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Pfizer Inc'),
724948,
22570000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bristol-Myers Squibb Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bristol-Myers Squibb Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bristol-Myers Squibb Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bristol-Myers Squibb Co',
(SELECT id FROM companies WHERE name='Bristol-Myers Squibb Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Bristol-Myers Squibb Co'),
631193,
12150000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Johnson & Johnson' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Johnson & Johnson'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Johnson & Johnson' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Johnson & Johnson',
(SELECT id FROM companies WHERE name='Johnson & Johnson')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Johnson & Johnson'),
618849,
6300000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Gilead Sciences Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Gilead Sciences Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Gilead Sciences Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Gilead Sciences Inc',
(SELECT id FROM companies WHERE name='Gilead Sciences Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Gilead Sciences Inc'),
240684,
3396613,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Roche Holding AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Roche Holding AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Roche Holding AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Roche Holding AG',
(SELECT id FROM companies WHERE name='Roche Holding AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Roche Holding AG'),
180352,
600000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AbbVie Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AbbVie Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AbbVie Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AbbVie Inc',
(SELECT id FROM companies WHERE name='AbbVie Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='AbbVie Inc'),
133640,
2600000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Express Scripts Holding Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Express Scripts Holding Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Express Scripts Holding Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Express Scripts Holding Co',
(SELECT id FROM companies WHERE name='Express Scripts Holding Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Express Scripts Holding Co'),
128404,
1710000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Baxter International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Baxter International Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Baxter International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Baxter International Inc',
(SELECT id FROM companies WHERE name='Baxter International Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Baxter International Inc'),
58864,
800000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Vertex Pharmaceuticals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Vertex Pharmaceuticals Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Vertex Pharmaceuticals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Vertex Pharmaceuticals Inc',
(SELECT id FROM companies WHERE name='Vertex Pharmaceuticals Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Vertex Pharmaceuticals Inc'),
30233,
427500,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Philip Morris International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Philip Morris International Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Philip Morris International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Philip Morris International Inc',
(SELECT id FROM companies WHERE name='Philip Morris International Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Philip Morris International Inc'),
1137993,
13900000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Procter & Gamble Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Procter & Gamble Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Procter & Gamble Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Procter & Gamble Co',
(SELECT id FROM companies WHERE name='Procter & Gamble Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Procter & Gamble Co'),
789074,
9790000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nestlé SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nestlé SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nestlé SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nestlé SA',
(SELECT id FROM companies WHERE name='Nestlé SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Nestlé SA'),
669098,
8880000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nestlé SA (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nestlé SA (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nestlé SA (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nestlé SA (ADR)',
(SELECT id FROM companies WHERE name='Nestlé SA (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Nestlé SA (ADR)'),
75220,
1000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Costco Wholesale Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Costco Wholesale Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Costco Wholesale Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Costco Wholesale Corp',
(SELECT id FROM companies WHERE name='Costco Wholesale Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Costco Wholesale Corp'),
634044,
5677326,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'PepsiCo Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'PepsiCo Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'PepsiCo Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'PepsiCo Inc',
(SELECT id FROM companies WHERE name='PepsiCo Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='PepsiCo Inc'),
373245,
4470000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kimberly-Clark Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kimberly-Clark Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kimberly-Clark Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kimberly-Clark Corp',
(SELECT id FROM companies WHERE name='Kimberly-Clark Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Kimberly-Clark Corp'),
253652,
2300700,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Unilever NV (New York registered)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Unilever NV (New York registered)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Unilever NV (New York registered)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Unilever NV (New York registered)',
(SELECT id FROM companies WHERE name='Unilever NV (New York registered)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Unilever NV (New York registered)'),
149471,
3635000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Wal-Mart Stores Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Wal-Mart Stores Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Wal-Mart Stores Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Wal-Mart Stores Inc',
(SELECT id FROM companies WHERE name='Wal-Mart Stores Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Wal-Mart Stores Inc'),
114645,
1500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Coca-Cola Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Coca-Cola Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Coca-Cola Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Coca-Cola Co',
(SELECT id FROM companies WHERE name='Coca-Cola Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Coca-Cola Co'),
99743,
2580000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Colgate-Palmolive Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Colgate-Palmolive Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Colgate-Palmolive Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Colgate-Palmolive Co',
(SELECT id FROM companies WHERE name='Colgate-Palmolive Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Colgate-Palmolive Co'),
90818,
1400000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Royal Dutch Shell PLC Class B (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Royal Dutch Shell PLC Class B (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Royal Dutch Shell PLC Class B (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Royal Dutch Shell PLC Class B (ADR)',
(SELECT id FROM companies WHERE name='Royal Dutch Shell PLC Class B (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class B (ADR)'),
715331,
9158000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Chevron Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Chevron Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Chevron Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Chevron Corp',
(SELECT id FROM companies WHERE name='Chevron Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Chevron Corp'),
691700,
5817000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Enbridge Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Enbridge Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Enbridge Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Enbridge Inc',
(SELECT id FROM companies WHERE name='Enbridge Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Enbridge Inc'),
468525,
10295000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Occidental Petroleum Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Occidental Petroleum Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Occidental Petroleum Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Occidental Petroleum Corp',
(SELECT id FROM companies WHERE name='Occidental Petroleum Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Occidental Petroleum Corp'),
285870,
3000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ConocoPhillips' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ConocoPhillips'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ConocoPhillips' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ConocoPhillips',
(SELECT id FROM companies WHERE name='ConocoPhillips')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='ConocoPhillips'),
281400,
4000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Concho Resources Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Concho Resources Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Concho Resources Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Concho Resources Inc',
(SELECT id FROM companies WHERE name='Concho Resources Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Concho Resources Inc'),
267050,
2180000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Transocean Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Transocean Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Transocean Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Transocean Ltd',
(SELECT id FROM companies WHERE name='Transocean Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Transocean Ltd'),
252174,
6100000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Southwestern Energy Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Southwestern Energy Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Southwestern Energy Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Southwestern Energy Co',
(SELECT id FROM companies WHERE name='Southwestern Energy Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Southwestern Energy Co'),
202214,
4395000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Baker Hughes Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Baker Hughes Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Baker Hughes Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Baker Hughes Inc',
(SELECT id FROM companies WHERE name='Baker Hughes Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Baker Hughes Inc'),
195060,
3000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kinder Morgan Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kinder Morgan Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kinder Morgan Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kinder Morgan Inc',
(SELECT id FROM companies WHERE name='Kinder Morgan Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Kinder Morgan Inc'),
195037,
6003000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CONSOL Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CONSOL Energy Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CONSOL Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CONSOL Energy Inc',
(SELECT id FROM companies WHERE name='CONSOL Energy Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='CONSOL Energy Inc'),
159800,
4000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Phillips' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Phillips'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Phillips' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Phillips',
(SELECT id FROM companies WHERE name='Phillips')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Phillips'),
120214,
1560000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Suncor Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Suncor Energy Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Suncor Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Suncor Energy Inc',
(SELECT id FROM companies WHERE name='Suncor Energy Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Suncor Energy Inc'),
69851,
2000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Petróleo Brasileiro SA — Petrobras ordinary nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Petróleo Brasileiro SA — Petrobras ordinary nominative (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Petróleo Brasileiro SA — Petrobras ordinary nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Petróleo Brasileiro SA — Petrobras ordinary nominative (ADR)',
(SELECT id FROM companies WHERE name='Petróleo Brasileiro SA — Petrobras ordinary nominative (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Petróleo Brasileiro SA — Petrobras ordinary nominative (ADR)'),
65750,
5000000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'TOTAL SA (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'TOTAL SA (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'TOTAL SA (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'TOTAL SA (ADR)',
(SELECT id FROM companies WHERE name='TOTAL SA (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='TOTAL SA (ADR)'),
52480,
800000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Dow Chemical Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Dow Chemical Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Dow Chemical Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Dow Chemical Co',
(SELECT id FROM companies WHERE name='Dow Chemical Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Dow Chemical Co'),
630698,
12980000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'EI du Pont de Nemours and Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'EI du Pont de Nemours and Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'EI du Pont de Nemours and Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'EI du Pont de Nemours and Co',
(SELECT id FROM companies WHERE name='EI du Pont de Nemours and Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='EI du Pont de Nemours and Co'),
452925,
6750000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Mosaic Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Mosaic Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Mosaic Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Mosaic Co',
(SELECT id FROM companies WHERE name='Mosaic Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Mosaic Co'),
375250,
7505000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nucor Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nucor Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nucor Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nucor Corp',
(SELECT id FROM companies WHERE name='Nucor Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Nucor Corp'),
227430,
4500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Monsanto Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Monsanto Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Monsanto Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Monsanto Co',
(SELECT id FROM companies WHERE name='Monsanto Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Monsanto Co'),
204786,
1800000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Potash Corp of Saskatchewan Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Potash Corp of Saskatchewan Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Potash Corp of Saskatchewan Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Potash Corp of Saskatchewan Inc',
(SELECT id FROM companies WHERE name='Potash Corp of Saskatchewan Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Potash Corp of Saskatchewan Inc'),
199210,
5500000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cliffs Natural Resources Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cliffs Natural Resources Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cliffs Natural Resources Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cliffs Natural Resources Inc',
(SELECT id FROM companies WHERE name='Cliffs Natural Resources Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Cliffs Natural Resources Inc'),
40777,
1993000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'PG&E Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'PG&E Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'PG&E Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'PG&E Corp',
(SELECT id FROM companies WHERE name='PG&E Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='PG&E Corp'),
294192,
6810000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Duke Energy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Duke Energy Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Duke Energy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Duke Energy Corp',
(SELECT id FROM companies WHERE name='Duke Energy Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Duke Energy Corp'),
120599,
1693333,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Exelon Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Exelon Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Exelon Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Exelon Corp',
(SELECT id FROM companies WHERE name='Exelon Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Exelon Corp'),
109070,
3250000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'FirstEnergy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'FirstEnergy Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'FirstEnergy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'FirstEnergy Corp',
(SELECT id FROM companies WHERE name='FirstEnergy Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='FirstEnergy Corp'),
79736,
2343100,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AT&T Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AT&T Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AT&T Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AT&T Inc',
(SELECT id FROM companies WHERE name='AT&T Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='AT&T Inc'),
163777,
4670000,
to_date(31032014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Verizon Communications Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Verizon Communications Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Verizon Communications Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Verizon Communications Inc',
(SELECT id FROM companies WHERE name='Verizon Communications Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='americanbalanced'),
(SELECT id FROM assets WHERE asset_name='Verizon Communications Inc'),
76112,
1600000,
to_date(31032014, 'ddmmyyyy')
)
;

