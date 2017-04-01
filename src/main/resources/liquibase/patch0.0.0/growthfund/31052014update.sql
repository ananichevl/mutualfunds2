-- liquibase formatted sql
-- changeset mkp:add-records-31052014-01

MERGE INTO funds f
USING ( SELECT 1 FROM dual ) d
ON ( f.name = 'growthfund' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (  funds_seq.nextval,
'growthfund'
)
;

-- changeset mkp:add-records-31052014-02
MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Google Inc Class C' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Google Inc Class C'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Google Inc Class C' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Google Inc Class C',
(SELECT id FROM companies WHERE name='Google Inc Class C')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Google Inc Class C'),
2699827,
4812697,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Google Inc Class A'),
2577225,
4508397,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Oracle Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Oracle Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Oracle Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Oracle Corp',
(SELECT id FROM companies WHERE name='Oracle Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Oracle Corp'),
1886278,
44890000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Apple Inc'),
1736319,
2743000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Microsoft Corp'),
1637395,
39995000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Avago Technologies Ltd'),
1222720,
17301820,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='ASML Holding NV (New York registered)'),
752913,
8767040,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='ASML Holding NV'),
438512,
5109442,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Texas Instruments Inc'),
977842,
20814000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='salesforcecom inc'),
921914,
17516901,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Accenture PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Accenture PLC Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Accenture PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Accenture PLC Class A',
(SELECT id FROM companies WHERE name='Accenture PLC Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Accenture PLC Class A'),
845451,
10380000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Visa Inc Class A'),
835259,
3888000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Intuit Inc'),
816291,
10295000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Murata Manufacturing Co Ltd'),
747634,
8826300,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Adobe Systems Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Adobe Systems Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Adobe Systems Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Adobe Systems Inc',
(SELECT id FROM companies WHERE name='Adobe Systems Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Adobe Systems Inc'),
559743,
8672800,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'LinkedIn Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'LinkedIn Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'LinkedIn Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'LinkedIn Corp Class A',
(SELECT id FROM companies WHERE name='LinkedIn Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='LinkedIn Corp Class A'),
558618,
3489400,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Broadcom Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Broadcom Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Broadcom Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Broadcom Corp Class A',
(SELECT id FROM companies WHERE name='Broadcom Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Broadcom Corp Class A'),
548164,
17200000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Samsung Electronics Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Samsung Electronics Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Samsung Electronics Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Samsung Electronics Co Ltd',
(SELECT id FROM companies WHERE name='Samsung Electronics Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Samsung Electronics Co Ltd'),
528713,
373800,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Motorola Solutions Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Motorola Solutions Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Motorola Solutions Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Motorola Solutions Inc',
(SELECT id FROM companies WHERE name='Motorola Solutions Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Motorola Solutions Inc'),
505650,
7500000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Cisco Systems Inc'),
430850,
17500000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'EMC Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'EMC Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'EMC Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'EMC Corp',
(SELECT id FROM companies WHERE name='EMC Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='EMC Corp'),
428147,
16120000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Taiwan Semiconductor Manufacturing Co Ltd'),
320897,
80521000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Taiwan Semiconductor Manufacturing Co Ltd (ADR)'),
93651,
4555000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nintendo Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nintendo Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nintendo Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nintendo Co Ltd',
(SELECT id FROM companies WHERE name='Nintendo Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Nintendo Co Ltd'),
354365,
3064940,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cognizant Technology Solutions Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cognizant Technology Solutions Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cognizant Technology Solutions Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cognizant Technology Solutions Corp Class A',
(SELECT id FROM companies WHERE name='Cognizant Technology Solutions Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Cognizant Technology Solutions Corp Class A'),
304396,
6262000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='KLA-Tencor Corp'),
294840,
4500000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Baidu Inc Class A (ADR)'),
285520,
1720000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'eBay Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'eBay Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'eBay Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'eBay Inc',
(SELECT id FROM companies WHERE name='eBay Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='eBay Inc'),
266287,
5249100,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Palo Alto Networks Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Palo Alto Networks Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Palo Alto Networks Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Palo Alto Networks Inc',
(SELECT id FROM companies WHERE name='Palo Alto Networks Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Palo Alto Networks Inc'),
260192,
3473400,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Automatic Data Processing Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Automatic Data Processing Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Automatic Data Processing Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Automatic Data Processing Inc',
(SELECT id FROM companies WHERE name='Automatic Data Processing Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Automatic Data Processing Inc'),
257765,
3235000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Altera Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Altera Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Altera Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Altera Corp',
(SELECT id FROM companies WHERE name='Altera Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Altera Corp'),
256758,
7750000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Amphenol Corp Class A'),
250421,
2614000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Concur Technologies Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Concur Technologies Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Concur Technologies Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Concur Technologies Inc',
(SELECT id FROM companies WHERE name='Concur Technologies Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Concur Technologies Inc'),
239036,
2800000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='VeriSign Inc'),
237630,
4745000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='TE Connectivity Ltd'),
212451,
3573000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Gemalto NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Gemalto NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Gemalto NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Gemalto NV',
(SELECT id FROM companies WHERE name='Gemalto NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Gemalto NV'),
203035,
1870000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='MasterCard Inc Class A'),
202593,
2650000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Facebook Inc Class A'),
189900,
3000000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MailRu Group Ltd (GDR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MailRu Group Ltd (GDR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MailRu Group Ltd (GDR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MailRu Group Ltd (GDR)',
(SELECT id FROM companies WHERE name='MailRu Group Ltd (GDR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='MailRu Group Ltd (GDR)'),
158828,
4665910,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MailRu Group Ltd (GDR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MailRu Group Ltd (GDR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MailRu Group Ltd (GDR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MailRu Group Ltd (GDR)',
(SELECT id FROM companies WHERE name='MailRu Group Ltd (GDR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='MailRu Group Ltd (GDR)'),
29291,
860490,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hexagon AB Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hexagon AB Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hexagon AB Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hexagon AB Class B',
(SELECT id FROM companies WHERE name='Hexagon AB Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Hexagon AB Class B'),
172561,
5491102,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'NetSuite Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'NetSuite Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'NetSuite Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'NetSuite Inc',
(SELECT id FROM companies WHERE name='NetSuite Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='NetSuite Inc'),
170870,
2122874,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hewlett-Packard Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hewlett-Packard Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hewlett-Packard Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hewlett-Packard Co',
(SELECT id FROM companies WHERE name='Hewlett-Packard Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Hewlett-Packard Co'),
167500,
5000000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Linear Technology Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Linear Technology Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Linear Technology Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Linear Technology Corp',
(SELECT id FROM companies WHERE name='Linear Technology Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Linear Technology Corp'),
151405,
3280000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Dolby Laboratories Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Dolby Laboratories Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Dolby Laboratories Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Dolby Laboratories Inc Class A',
(SELECT id FROM companies WHERE name='Dolby Laboratories Inc Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Dolby Laboratories Inc Class A'),
110081,
2650000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Rackspace Hosting Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Rackspace Hosting Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Rackspace Hosting Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Rackspace Hosting Inc',
(SELECT id FROM companies WHERE name='Rackspace Hosting Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Rackspace Hosting Inc'),
108813,
2982000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'National Instruments Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'National Instruments Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'National Instruments Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'National Instruments Corp',
(SELECT id FROM companies WHERE name='National Instruments Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='National Instruments Corp'),
89786,
3135000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ARM Holdings PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ARM Holdings PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ARM Holdings PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ARM Holdings PLC',
(SELECT id FROM companies WHERE name='ARM Holdings PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='ARM Holdings PLC'),
84422,
5474500,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Flextronics International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Flextronics International Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Flextronics International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Flextronics International Ltd',
(SELECT id FROM companies WHERE name='Flextronics International Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Flextronics International Ltd'),
84349,
8293916,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MercadoLibre Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MercadoLibre Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MercadoLibre Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MercadoLibre Inc',
(SELECT id FROM companies WHERE name='MercadoLibre Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='MercadoLibre Inc'),
82093,
965000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Autodesk Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Autodesk Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Autodesk Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Autodesk Inc',
(SELECT id FROM companies WHERE name='Autodesk Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Autodesk Inc'),
76722,
1465000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Analog Devices Inc'),
45832,
875000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Workday Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Workday Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Workday Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Workday Inc Class A',
(SELECT id FROM companies WHERE name='Workday Inc Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Workday Inc Class A'),
21552,
275000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ASM Pacific Technology Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ASM Pacific Technology Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ASM Pacific Technology Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ASM Pacific Technology Ltd',
(SELECT id FROM companies WHERE name='ASM Pacific Technology Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='ASM Pacific Technology Ltd'),
10586,
945000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Demandware Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Demandware Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Demandware Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Demandware Inc',
(SELECT id FROM companies WHERE name='Demandware Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Demandware Inc'),
8525,
140000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Guidewire Software Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Guidewire Software Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Guidewire Software Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Guidewire Software Inc',
(SELECT id FROM companies WHERE name='Guidewire Software Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Guidewire Software Inc'),
5665,
150000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Amazoncom Inc'),
5517194,
17652195,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Comcast Corp Class A'),
2104891,
40323578,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Comcast Corp Class A special nonvoting shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Comcast Corp Class A special nonvoting shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Comcast Corp Class A special nonvoting shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Comcast Corp Class A special nonvoting shares',
(SELECT id FROM companies WHERE name='Comcast Corp Class A special nonvoting shares')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Comcast Corp Class A special nonvoting shares'),
673920,
13000000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Home Depot Inc'),
2395363,
29856200,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='NIKE Inc Class B'),
1687532,
21941640,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Twenty-First Century Fox Inc Class A'),
1242615,
35092200,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MGM Resorts International' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MGM Resorts International'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MGM Resorts International' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MGM Resorts International',
(SELECT id FROM companies WHERE name='MGM Resorts International')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='MGM Resorts International'),
696836,
27061600,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Johnson Controls Inc'),
621910,
12860000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Netflix Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Netflix Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Netflix Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Netflix Inc',
(SELECT id FROM companies WHERE name='Netflix Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Netflix Inc'),
558040,
1335568,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'YUM! Brands Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'YUM! Brands Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'YUM! Brands Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'YUM! Brands Inc',
(SELECT id FROM companies WHERE name='YUM! Brands Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='YUM! Brands Inc'),
521842,
6750000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Time Warner Inc'),
520932,
7460000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Walt Disney Co'),
496079,
5905000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='DIRECTV'),
446699,
5418474,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='CBS Corp Class B'),
396406,
6650000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Toll Brothers Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Toll Brothers Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Toll Brothers Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Toll Brothers Inc',
(SELECT id FROM companies WHERE name='Toll Brothers Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Toll Brothers Inc'),
384957,
10628300,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Marriott International Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Marriott International Inc Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Marriott International Inc Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Marriott International Inc Class A',
(SELECT id FROM companies WHERE name='Marriott International Inc Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Marriott International Inc Class A'),
378535,
6143059,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AutoNation Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AutoNation Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AutoNation Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AutoNation Inc',
(SELECT id FROM companies WHERE name='AutoNation Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='AutoNation Inc'),
343020,
6000000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Priceline Group Inc'),
341394,
267000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Norwegian Cruise Line Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Norwegian Cruise Line Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Norwegian Cruise Line Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Norwegian Cruise Line Holdings Ltd',
(SELECT id FROM companies WHERE name='Norwegian Cruise Line Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Norwegian Cruise Line Holdings Ltd'),
307125,
9100000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Naspers Ltd Class N' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Naspers Ltd Class N'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Naspers Ltd Class N' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Naspers Ltd Class N',
(SELECT id FROM companies WHERE name='Naspers Ltd Class N')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Naspers Ltd Class N'),
305365,
2770000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Toyota Motor Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Toyota Motor Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Toyota Motor Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Toyota Motor Corp',
(SELECT id FROM companies WHERE name='Toyota Motor Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Toyota Motor Corp'),
301066,
5320000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Carnival Corp units' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Carnival Corp units'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Carnival Corp units' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Carnival Corp units',
(SELECT id FROM companies WHERE name='Carnival Corp units')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Carnival Corp units'),
299825,
7490000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tesla Motors Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tesla Motors Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tesla Motors Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tesla Motors Inc',
(SELECT id FROM companies WHERE name='Tesla Motors Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Tesla Motors Inc'),
274284,
1320135,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Lowe’s Companies Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Lowe’s Companies Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Lowe’s Companies Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Lowe’s Companies Inc',
(SELECT id FROM companies WHERE name='Lowe’s Companies Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Lowe’s Companies Inc'),
249524,
5300000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='General Motors Co'),
228491,
6607600,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BorgWarner Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BorgWarner Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BorgWarner Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BorgWarner Inc',
(SELECT id FROM companies WHERE name='BorgWarner Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='BorgWarner Inc'),
226404,
3600000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Viacom Inc Class B'),
205731,
2411000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Liberty Media Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Liberty Media Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Liberty Media Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Liberty Media Corp Class A',
(SELECT id FROM companies WHERE name='Liberty Media Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Liberty Media Corp Class A'),
198392,
1560543,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'lululemon athletica inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'lululemon athletica inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'lululemon athletica inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'lululemon athletica inc',
(SELECT id FROM companies WHERE name='lululemon athletica inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='lululemon athletica inc'),
195792,
4387000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Expedia Inc'),
194172,
2649000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'DR Horton Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'DR Horton Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'DR Horton Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'DR Horton Inc',
(SELECT id FROM companies WHERE name='DR Horton Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='DR Horton Inc'),
191690,
8095000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Wynn Resorts Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Wynn Resorts Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Wynn Resorts Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Wynn Resorts Ltd',
(SELECT id FROM companies WHERE name='Wynn Resorts Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Wynn Resorts Ltd'),
181354,
843623,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Ralph Lauren Corp Class A'),
170880,
1113371,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tiffany & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tiffany & Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tiffany & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tiffany & Co',
(SELECT id FROM companies WHERE name='Tiffany & Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Tiffany & Co'),
163032,
1640000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Galaxy Entertainment Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Galaxy Entertainment Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Galaxy Entertainment Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Galaxy Entertainment Group Ltd',
(SELECT id FROM companies WHERE name='Galaxy Entertainment Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Galaxy Entertainment Group Ltd'),
159810,
20000000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Las Vegas Sands Corp'),
158702,
2074000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Starbucks Corp'),
148581,
2028684,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Volkswagen AG nonvoting preferred' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Volkswagen AG nonvoting preferred'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Volkswagen AG nonvoting preferred' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Volkswagen AG nonvoting preferred',
(SELECT id FROM companies WHERE name='Volkswagen AG nonvoting preferred')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Volkswagen AG nonvoting preferred'),
134236,
505000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Liberty Global PLC Class A'),
130300,
2894280,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Lions Gate Entertainment Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Lions Gate Entertainment Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Lions Gate Entertainment Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Lions Gate Entertainment Corp',
(SELECT id FROM companies WHERE name='Lions Gate Entertainment Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Lions Gate Entertainment Corp'),
124969,
4782578,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Darden Restaurants Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Darden Restaurants Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Darden Restaurants Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Darden Restaurants Inc',
(SELECT id FROM companies WHERE name='Darden Restaurants Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Darden Restaurants Inc'),
122443,
2443000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Harley-Davidson Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Harley-Davidson Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Harley-Davidson Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Harley-Davidson Inc',
(SELECT id FROM companies WHERE name='Harley-Davidson Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Harley-Davidson Inc'),
112167,
1574500,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sands China Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sands China Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sands China Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sands China Ltd',
(SELECT id FROM companies WHERE name='Sands China Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Sands China Ltd'),
109313,
15000000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Daimler AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Daimler AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Daimler AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Daimler AG',
(SELECT id FROM companies WHERE name='Daimler AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Daimler AG'),
107648,
1133000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Five Below Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Five Below Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Five Below Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Five Below Inc',
(SELECT id FROM companies WHERE name='Five Below Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Five Below Inc'),
97740,
2700000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Renault SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Renault SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Renault SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Renault SA',
(SELECT id FROM companies WHERE name='Renault SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Renault SA'),
94139,
1000000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nordstrom Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nordstrom Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nordstrom Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nordstrom Inc',
(SELECT id FROM companies WHERE name='Nordstrom Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Nordstrom Inc'),
93195,
1369300,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Industria de Diseño Textil SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Industria de Diseño Textil SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Industria de Diseño Textil SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Industria de Diseño Textil SA',
(SELECT id FROM companies WHERE name='Industria de Diseño Textil SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Industria de Diseño Textil SA'),
77327,
532644,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Lennar Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Lennar Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Lennar Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Lennar Corp Class A',
(SELECT id FROM companies WHERE name='Lennar Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Lennar Corp Class A'),
73415,
1795000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Luxottica Group SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Luxottica Group SpA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Luxottica Group SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Luxottica Group SpA',
(SELECT id FROM companies WHERE name='Luxottica Group SpA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Luxottica Group SpA'),
73297,
1283300,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hyatt Hotels Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hyatt Hotels Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hyatt Hotels Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hyatt Hotels Corp Class A',
(SELECT id FROM companies WHERE name='Hyatt Hotels Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Hyatt Hotels Corp Class A'),
72169,
1180000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Swatch Group Ltd non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Swatch Group Ltd non-registered shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Swatch Group Ltd non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Swatch Group Ltd non-registered shares',
(SELECT id FROM companies WHERE name='Swatch Group Ltd non-registered shares')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Swatch Group Ltd non-registered shares'),
70821,
120000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Burberry Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Burberry Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Burberry Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Burberry Group PLC',
(SELECT id FROM companies WHERE name='Burberry Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Burberry Group PLC'),
70022,
2725000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Weight Watchers International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Weight Watchers International Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Weight Watchers International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Weight Watchers International Inc',
(SELECT id FROM companies WHERE name='Weight Watchers International Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Weight Watchers International Inc'),
41660,
2000000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hermès International' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hermès International'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hermès International' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hermès International',
(SELECT id FROM companies WHERE name='Hermès International')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Hermès International'),
10987,
31000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'TOD’S SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'TOD’S SpA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'TOD’S SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'TOD’S SpA',
(SELECT id FROM companies WHERE name='TOD’S SpA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='TOD’S SpA'),
9549,
70157,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Gilead Sciences Inc'),
4958459,
61057248,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='UnitedHealth Group Inc'),
1909902,
23984700,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Amgen Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Amgen Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Amgen Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Amgen Inc',
(SELECT id FROM companies WHERE name='Amgen Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Amgen Inc'),
1590909,
13715914,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Alexion Pharmaceuticals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Alexion Pharmaceuticals Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Alexion Pharmaceuticals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Alexion Pharmaceuticals Inc',
(SELECT id FROM companies WHERE name='Alexion Pharmaceuticals Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Alexion Pharmaceuticals Inc'),
1497888,
9006061,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Biogen Idec Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Biogen Idec Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Biogen Idec Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Biogen Idec Inc',
(SELECT id FROM companies WHERE name='Biogen Idec Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Biogen Idec Inc'),
1173685,
3675000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Regeneron Pharmaceuticals Inc'),
1073531,
3497300,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Express Scripts Holding Co'),
1063474,
14880000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Illumina Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Illumina Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Illumina Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Illumina Inc',
(SELECT id FROM companies WHERE name='Illumina Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Illumina Inc'),
907042,
5731701,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Vertex Pharmaceuticals Inc'),
759857,
10515600,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Edwards Lifesciences Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Edwards Lifesciences Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Edwards Lifesciences Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Edwards Lifesciences Corp',
(SELECT id FROM companies WHERE name='Edwards Lifesciences Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Edwards Lifesciences Corp'),
660838,
8138400,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'St Jude Medical Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'St Jude Medical Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'St Jude Medical Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'St Jude Medical Inc',
(SELECT id FROM companies WHERE name='St Jude Medical Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='St Jude Medical Inc'),
643483,
9915000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Boston Scientific Corp'),
634949,
49489400,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Stryker Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Stryker Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Stryker Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Stryker Corp',
(SELECT id FROM companies WHERE name='Stryker Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Stryker Corp'),
572705,
6778376,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Merck & Co Inc'),
556480,
9617700,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Thermo Fisher Scientific Inc'),
543994,
4653100,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Hologic Inc'),
418583,
17126960,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Humana Inc'),
412747,
3316305,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BioMarin Pharmaceutical Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BioMarin Pharmaceutical Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BioMarin Pharmaceutical Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BioMarin Pharmaceutical Inc',
(SELECT id FROM companies WHERE name='BioMarin Pharmaceutical Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='BioMarin Pharmaceutical Inc'),
412442,
7115973,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Endo International PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Endo International PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Endo International PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Endo International PLC',
(SELECT id FROM companies WHERE name='Endo International PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Endo International PLC'),
405540,
5745000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Grifols SA Class B (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Grifols SA Class B (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Grifols SA Class B (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Grifols SA Class B (ADR)',
(SELECT id FROM companies WHERE name='Grifols SA Class B (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Grifols SA Class B (ADR)'),
192617,
4628000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Grifols SA Class B non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Grifols SA Class B non-registered shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Grifols SA Class B non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Grifols SA Class B non-registered shares',
(SELECT id FROM companies WHERE name='Grifols SA Class B non-registered shares')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Grifols SA Class B non-registered shares'),
107171,
2586185,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Grifols SA Class A non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Grifols SA Class A non-registered shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Grifols SA Class A non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Grifols SA Class A non-registered shares',
(SELECT id FROM companies WHERE name='Grifols SA Class A non-registered shares')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Grifols SA Class A non-registered shares'),
66377,
1225000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'athenahealth Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'athenahealth Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'athenahealth Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'athenahealth Inc',
(SELECT id FROM companies WHERE name='athenahealth Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='athenahealth Inc'),
286352,
2256338,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Incyte Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Incyte Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Incyte Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Incyte Corp',
(SELECT id FROM companies WHERE name='Incyte Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Incyte Corp'),
251506,
5075800,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Baxter International Inc'),
209755,
2818910,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Allergan Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Allergan Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Allergan Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Allergan Inc',
(SELECT id FROM companies WHERE name='Allergan Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Allergan Inc'),
208906,
1247500,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Bristol-Myers Squibb Co'),
188763,
3795000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Aetna Inc'),
188353,
2428800,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Brookdale Senior Living Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Brookdale Senior Living Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Brookdale Senior Living Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Brookdale Senior Living Inc',
(SELECT id FROM companies WHERE name='Brookdale Senior Living Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Brookdale Senior Living Inc'),
160746,
4833000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Intercept Pharmaceuticals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Intercept Pharmaceuticals Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Intercept Pharmaceuticals Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Intercept Pharmaceuticals Inc',
(SELECT id FROM companies WHERE name='Intercept Pharmaceuticals Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Intercept Pharmaceuticals Inc'),
143575,
606800,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Pharmacyclics Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Pharmacyclics Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Pharmacyclics Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Pharmacyclics Inc',
(SELECT id FROM companies WHERE name='Pharmacyclics Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Pharmacyclics Inc'),
128974,
1451922,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ResMed Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ResMed Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ResMed Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ResMed Inc',
(SELECT id FROM companies WHERE name='ResMed Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='ResMed Inc'),
60573,
1210000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Celgene Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Celgene Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Celgene Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Celgene Corp',
(SELECT id FROM companies WHERE name='Celgene Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Celgene Corp'),
58151,
380000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'DaVita HealthCare Partners Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'DaVita HealthCare Partners Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'DaVita HealthCare Partners Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'DaVita HealthCare Partners Inc',
(SELECT id FROM companies WHERE name='DaVita HealthCare Partners Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='DaVita HealthCare Partners Inc'),
43766,
620000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Fresenius SE & Co KGaA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Fresenius SE & Co KGaA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Fresenius SE & Co KGaA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Fresenius SE & Co KGaA',
(SELECT id FROM companies WHERE name='Fresenius SE & Co KGaA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Fresenius SE & Co KGaA'),
28239,
189275,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Intuitive Surgical Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Intuitive Surgical Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Intuitive Surgical Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Intuitive Surgical Inc',
(SELECT id FROM companies WHERE name='Intuitive Surgical Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Intuitive Surgical Inc'),
18487,
50000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='EOG Resources Inc'),
2558032,
24178000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Noble Energy Inc'),
1140724,
15828000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Concho Resources Inc'),
1130647,
8578506,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Pioneer Natural Resources Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Pioneer Natural Resources Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Pioneer Natural Resources Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Pioneer Natural Resources Co',
(SELECT id FROM companies WHERE name='Pioneer Natural Resources Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Pioneer Natural Resources Co'),
1116559,
5312900,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Schlumberger Ltd'),
931158,
8950000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'FMC Technologies Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'FMC Technologies Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'FMC Technologies Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'FMC Technologies Inc',
(SELECT id FROM companies WHERE name='FMC Technologies Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='FMC Technologies Inc'),
881299,
15179100,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cheniere Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cheniere Energy Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cheniere Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cheniere Energy Inc',
(SELECT id FROM companies WHERE name='Cheniere Energy Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Cheniere Energy Inc'),
807737,
11859300,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Baker Hughes Inc'),
598010,
8480000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Suncor Energy Inc'),
569596,
14800220,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Canadian Natural Resources Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Canadian Natural Resources Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Canadian Natural Resources Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Canadian Natural Resources Ltd',
(SELECT id FROM companies WHERE name='Canadian Natural Resources Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Canadian Natural Resources Ltd'),
496122,
12190000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Chesapeake Energy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Chesapeake Energy Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Chesapeake Energy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Chesapeake Energy Corp',
(SELECT id FROM companies WHERE name='Chesapeake Energy Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Chesapeake Energy Corp'),
445734,
15520000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BG Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BG Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BG Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BG Group PLC',
(SELECT id FROM companies WHERE name='BG Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='BG Group PLC'),
396414,
19369000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='CONSOL Energy Inc'),
319570,
7235000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cabot Oil & Gas Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cabot Oil & Gas Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cabot Oil & Gas Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cabot Oil & Gas Corp',
(SELECT id FROM companies WHERE name='Cabot Oil & Gas Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Cabot Oil & Gas Corp'),
285644,
7882000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cobalt International Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cobalt International Energy Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cobalt International Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cobalt International Energy Inc',
(SELECT id FROM companies WHERE name='Cobalt International Energy Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Cobalt International Energy Inc'),
282642,
15286200,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Oil States International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Oil States International Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Oil States International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Oil States International Inc',
(SELECT id FROM companies WHERE name='Oil States International Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Oil States International Inc'),
233986,
2175000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Enbridge Inc'),
218936,
4606877,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Apache Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Apache Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Apache Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Apache Corp',
(SELECT id FROM companies WHERE name='Apache Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Apache Corp'),
214406,
2300000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class B (ADR)'),
198773,
2428800,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Core Laboratories NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Core Laboratories NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Core Laboratories NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Core Laboratories NV',
(SELECT id FROM companies WHERE name='Core Laboratories NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Core Laboratories NV'),
198460,
1241538,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Southwestern Energy Co'),
181580,
3993400,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Murphy Oil Corp'),
157628,
2556000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Cimarex Energy Co'),
135457,
1049000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Phillips'),
101748,
1200000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Denbury Resources Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Denbury Resources Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Denbury Resources Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Denbury Resources Inc',
(SELECT id FROM companies WHERE name='Denbury Resources Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Denbury Resources Inc'),
90573,
5362500,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BP PLC (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BP PLC (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BP PLC (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BP PLC (ADR)',
(SELECT id FROM companies WHERE name='BP PLC (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='BP PLC (ADR)'),
57447,
1138700,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='BP PLC'),
32039,
3800000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Paramount Resources Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Paramount Resources Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Paramount Resources Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Paramount Resources Ltd',
(SELECT id FROM companies WHERE name='Paramount Resources Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Paramount Resources Ltd'),
74450,
1415000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tourmaline Oil Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tourmaline Oil Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tourmaline Oil Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tourmaline Oil Corp',
(SELECT id FROM companies WHERE name='Tourmaline Oil Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Tourmaline Oil Corp'),
63497,
1275000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Oceaneering International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Oceaneering International Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Oceaneering International Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Oceaneering International Inc',
(SELECT id FROM companies WHERE name='Oceaneering International Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Oceaneering International Inc'),
31255,
433800,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Peyto Exploration & Development Corp'),
25906,
730000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Kinder Morgan Inc'),
24278,
727100,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Laricina Energy Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Laricina Energy Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Laricina Energy Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Laricina Energy Ltd',
(SELECT id FROM companies WHERE name='Laricina Energy Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Laricina Energy Ltd'),
15771,
950000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Union Pacific Corp'),
1504150,
7548300,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Precision Castparts Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Precision Castparts Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Precision Castparts Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Precision Castparts Corp',
(SELECT id FROM companies WHERE name='Precision Castparts Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Precision Castparts Corp'),
900575,
3559868,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Boeing Co'),
842607,
6230000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'American Airlines Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'American Airlines Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'American Airlines Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'American Airlines Group Inc',
(SELECT id FROM companies WHERE name='American Airlines Group Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='American Airlines Group Inc'),
764646,
19040000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'United Continental Holdings Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'United Continental Holdings Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'United Continental Holdings Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'United Continental Holdings Inc',
(SELECT id FROM companies WHERE name='United Continental Holdings Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='United Continental Holdings Inc'),
639771,
14419000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CSX Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CSX Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CSX Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CSX Corp',
(SELECT id FROM companies WHERE name='CSX Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='CSX Corp'),
637239,
21674801,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='General Dynamics Corp'),
602955,
5104600,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Delta Air Lines Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Delta Air Lines Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Delta Air Lines Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Delta Air Lines Inc',
(SELECT id FROM companies WHERE name='Delta Air Lines Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Delta Air Lines Inc'),
532153,
13333823,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Airbus Group NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Airbus Group NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Airbus Group NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Airbus Group NV',
(SELECT id FROM companies WHERE name='Airbus Group NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Airbus Group NV'),
526557,
7342327,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nielsen NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nielsen NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nielsen NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nielsen NV',
(SELECT id FROM companies WHERE name='Nielsen NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Nielsen NV'),
517084,
10714551,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Cummins Inc'),
503904,
3295000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Towers Watson & Co Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Towers Watson & Co Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Towers Watson & Co Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Towers Watson & Co Class A',
(SELECT id FROM companies WHERE name='Towers Watson & Co Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Towers Watson & Co Class A'),
446102,
3965000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Rockwell Collins Inc'),
419600,
5308700,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Caterpillar Inc'),
409431,
4005000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Ryanair Holdings PLC (ADR)'),
314903,
5538214,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Textron Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Textron Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Textron Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Textron Inc',
(SELECT id FROM companies WHERE name='Textron Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Textron Inc'),
261161,
6658866,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Danaher Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Danaher Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Danaher Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Danaher Corp',
(SELECT id FROM companies WHERE name='Danaher Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Danaher Corp'),
259560,
3309448,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Oshkosh Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Oshkosh Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Oshkosh Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Oshkosh Corp',
(SELECT id FROM companies WHERE name='Oshkosh Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Oshkosh Corp'),
236090,
4368000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'FedEx Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'FedEx Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'FedEx Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'FedEx Corp',
(SELECT id FROM companies WHERE name='FedEx Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='FedEx Corp'),
216240,
1500000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Meggitt PLC'),
211595,
26054666,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Fastenal Co'),
178181,
3655000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='United Technologies Corp'),
167357,
1440000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='General Electric Co'),
166098,
6200000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Lockheed Martin Corp'),
143521,
877000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Rolls-Royce Holdings PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Rolls-Royce Holdings PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Rolls-Royce Holdings PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Rolls-Royce Holdings PLC',
(SELECT id FROM companies WHERE name='Rolls-Royce Holdings PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Rolls-Royce Holdings PLC'),
118715,
6810000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Jacobs Engineering Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Jacobs Engineering Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Jacobs Engineering Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Jacobs Engineering Group Inc',
(SELECT id FROM companies WHERE name='Jacobs Engineering Group Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Jacobs Engineering Group Inc'),
114546,
2080000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'KBR Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'KBR Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'KBR Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'KBR Inc',
(SELECT id FROM companies WHERE name='KBR Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='KBR Inc'),
100804,
4150000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sensata Technologies Holding NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sensata Technologies Holding NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sensata Technologies Holding NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sensata Technologies Holding NV',
(SELECT id FROM companies WHERE name='Sensata Technologies Holding NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Sensata Technologies Holding NV'),
96503,
2250000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='MTU Aero Engines AG'),
86687,
930000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bureau Veritas SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bureau Veritas SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bureau Veritas SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bureau Veritas SA',
(SELECT id FROM companies WHERE name='Bureau Veritas SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Bureau Veritas SA'),
68026,
2256040,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Honeywell International Inc'),
65205,
700000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'United Parcel Service Inc Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'United Parcel Service Inc Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'United Parcel Service Inc Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'United Parcel Service Inc Class B',
(SELECT id FROM companies WHERE name='United Parcel Service Inc Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='United Parcel Service Inc Class B'),
59212,
570000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'KONE Oyj Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'KONE Oyj Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'KONE Oyj Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'KONE Oyj Class B',
(SELECT id FROM companies WHERE name='KONE Oyj Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='KONE Oyj Class B'),
44461,
1080000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Chart Industries Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Chart Industries Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Chart Industries Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Chart Industries Inc',
(SELECT id FROM companies WHERE name='Chart Industries Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Chart Industries Inc'),
25162,
350000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Crown Castle International Corp'),
1200481,
15645525,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='American International Group Inc'),
825379,
15265000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Goldman Sachs Group Inc'),
825370,
5164696,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Wells Fargo & Co'),
764197,
15049178,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='JPMorgan Chase & Co'),
516618,
9296712,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Bank of America Corp'),
454200,
30000000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Legal & General Group PLC'),
432106,
111984892,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='ACE Ltd'),
422421,
4073100,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Capital One Financial Corp'),
421904,
5348000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='American Express Co'),
409920,
4480000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Citigroup Inc'),
366765,
7710000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Berkshire Hathaway Inc Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Berkshire Hathaway Inc Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Berkshire Hathaway Inc Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Berkshire Hathaway Inc Class B',
(SELECT id FROM companies WHERE name='Berkshire Hathaway Inc Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Berkshire Hathaway Inc Class B'),
256680,
2000000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Berkshire Hathaway Inc Class A'),
96000,
500,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AIA Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AIA Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AIA Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AIA Group Ltd',
(SELECT id FROM companies WHERE name='AIA Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='AIA Group Ltd'),
337741,
67400000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='CME Group Inc Class A'),
319854,
4442419,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'HDFC Bank Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'HDFC Bank Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'HDFC Bank Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'HDFC Bank Ltd',
(SELECT id FROM companies WHERE name='HDFC Bank Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='HDFC Bank Ltd'),
245424,
18293408,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='HDFC Bank Ltd (ADR)'),
72588,
1612000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CIT Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CIT Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CIT Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CIT Group Inc',
(SELECT id FROM companies WHERE name='CIT Group Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='CIT Group Inc'),
311849,
7011000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='American Tower Corp'),
303846,
3390000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Progressive Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Progressive Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Progressive Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Progressive Corp',
(SELECT id FROM companies WHERE name='Progressive Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Progressive Corp'),
271576,
10850000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Onex Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Onex Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Onex Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Onex Corp',
(SELECT id FROM companies WHERE name='Onex Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Onex Corp'),
261265,
4200000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Morgan Stanley' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Morgan Stanley'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Morgan Stanley' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Morgan Stanley',
(SELECT id FROM companies WHERE name='Morgan Stanley')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Morgan Stanley'),
239165,
7750000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ocwen Financial Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ocwen Financial Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ocwen Financial Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ocwen Financial Corp',
(SELECT id FROM companies WHERE name='Ocwen Financial Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Ocwen Financial Corp'),
238163,
6791081,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'UBS AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'UBS AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'UBS AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'UBS AG',
(SELECT id FROM companies WHERE name='UBS AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='UBS AG'),
194069,
9665666,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'XL Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'XL Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'XL Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'XL Group PLC',
(SELECT id FROM companies WHERE name='XL Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='XL Group PLC'),
189404,
5835000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sumitomo Mitsui Financial Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sumitomo Mitsui Financial Group Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sumitomo Mitsui Financial Group Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sumitomo Mitsui Financial Group Inc',
(SELECT id FROM companies WHERE name='Sumitomo Mitsui Financial Group Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Sumitomo Mitsui Financial Group Inc'),
185895,
4610000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Charles Schwab Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Charles Schwab Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Charles Schwab Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Charles Schwab Corp',
(SELECT id FROM companies WHERE name='Charles Schwab Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Charles Schwab Corp'),
173121,
6867158,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'McGraw Hill Financial Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'McGraw Hill Financial Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'McGraw Hill Financial Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'McGraw Hill Financial Inc',
(SELECT id FROM companies WHERE name='McGraw Hill Financial Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='McGraw Hill Financial Inc'),
152141,
1860600,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Prudential PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Prudential PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Prudential PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Prudential PLC',
(SELECT id FROM companies WHERE name='Prudential PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Prudential PLC'),
149909,
6455000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Signature Bank' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Signature Bank'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Signature Bank' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Signature Bank',
(SELECT id FROM companies WHERE name='Signature Bank')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Signature Bank'),
134000,
1156970,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Fifth Third Bancorp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Fifth Third Bancorp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Fifth Third Bancorp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Fifth Third Bancorp',
(SELECT id FROM companies WHERE name='Fifth Third Bancorp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Fifth Third Bancorp'),
124140,
6000000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Popular Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Popular Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Popular Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Popular Inc',
(SELECT id FROM companies WHERE name='Popular Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Popular Inc'),
110761,
3670000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bank of Ireland' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bank of Ireland'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bank of Ireland' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bank of Ireland',
(SELECT id FROM companies WHERE name='Bank of Ireland')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Bank of Ireland'),
107706,
283200000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='US Bancorp'),
85435,
2025000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BOK Financial Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BOK Financial Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BOK Financial Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BOK Financial Corp',
(SELECT id FROM companies WHERE name='BOK Financial Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='BOK Financial Corp'),
78475,
1250000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'W R Berkley Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'W R Berkley Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'W R Berkley Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'W R Berkley Corp',
(SELECT id FROM companies WHERE name='W R Berkley Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='W R Berkley Corp'),
69529,
1560000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'First Republic Bank' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'First Republic Bank'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'First Republic Bank' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'First Republic Bank',
(SELECT id FROM companies WHERE name='First Republic Bank')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='First Republic Bank'),
68153,
1340000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Leucadia National Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Leucadia National Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Leucadia National Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Leucadia National Corp',
(SELECT id FROM companies WHERE name='Leucadia National Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Leucadia National Corp'),
66428,
2589787,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Deutsche Bank AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Deutsche Bank AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Deutsche Bank AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Deutsche Bank AG',
(SELECT id FROM companies WHERE name='Deutsche Bank AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Deutsche Bank AG'),
63595,
1570000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ICICI Bank Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ICICI Bank Ltd (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ICICI Bank Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ICICI Bank Ltd (ADR)',
(SELECT id FROM companies WHERE name='ICICI Bank Ltd (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='ICICI Bank Ltd (ADR)'),
49670,
1000000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Arch Capital Group Ltd'),
41866,
735383,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Zions Bancorporation' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Zions Bancorporation'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Zions Bancorporation' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Zions Bancorporation',
(SELECT id FROM companies WHERE name='Zions Bancorporation')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Zions Bancorporation'),
25240,
882838,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Moody’s Corp'),
17108,
200000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Credit Suisse Group AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Credit Suisse Group AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Credit Suisse Group AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Credit Suisse Group AG',
(SELECT id FROM companies WHERE name='Credit Suisse Group AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Credit Suisse Group AG'),
14251,
479414,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Weyerhaeuser Co'),
13269,
422321,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Philip Morris International Inc'),
1808822,
20429433,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Costco Wholesale Corp'),
1298633,
11193183,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Keurig Green Mountain Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Keurig Green Mountain Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Keurig Green Mountain Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Keurig Green Mountain Inc',
(SELECT id FROM companies WHERE name='Keurig Green Mountain Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Keurig Green Mountain Inc'),
679766,
6027363,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kerry Group PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kerry Group PLC Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kerry Group PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kerry Group PLC Class A',
(SELECT id FROM companies WHERE name='Kerry Group PLC Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Kerry Group PLC Class A'),
499869,
6565824,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Nestlé SA'),
187302,
2387600,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Mead Johnson Nutrition Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Mead Johnson Nutrition Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Mead Johnson Nutrition Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Mead Johnson Nutrition Co',
(SELECT id FROM companies WHERE name='Mead Johnson Nutrition Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Mead Johnson Nutrition Co'),
166826,
1864600,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='PepsiCo Inc'),
148394,
1680000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Whole Foods Market Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Whole Foods Market Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Whole Foods Market Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Whole Foods Market Inc',
(SELECT id FROM companies WHERE name='Whole Foods Market Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Whole Foods Market Inc'),
133840,
3500000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Pernod Ricard SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Pernod Ricard SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Pernod Ricard SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Pernod Ricard SA',
(SELECT id FROM companies WHERE name='Pernod Ricard SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Pernod Ricard SA'),
129482,
1056000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Coca-Cola Co'),
101882,
2490400,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='British American Tobacco PLC'),
90105,
1493000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Japan Tobacco Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Japan Tobacco Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Japan Tobacco Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Japan Tobacco Inc',
(SELECT id FROM companies WHERE name='Japan Tobacco Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Japan Tobacco Inc'),
63264,
1870000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Avon Products Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Avon Products Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Avon Products Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Avon Products Inc',
(SELECT id FROM companies WHERE name='Avon Products Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Avon Products Inc'),
22864,
1600000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Praxair Inc'),
685868,
5186537,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Celanese Corp Series A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Celanese Corp Series A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Celanese Corp Series A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Celanese Corp Series A',
(SELECT id FROM companies WHERE name='Celanese Corp Series A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Celanese Corp Series A'),
395010,
6300000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Rio Tinto PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Rio Tinto PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Rio Tinto PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Rio Tinto PLC',
(SELECT id FROM companies WHERE name='Rio Tinto PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Rio Tinto PLC'),
303964,
5932000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'LyondellBasell Industries NV Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'LyondellBasell Industries NV Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'LyondellBasell Industries NV Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'LyondellBasell Industries NV Class A',
(SELECT id FROM companies WHERE name='LyondellBasell Industries NV Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='LyondellBasell Industries NV Class A'),
287757,
2890000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Potash Corp of Saskatchewan Inc'),
191646,
5276600,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sigma-Aldrich Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sigma-Aldrich Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sigma-Aldrich Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sigma-Aldrich Corp',
(SELECT id FROM companies WHERE name='Sigma-Aldrich Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Sigma-Aldrich Corp'),
118236,
1200000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ArcelorMittal' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ArcelorMittal'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ArcelorMittal' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ArcelorMittal',
(SELECT id FROM companies WHERE name='ArcelorMittal')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='ArcelorMittal'),
117863,
7720000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Dow Chemical Co'),
106846,
2050000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Smurfit Kappa PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Smurfit Kappa PLC Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Smurfit Kappa PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Smurfit Kappa PLC Class A',
(SELECT id FROM companies WHERE name='Smurfit Kappa PLC Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Smurfit Kappa PLC Class A'),
101892,
4223000,
to_date(31052014, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='FMC Corp'),
91872,
1200000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'James Hardie Industries PLC (CDI)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'James Hardie Industries PLC (CDI)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'James Hardie Industries PLC (CDI)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'James Hardie Industries PLC (CDI)',
(SELECT id FROM companies WHERE name='James Hardie Industries PLC (CDI)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='James Hardie Industries PLC (CDI)'),
72816,
5460000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Alcoa Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Alcoa Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Alcoa Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Alcoa Inc',
(SELECT id FROM companies WHERE name='Alcoa Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Alcoa Inc'),
70772,
5200000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Syngenta AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Syngenta AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Syngenta AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Syngenta AG',
(SELECT id FROM companies WHERE name='Syngenta AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Syngenta AG'),
46164,
120000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'United States Steel Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'United States Steel Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'United States Steel Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'United States Steel Corp',
(SELECT id FROM companies WHERE name='United States Steel Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='United States Steel Corp'),
45670,
1982200,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Newmont Mining Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Newmont Mining Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Newmont Mining Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Newmont Mining Corp',
(SELECT id FROM companies WHERE name='Newmont Mining Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Newmont Mining Corp'),
29299,
1280000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Barrick Gold Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Barrick Gold Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Barrick Gold Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Barrick Gold Corp',
(SELECT id FROM companies WHERE name='Barrick Gold Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='Barrick Gold Corp'),
27870,
1730000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'T-Mobile US Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'T-Mobile US Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'T-Mobile US Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'T-Mobile US Inc',
(SELECT id FROM companies WHERE name='T-Mobile US Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='T-Mobile US Inc'),
646437,
18830100,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SoftBank Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SoftBank Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SoftBank Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SoftBank Corp',
(SELECT id FROM companies WHERE name='SoftBank Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='SoftBank Corp'),
487093,
6751000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SBA Communications Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SBA Communications Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SBA Communications Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SBA Communications Corp Class A',
(SELECT id FROM companies WHERE name='SBA Communications Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='SBA Communications Corp Class A'),
133473,
1315000,
to_date(31052014, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'NRG Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'NRG Energy Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'NRG Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'NRG Energy Inc',
(SELECT id FROM companies WHERE name='NRG Energy Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='growthfund'),
(SELECT id FROM assets WHERE asset_name='NRG Energy Inc'),
393263,
11034310,
to_date(31052014, 'ddmmyyyy')
)
;

