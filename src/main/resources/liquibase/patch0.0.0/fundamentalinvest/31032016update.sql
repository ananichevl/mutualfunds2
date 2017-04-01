-- liquibase formatted sql
-- changeset mkp:add-records-31032016-01

MERGE INTO funds f
USING ( SELECT 1 FROM dual ) d
ON ( f.name = 'fundamentalinvest' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (  funds_seq.nextval,
'fundamentalinvest'
)
;

-- changeset mkp:add-records-31032016-02
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Microsoft Corp'),
3133805,
56741000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Broadcom Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Broadcom Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Broadcom Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Broadcom Ltd',
(SELECT id FROM companies WHERE name='Broadcom Ltd')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Broadcom Ltd'),
1986427,
12857132,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Taiwan Semiconductor Manufacturing Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Taiwan Semiconductor Manufacturing Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Taiwan Semiconductor Manufacturing Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Taiwan Semiconductor Manufacturing Co Ltd',
(SELECT id FROM companies WHERE name='Taiwan Semiconductor Manufacturing Co Ltd')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Taiwan Semiconductor Manufacturing Co Ltd'),
957936,
190310000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Taiwan Semiconductor Manufacturing Co Ltd (ADR)'),
151971,
5800423,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Texas Instruments Inc'),
984770,
17150300,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Apple Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Apple Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Apple Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Apple Inc',
(SELECT id FROM companies WHERE name='Apple Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Apple Inc'),
929140,
8525000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Alphabet Inc Class C' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Alphabet Inc Class C'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Alphabet Inc Class C' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Alphabet Inc Class C',
(SELECT id FROM companies WHERE name='Alphabet Inc Class C')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Alphabet Inc Class C'),
561929,
754317,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Alphabet Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Alphabet Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Alphabet Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Alphabet Inc Class A',
(SELECT id FROM companies WHERE name='Alphabet Inc Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Alphabet Inc Class A'),
337812,
442800,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='ASML Holding NV'),
521169,
5130030,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='ASML Holding NV (New York registered)'),
315325,
3141000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Intel Corp'),
830006,
25657073,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Visa Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Visa Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Visa Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Visa Inc Class A',
(SELECT id FROM companies WHERE name='Visa Inc Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Visa Inc Class A'),
592720,
7750000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Intuit Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Intuit Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Intuit Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Intuit Inc',
(SELECT id FROM companies WHERE name='Intuit Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Intuit Inc'),
434762,
4180000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Amphenol Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Amphenol Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Amphenol Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Amphenol Corp Class A',
(SELECT id FROM companies WHERE name='Amphenol Corp Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Amphenol Corp Class A'),
390285,
6750000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Baidu Inc Class A (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Baidu Inc Class A (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Baidu Inc Class A (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Baidu Inc Class A (ADR)',
(SELECT id FROM companies WHERE name='Baidu Inc Class A (ADR)')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Baidu Inc Class A (ADR)'),
360763,
1890000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'International Business Machines Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'International Business Machines Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'International Business Machines Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'International Business Machines Corp',
(SELECT id FROM companies WHERE name='International Business Machines Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='International Business Machines Corp'),
302900,
2000000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Analog Devices Inc'),
295891,
4999000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MasterCard Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MasterCard Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MasterCard Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MasterCard Inc Class A',
(SELECT id FROM companies WHERE name='MasterCard Inc Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='MasterCard Inc Class A'),
236250,
2500000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Murata Manufacturing Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Murata Manufacturing Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Murata Manufacturing Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Murata Manufacturing Co Ltd',
(SELECT id FROM companies WHERE name='Murata Manufacturing Co Ltd')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Murata Manufacturing Co Ltd'),
154335,
1280000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='TE Connectivity Ltd'),
121054,
1955000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'KLA-Tencor Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'KLA-Tencor Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'KLA-Tencor Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'KLA-Tencor Corp',
(SELECT id FROM companies WHERE name='KLA-Tencor Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='KLA-Tencor Corp'),
60078,
825140,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Facebook Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Facebook Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Facebook Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Facebook Inc Class A',
(SELECT id FROM companies WHERE name='Facebook Inc Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Facebook Inc Class A'),
14833,
130000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Amazoncom Inc'),
2801862,
4719800,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Home Depot Inc'),
1882697,
14110000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Comcast Corp Class A'),
1793859,
29369000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'McDonald’s Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'McDonald’s Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'McDonald’s Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'McDonald’s Corp',
(SELECT id FROM companies WHERE name='McDonald’s Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='McDonald’s Corp'),
922491,
7340000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Twenty-First Century Fox Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Twenty-First Century Fox Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Twenty-First Century Fox Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Twenty-First Century Fox Inc Class A',
(SELECT id FROM companies WHERE name='Twenty-First Century Fox Inc Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Twenty-First Century Fox Inc Class A'),
644725,
23125000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Time Warner Inc'),
546302,
7530000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Walt Disney Co'),
535281,
5390000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Las Vegas Sands Corp'),
444448,
8600000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Expedia Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Expedia Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Expedia Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Expedia Inc',
(SELECT id FROM companies WHERE name='Expedia Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Expedia Inc'),
419096,
3887000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Target Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Target Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Target Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Target Corp',
(SELECT id FROM companies WHERE name='Target Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Target Corp'),
362032,
4400000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Newell Rubbermaid Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Newell Rubbermaid Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Newell Rubbermaid Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Newell Rubbermaid Inc',
(SELECT id FROM companies WHERE name='Newell Rubbermaid Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Newell Rubbermaid Inc'),
280577,
6335000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='CBS Corp Class B'),
246803,
4480000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Starbucks Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Starbucks Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Starbucks Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Starbucks Corp',
(SELECT id FROM companies WHERE name='Starbucks Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Starbucks Corp'),
238800,
4000000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Macy’s Inc'),
238086,
5400000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Viacom Inc Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Viacom Inc Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Viacom Inc Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Viacom Inc Class B',
(SELECT id FROM companies WHERE name='Viacom Inc Class B')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Viacom Inc Class B'),
227040,
5500000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Johnson Controls Inc'),
210438,
5400000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Charter Communications Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Charter Communications Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Charter Communications Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Charter Communications Inc Class A',
(SELECT id FROM companies WHERE name='Charter Communications Inc Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Charter Communications Inc Class A'),
169636,
838000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Priceline Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Priceline Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Priceline Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Priceline Group Inc',
(SELECT id FROM companies WHERE name='Priceline Group Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Priceline Group Inc'),
154675,
120000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Liberty Global PLC Class C' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Liberty Global PLC Class C'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Liberty Global PLC Class C' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Liberty Global PLC Class C',
(SELECT id FROM companies WHERE name='Liberty Global PLC Class C')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Liberty Global PLC Class C'),
88398,
2353511,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Liberty Global PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Liberty Global PLC Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Liberty Global PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Liberty Global PLC Class A',
(SELECT id FROM companies WHERE name='Liberty Global PLC Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Liberty Global PLC Class A'),
33252,
863679,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='NIKE Inc Class B'),
44246,
719800,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ralph Lauren Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ralph Lauren Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ralph Lauren Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ralph Lauren Corp Class A',
(SELECT id FROM companies WHERE name='Ralph Lauren Corp Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Ralph Lauren Corp Class A'),
35616,
370000,
to_date(31032016, 'ddmmyyyy')
)
;

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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Wells Fargo & Co'),
1175148,
24300000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='JPMorgan Chase & Co'),
1125180,
19000000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Berkshire Hathaway Inc Class A'),
987206,
4625,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Capital One Financial Corp'),
638484,
9212000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CME Group Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CME Group Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CME Group Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CME Group Inc Class A',
(SELECT id FROM companies WHERE name='CME Group Inc Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='CME Group Inc Class A'),
611977,
6371437,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='SunTrust Banks Inc'),
537736,
14903987,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Chubb Corp'),
518303,
4350000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Goldman Sachs Group Inc'),
485005,
3089600,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='BlackRock Inc'),
464231,
1363100,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Citigroup Inc'),
446725,
10700000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Legal & General Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Legal & General Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Legal & General Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Legal & General Group PLC',
(SELECT id FROM companies WHERE name='Legal & General Group PLC')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Legal & General Group PLC'),
370860,
109784921,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Crown Castle International Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Crown Castle International Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Crown Castle International Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Crown Castle International Corp',
(SELECT id FROM companies WHERE name='Crown Castle International Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Crown Castle International Corp'),
307684,
3557039,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Discover Financial Services' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Discover Financial Services'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Discover Financial Services' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Discover Financial Services',
(SELECT id FROM companies WHERE name='Discover Financial Services')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Discover Financial Services'),
291772,
5730000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Weyerhaeuser Co'),
278823,
9000107,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'American International Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'American International Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'American International Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'American International Group Inc',
(SELECT id FROM companies WHERE name='American International Group Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='American International Group Inc'),
252235,
4666700,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'PNC Financial Services Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'PNC Financial Services Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'PNC Financial Services Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'PNC Financial Services Group Inc',
(SELECT id FROM companies WHERE name='PNC Financial Services Group Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='PNC Financial Services Group Inc'),
219882,
2600000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CNO Financial Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CNO Financial Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CNO Financial Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CNO Financial Group Inc',
(SELECT id FROM companies WHERE name='CNO Financial Group Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='CNO Financial Group Inc'),
213248,
11900000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='American Tower Corp'),
204740,
2000000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Svenska Handelsbanken AB Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Svenska Handelsbanken AB Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Svenska Handelsbanken AB Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Svenska Handelsbanken AB Class A',
(SELECT id FROM companies WHERE name='Svenska Handelsbanken AB Class A')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Svenska Handelsbanken AB Class A'),
145822,
11460000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Equinix Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Equinix Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Equinix Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Equinix Inc',
(SELECT id FROM companies WHERE name='Equinix Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Equinix Inc'),
127381,
385174,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Aegon NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Aegon NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Aegon NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Aegon NV',
(SELECT id FROM companies WHERE name='Aegon NV')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Aegon NV'),
122540,
22277585,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Iron Mountain Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Iron Mountain Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Iron Mountain Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Iron Mountain Inc',
(SELECT id FROM companies WHERE name='Iron Mountain Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Iron Mountain Inc'),
68370,
2016229,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'HDFC Bank Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'HDFC Bank Ltd (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'HDFC Bank Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'HDFC Bank Ltd (ADR)',
(SELECT id FROM companies WHERE name='HDFC Bank Ltd (ADR)')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='HDFC Bank Ltd (ADR)'),
25530,
414250,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Arch Capital Group Ltd'),
12087,
170000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Philip Morris International Inc'),
2603349,
26535000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Coca-Cola Co'),
1080191,
23285000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Procter & Gamble Co'),
845735,
10275000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kroger Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kroger Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kroger Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kroger Co',
(SELECT id FROM companies WHERE name='Kroger Co')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Kroger Co'),
702232,
18359000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Reynolds American Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Reynolds American Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Reynolds American Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Reynolds American Inc',
(SELECT id FROM companies WHERE name='Reynolds American Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Reynolds American Inc'),
644790,
12816340,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Walgreens Boots Alliance Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Walgreens Boots Alliance Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Walgreens Boots Alliance Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Walgreens Boots Alliance Inc',
(SELECT id FROM companies WHERE name='Walgreens Boots Alliance Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Walgreens Boots Alliance Inc'),
493310,
5856000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kraft Heinz Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kraft Heinz Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kraft Heinz Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kraft Heinz Co',
(SELECT id FROM companies WHERE name='Kraft Heinz Co')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Kraft Heinz Co'),
384944,
4900000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Altria Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Altria Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Altria Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Altria Group Inc',
(SELECT id FROM companies WHERE name='Altria Group Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Altria Group Inc'),
360295,
5750000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'British American Tobacco PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'British American Tobacco PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'British American Tobacco PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'British American Tobacco PLC',
(SELECT id FROM companies WHERE name='British American Tobacco PLC')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='British American Tobacco PLC'),
346875,
5905000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Campbell Soup Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Campbell Soup Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Campbell Soup Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Campbell Soup Co',
(SELECT id FROM companies WHERE name='Campbell Soup Co')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Campbell Soup Co'),
318950,
5000000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CVS Health Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CVS Health Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CVS Health Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CVS Health Corp',
(SELECT id FROM companies WHERE name='CVS Health Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='CVS Health Corp'),
240654,
2320000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Diageo PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Diageo PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Diageo PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Diageo PLC',
(SELECT id FROM companies WHERE name='Diageo PLC')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Diageo PLC'),
189161,
7000000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Costco Wholesale Corp'),
163095,
1035000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Pinnacle Foods Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Pinnacle Foods Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Pinnacle Foods Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Pinnacle Foods Inc',
(SELECT id FROM companies WHERE name='Pinnacle Foods Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Pinnacle Foods Inc'),
111253,
2490000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Coca-Cola Enterprises Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Coca-Cola Enterprises Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Coca-Cola Enterprises Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Coca-Cola Enterprises Inc',
(SELECT id FROM companies WHERE name='Coca-Cola Enterprises Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Coca-Cola Enterprises Inc'),
109091,
2150000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Medtronic PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Medtronic PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Medtronic PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Medtronic PLC',
(SELECT id FROM companies WHERE name='Medtronic PLC')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Medtronic PLC'),
952875,
12705000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Merck & Co Inc'),
937036,
17710000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='UnitedHealth Group Inc'),
709143,
5501500,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Boston Scientific Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Boston Scientific Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Boston Scientific Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Boston Scientific Corp',
(SELECT id FROM companies WHERE name='Boston Scientific Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Boston Scientific Corp'),
594396,
31600000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Express Scripts Holding Co'),
539652,
7856333,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Bristol-Myers Squibb Co'),
495070,
7750000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Aetna Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Aetna Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Aetna Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Aetna Inc',
(SELECT id FROM companies WHERE name='Aetna Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Aetna Inc'),
476589,
4242000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Vertex Pharmaceuticals Inc'),
468800,
5897600,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Thermo Fisher Scientific Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Thermo Fisher Scientific Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Thermo Fisher Scientific Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Thermo Fisher Scientific Inc',
(SELECT id FROM companies WHERE name='Thermo Fisher Scientific Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Thermo Fisher Scientific Inc'),
438929,
3100000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Regeneron Pharmaceuticals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Regeneron Pharmaceuticals Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Regeneron Pharmaceuticals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Regeneron Pharmaceuticals Inc',
(SELECT id FROM companies WHERE name='Regeneron Pharmaceuticals Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Regeneron Pharmaceuticals Inc'),
350203,
971600,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Gilead Sciences Inc'),
314050,
3418790,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Pfizer Inc'),
253867,
8565000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Novartis AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Novartis AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Novartis AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Novartis AG',
(SELECT id FROM companies WHERE name='Novartis AG')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Novartis AG'),
247906,
3420000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Johnson & Johnson'),
227220,
2100000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Humana Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Humana Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Humana Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Humana Inc',
(SELECT id FROM companies WHERE name='Humana Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Humana Inc'),
217710,
1190000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Baxalta Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Baxalta Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Baxalta Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Baxalta Inc',
(SELECT id FROM companies WHERE name='Baxalta Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Baxalta Inc'),
151571,
3751755,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AstraZeneca PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AstraZeneca PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AstraZeneca PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AstraZeneca PLC',
(SELECT id FROM companies WHERE name='AstraZeneca PLC')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='AstraZeneca PLC'),
146290,
2610000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hologic Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hologic Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hologic Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hologic Inc',
(SELECT id FROM companies WHERE name='Hologic Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Hologic Inc'),
122992,
3565000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Abbott Laboratories' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Abbott Laboratories'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Abbott Laboratories' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Abbott Laboratories',
(SELECT id FROM companies WHERE name='Abbott Laboratories')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Abbott Laboratories'),
69303,
1656771,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='General Electric Co'),
1329776,
41830000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Boeing Co'),
1129766,
8900000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Lockheed Martin Corp'),
654134,
2953200,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Parker-Hannifin Corp'),
505414,
4550000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Union Pacific Corp'),
500369,
6290000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Rockwell Automation' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Rockwell Automation'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Rockwell Automation' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Rockwell Automation',
(SELECT id FROM companies WHERE name='Rockwell Automation')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Rockwell Automation'),
398125,
3500000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Caterpillar Inc'),
327208,
4275000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Northrop Grumman Corp'),
324556,
1640000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Deere & Co'),
307960,
4000000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'TransDigm Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'TransDigm Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'TransDigm Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'TransDigm Group Inc',
(SELECT id FROM companies WHERE name='TransDigm Group Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='TransDigm Group Inc'),
297900,
1352000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Honeywell International Inc'),
268920,
2400000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Republic Services Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Republic Services Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Republic Services Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Republic Services Inc',
(SELECT id FROM companies WHERE name='Republic Services Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Republic Services Inc'),
166775,
3500000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Norfolk Southern Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Norfolk Southern Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Norfolk Southern Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Norfolk Southern Corp',
(SELECT id FROM companies WHERE name='Norfolk Southern Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Norfolk Southern Corp'),
161055,
1934600,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Grafton Group PLC units' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Grafton Group PLC units'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Grafton Group PLC units' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Grafton Group PLC units',
(SELECT id FROM companies WHERE name='Grafton Group PLC units')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Grafton Group PLC units'),
155930,
15037000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ingersoll-Rand PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ingersoll-Rand PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ingersoll-Rand PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ingersoll-Rand PLC',
(SELECT id FROM companies WHERE name='Ingersoll-Rand PLC')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Ingersoll-Rand PLC'),
155025,
2500000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ryanair Holdings PLC (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ryanair Holdings PLC (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ryanair Holdings PLC (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ryanair Holdings PLC (ADR)',
(SELECT id FROM companies WHERE name='Ryanair Holdings PLC (ADR)')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Ryanair Holdings PLC (ADR)'),
154798,
1803750,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Fastenal Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Fastenal Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Fastenal Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Fastenal Co',
(SELECT id FROM companies WHERE name='Fastenal Co')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Fastenal Co'),
151900,
3100000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'KAR Auction Services Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'KAR Auction Services Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'KAR Auction Services Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'KAR Auction Services Inc',
(SELECT id FROM companies WHERE name='KAR Auction Services Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='KAR Auction Services Inc'),
133490,
3500000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Cummins Inc'),
111039,
1010000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MTU Aero Engines AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MTU Aero Engines AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MTU Aero Engines AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MTU Aero Engines AG',
(SELECT id FROM companies WHERE name='MTU Aero Engines AG')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='MTU Aero Engines AG'),
107432,
1120089,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Waste Management Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Waste Management Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Waste Management Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Waste Management Inc',
(SELECT id FROM companies WHERE name='Waste Management Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Waste Management Inc'),
82600,
1400000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Meggitt PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Meggitt PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Meggitt PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Meggitt PLC',
(SELECT id FROM companies WHERE name='Meggitt PLC')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Meggitt PLC'),
65540,
11223014,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Airbus Group SE non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Airbus Group SE non-registered shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Airbus Group SE non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Airbus Group SE non-registered shares',
(SELECT id FROM companies WHERE name='Airbus Group SE non-registered shares')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Airbus Group SE non-registered shares'),
64736,
975000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Masco Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Masco Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Masco Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Masco Corp',
(SELECT id FROM companies WHERE name='Masco Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Masco Corp'),
40221,
1278878,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='ConocoPhillips'),
592372,
14710000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Schlumberger Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Schlumberger Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Schlumberger Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Schlumberger Ltd',
(SELECT id FROM companies WHERE name='Schlumberger Ltd')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Schlumberger Ltd'),
570455,
7734979,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class B (ADR)'),
317956,
6463834,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Royal Dutch Shell PLC Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Royal Dutch Shell PLC Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Royal Dutch Shell PLC Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Royal Dutch Shell PLC Class B',
(SELECT id FROM companies WHERE name='Royal Dutch Shell PLC Class B')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class B'),
232656,
9528720,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Royal Dutch Shell PLC Class A (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Royal Dutch Shell PLC Class A (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Royal Dutch Shell PLC Class A (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Royal Dutch Shell PLC Class A (ADR)',
(SELECT id FROM companies WHERE name='Royal Dutch Shell PLC Class A (ADR)')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class A (ADR)'),
4331,
89400,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Chevron Corp'),
546273,
5726137,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Enbridge Inc (CAD denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Enbridge Inc (CAD denominated)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Enbridge Inc (CAD denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Enbridge Inc (CAD denominated)',
(SELECT id FROM companies WHERE name='Enbridge Inc (CAD denominated)')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Enbridge Inc (CAD denominated)'),
461826,
11863065,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Concho Resources Inc'),
386983,
3830000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'EOG Resources Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'EOG Resources Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'EOG Resources Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'EOG Resources Inc',
(SELECT id FROM companies WHERE name='EOG Resources Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='EOG Resources Inc'),
318989,
4395000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Suncor Energy Inc'),
306238,
10996034,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Helmerich & Payne Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Helmerich & Payne Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Helmerich & Payne Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Helmerich & Payne Inc',
(SELECT id FROM companies WHERE name='Helmerich & Payne Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Helmerich & Payne Inc'),
258368,
4400000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BP PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BP PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BP PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BP PLC',
(SELECT id FROM companies WHERE name='BP PLC')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='BP PLC'),
231335,
46000000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cimarex Energy Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cimarex Energy Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cimarex Energy Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cimarex Energy Co',
(SELECT id FROM companies WHERE name='Cimarex Energy Co')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Cimarex Energy Co'),
230044,
2365000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Peyto Exploration & Development Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Peyto Exploration & Development Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Peyto Exploration & Development Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Peyto Exploration & Development Corp',
(SELECT id FROM companies WHERE name='Peyto Exploration & Development Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Peyto Exploration & Development Corp'),
229836,
10332287,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Baker Hughes Inc'),
197235,
4500000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Murphy Oil Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Murphy Oil Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Murphy Oil Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Murphy Oil Corp',
(SELECT id FROM companies WHERE name='Murphy Oil Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Murphy Oil Corp'),
158241,
6281900,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Noble Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Noble Energy Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Noble Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Noble Energy Inc',
(SELECT id FROM companies WHERE name='Noble Energy Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Noble Energy Inc'),
149084,
4746400,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Phillips'),
148025,
1709488,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='TOTAL SA (ADR)'),
89081,
1961268,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'TOTAL SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'TOTAL SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'TOTAL SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'TOTAL SA',
(SELECT id FROM companies WHERE name='TOTAL SA')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='TOTAL SA'),
48563,
1065346,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cameron International Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cameron International Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cameron International Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cameron International Corp',
(SELECT id FROM companies WHERE name='Cameron International Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Cameron International Corp'),
127395,
1900000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Southwestern Energy Co'),
64560,
8000000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Halliburton Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Halliburton Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Halliburton Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Halliburton Co',
(SELECT id FROM companies WHERE name='Halliburton Co')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Halliburton Co'),
63046,
1765000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='CONSOL Energy Inc'),
18064,
1600000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='EI du Pont de Nemours and Co'),
827499,
13068525,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Praxair Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Praxair Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Praxair Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Praxair Inc',
(SELECT id FROM companies WHERE name='Praxair Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Praxair Inc'),
818890,
7155000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'FMC Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'FMC Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'FMC Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'FMC Corp',
(SELECT id FROM companies WHERE name='FMC Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='FMC Corp'),
272820,
6758000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'LyondellBasell Industries NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'LyondellBasell Industries NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'LyondellBasell Industries NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'LyondellBasell Industries NV',
(SELECT id FROM companies WHERE name='LyondellBasell Industries NV')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='LyondellBasell Industries NV'),
225931,
2640000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'HudBay Minerals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'HudBay Minerals Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'HudBay Minerals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'HudBay Minerals Inc',
(SELECT id FROM companies WHERE name='HudBay Minerals Inc')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='HudBay Minerals Inc'),
24721,
6744900,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Verizon Communications Inc'),
251581,
4652004,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SoftBank Group Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SoftBank Group Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SoftBank Group Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SoftBank Group Corp',
(SELECT id FROM companies WHERE name='SoftBank Group Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='SoftBank Group Corp'),
178318,
3740000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='AT&T Inc'),
141012,
3600000,
to_date(31032016, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Frontier Communications Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Frontier Communications Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Frontier Communications Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Frontier Communications Corp',
(SELECT id FROM companies WHERE name='Frontier Communications Corp')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='Frontier Communications Corp'),
13416,
2400000,
to_date(31032016, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='fundamentalinvest'),
(SELECT id FROM assets WHERE asset_name='PG&E Corp'),
149300,
2500000,
to_date(31032016, 'ddmmyyyy')
)
;

