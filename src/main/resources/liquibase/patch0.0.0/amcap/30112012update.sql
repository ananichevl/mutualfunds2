-- liquibase formatted sql
-- changeset mkp:add-records-30112012-01

MERGE INTO funds f
USING ( SELECT 1 FROM dual ) d
ON ( f.name = 'amcap' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (  funds_seq.nextval,
'amcap'
)
;

-- changeset mkp:add-records-30112012-02
MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Gilead Sciences Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Gilead Sciences Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Gilead Sciences Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Gilead Sciences Inc ',
(SELECT id FROM companies WHERE name='Gilead Sciences Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Gilead Sciences Inc '),
994580,
13261071,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Biogen Idec Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Biogen Idec Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Biogen Idec Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Biogen Idec Inc ',
(SELECT id FROM companies WHERE name='Biogen Idec Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Biogen Idec Inc '),
499660,
3351400,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Amgen Inc'),
391164,
4405000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='St Jude Medical Inc'),
273958,
7991765,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='UnitedHealth Group Inc'),
252913,
4650000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hologic Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hologic Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hologic Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hologic Inc ',
(SELECT id FROM companies WHERE name='Hologic Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Hologic Inc '),
236098,
12374100,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Forest Laboratories Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Forest Laboratories Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Forest Laboratories Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Forest Laboratories Inc ',
(SELECT id FROM companies WHERE name='Forest Laboratories Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Forest Laboratories Inc '),
235100,
6630000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BioMarin Pharmaceutical Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BioMarin Pharmaceutical Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BioMarin Pharmaceutical Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BioMarin Pharmaceutical Inc ',
(SELECT id FROM companies WHERE name='BioMarin Pharmaceutical Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='BioMarin Pharmaceutical Inc '),
227827,
4687793,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Endo Health Solutions Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Endo Health Solutions Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Endo Health Solutions Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Endo Health Solutions Inc ',
(SELECT id FROM companies WHERE name='Endo Health Solutions Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Endo Health Solutions Inc '),
217816,
7600000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Alexion Pharmaceuticals Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Alexion Pharmaceuticals Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Alexion Pharmaceuticals Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Alexion Pharmaceuticals Inc ',
(SELECT id FROM companies WHERE name='Alexion Pharmaceuticals Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Alexion Pharmaceuticals Inc '),
213645,
2225000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'McKesson Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'McKesson Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'McKesson Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'McKesson Corp',
(SELECT id FROM companies WHERE name='McKesson Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='McKesson Corp'),
212558,
2250000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Edwards Lifesciences Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Edwards Lifesciences Corp '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Edwards Lifesciences Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Edwards Lifesciences Corp ',
(SELECT id FROM companies WHERE name='Edwards Lifesciences Corp ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Edwards Lifesciences Corp '),
177301,
2043350,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Stryker Corp'),
157985,
2917000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Illumina Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Illumina Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Illumina Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Illumina Inc ',
(SELECT id FROM companies WHERE name='Illumina Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Illumina Inc '),
145293,
2705143,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Zimmer Holdings Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Zimmer Holdings Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Zimmer Holdings Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Zimmer Holdings Inc',
(SELECT id FROM companies WHERE name='Zimmer Holdings Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Zimmer Holdings Inc'),
145174,
2200600,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Thermo Fisher Scientific Inc'),
140515,
2211100,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Abbott Laboratories'),
136500,
2100000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Express Scripts Holding Co ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Express Scripts Holding Co '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Express Scripts Holding Co ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Express Scripts Holding Co ',
(SELECT id FROM companies WHERE name='Express Scripts Holding Co ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Express Scripts Holding Co '),
118718,
2204600,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Medtronic Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Medtronic Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Medtronic Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Medtronic Inc',
(SELECT id FROM companies WHERE name='Medtronic Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Medtronic Inc'),
101064,
2400000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Allergan Inc'),
96887,
1044600,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'athenahealth Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'athenahealth Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'athenahealth Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'athenahealth Inc ',
(SELECT id FROM companies WHERE name='athenahealth Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='athenahealth Inc '),
50933,
799700,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'VCA Antech Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'VCA Antech Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'VCA Antech Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'VCA Antech Inc ',
(SELECT id FROM companies WHERE name='VCA Antech Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='VCA Antech Inc '),
39128,
1882984,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Boston Scientific Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Boston Scientific Corp '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Boston Scientific Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Boston Scientific Corp ',
(SELECT id FROM companies WHERE name='Boston Scientific Corp ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Boston Scientific Corp '),
14115,
2547890,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'NuVasive Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'NuVasive Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'NuVasive Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'NuVasive Inc ',
(SELECT id FROM companies WHERE name='NuVasive Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='NuVasive Inc '),
5082,
350000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Microsoft Corp'),
556624,
20910000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Oracle Corp'),
478771,
14915000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Texas Instruments Inc'),
330653,
11220000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Adobe Systems Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Adobe Systems Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Adobe Systems Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Adobe Systems Inc ',
(SELECT id FROM companies WHERE name='Adobe Systems Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Adobe Systems Inc '),
299072,
8641200,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Apple Inc'),
234112,
400000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Accenture PLC Class A'),
220740,
3250000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Google Inc Class A ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Google Inc Class A '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Google Inc Class A ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Google Inc Class A ',
(SELECT id FROM companies WHERE name='Google Inc Class A ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Google Inc Class A '),
219428,
314200,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Avago Technologies Ltd'),
182520,
5200000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Intuit Inc'),
182426,
3045000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Yahoo! Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Yahoo! Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Yahoo! Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Yahoo! Inc ',
(SELECT id FROM companies WHERE name='Yahoo! Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Yahoo! Inc '),
159808,
8514000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'FactSet Research Systems Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'FactSet Research Systems Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'FactSet Research Systems Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'FactSet Research Systems Inc',
(SELECT id FROM companies WHERE name='FactSet Research Systems Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='FactSet Research Systems Inc'),
147454,
1596000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Baidu Inc Class A (ADR) ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Baidu Inc Class A (ADR) '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Baidu Inc Class A (ADR) ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Baidu Inc Class A (ADR) ',
(SELECT id FROM companies WHERE name='Baidu Inc Class A (ADR) ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Baidu Inc Class A (ADR) '),
123566,
1283000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Trimble Navigation Ltd ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Trimble Navigation Ltd '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Trimble Navigation Ltd ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Trimble Navigation Ltd ',
(SELECT id FROM companies WHERE name='Trimble Navigation Ltd ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Trimble Navigation Ltd '),
121852,
2190000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Automatic Data Processing Inc'),
119196,
2100000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'eBay Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'eBay Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'eBay Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'eBay Inc ',
(SELECT id FROM companies WHERE name='eBay Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='eBay Inc '),
105640,
2000000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Itron Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Itron Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Itron Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Itron Inc ',
(SELECT id FROM companies WHERE name='Itron Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Itron Inc '),
101161,
2309614,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Autodesk Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Autodesk Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Autodesk Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Autodesk Inc ',
(SELECT id FROM companies WHERE name='Autodesk Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Autodesk Inc '),
99390,
3000000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'EMC Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'EMC Corp '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'EMC Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'EMC Corp ',
(SELECT id FROM companies WHERE name='EMC Corp ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='EMC Corp '),
99280,
4000000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Rovi Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Rovi Corp '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Rovi Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Rovi Corp ',
(SELECT id FROM companies WHERE name='Rovi Corp ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Rovi Corp '),
98790,
6440000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Logitech International SA ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Logitech International SA '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Logitech International SA ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Logitech International SA ',
(SELECT id FROM companies WHERE name='Logitech International SA ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Logitech International SA '),
78100,
11000000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Samsung Electronics Co Ltd'),
74400,
57300,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Maxim Integrated Products Inc'),
40136,
1375000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Hewlett-Packard Co'),
38970,
3000000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Linear Technology Corp'),
34849,
1050000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MediaTek Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MediaTek Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MediaTek Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MediaTek Inc',
(SELECT id FROM companies WHERE name='MediaTek Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='MediaTek Inc'),
31282,
2750000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Visa Inc Class A'),
29942,
200000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'NetApp Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'NetApp Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'NetApp Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'NetApp Inc ',
(SELECT id FROM companies WHERE name='NetApp Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='NetApp Inc '),
23783,
750000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='KLA-Tencor Corp'),
17415,
383000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Xilinx Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Xilinx Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Xilinx Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Xilinx Inc',
(SELECT id FROM companies WHERE name='Xilinx Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Xilinx Inc'),
17218,
496900,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'DIRECTV ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'DIRECTV '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'DIRECTV ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'DIRECTV ',
(SELECT id FROM companies WHERE name='DIRECTV ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='DIRECTV '),
460724,
9270100,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Comcast Corp Class A'),
393439,
10582000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Netflix Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Netflix Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Netflix Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Netflix Inc ',
(SELECT id FROM companies WHERE name='Netflix Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Netflix Inc '),
247442,
3028300,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Time Warner Inc'),
209697,
4433333,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Garmin Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Garmin Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Garmin Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Garmin Ltd',
(SELECT id FROM companies WHERE name='Garmin Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Garmin Ltd'),
202189,
5199000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Johnson Controls Inc'),
194226,
7052494,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Time Warner Cable Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Time Warner Cable Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Time Warner Cable Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Time Warner Cable Inc',
(SELECT id FROM companies WHERE name='Time Warner Cable Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Time Warner Cable Inc'),
190377,
2006293,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='YUM! Brands Inc'),
186818,
2785000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='NIKE Inc Class B'),
176926,
1815000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Harley-Davidson Inc'),
167412,
3565000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tractor Supply Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tractor Supply Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tractor Supply Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tractor Supply Co',
(SELECT id FROM companies WHERE name='Tractor Supply Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Tractor Supply Co'),
152354,
1700000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Amazoncom Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Amazoncom Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Amazoncom Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Amazoncom Inc ',
(SELECT id FROM companies WHERE name='Amazoncom Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Amazoncom Inc '),
125773,
499000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'JCDecaux SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'JCDecaux SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'JCDecaux SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'JCDecaux SA',
(SELECT id FROM companies WHERE name='JCDecaux SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='JCDecaux SA'),
99541,
4400000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kohl’s Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kohl’s Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kohl’s Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kohl’s Corp',
(SELECT id FROM companies WHERE name='Kohl’s Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Kohl’s Corp'),
89894,
2013300,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Big Lots Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Big Lots Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Big Lots Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Big Lots Inc ',
(SELECT id FROM companies WHERE name='Big Lots Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Big Lots Inc '),
84091,
2986200,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Texas Roadhouse Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Texas Roadhouse Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Texas Roadhouse Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Texas Roadhouse Inc ',
(SELECT id FROM companies WHERE name='Texas Roadhouse Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Texas Roadhouse Inc '),
75695,
4557200,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'News Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'News Corp Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'News Corp Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'News Corp Class A',
(SELECT id FROM companies WHERE name='News Corp Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='News Corp Class A'),
75152,
3050000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Lowe’s Companies Inc'),
72180,
2000000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Weight Watchers International Inc'),
71965,
1385000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'DreamWorks Animation SKG Inc Class A ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'DreamWorks Animation SKG Inc Class A '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'DreamWorks Animation SKG Inc Class A ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'DreamWorks Animation SKG Inc Class A ',
(SELECT id FROM companies WHERE name='DreamWorks Animation SKG Inc Class A ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='DreamWorks Animation SKG Inc Class A '),
56529,
3300000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'British Sky Broadcasting Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'British Sky Broadcasting Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'British Sky Broadcasting Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'British Sky Broadcasting Group PLC',
(SELECT id FROM companies WHERE name='British Sky Broadcasting Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='British Sky Broadcasting Group PLC'),
37515,
3085000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'WPP PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'WPP PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'WPP PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'WPP PLC',
(SELECT id FROM companies WHERE name='WPP PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='WPP PLC'),
32366,
2360000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Nordstrom Inc'),
20338,
376000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='EOG Resources Inc'),
483430,
4110100,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Schlumberger Ltd'),
469608,
6556940,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'FMC Technologies Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'FMC Technologies Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'FMC Technologies Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'FMC Technologies Inc ',
(SELECT id FROM companies WHERE name='FMC Technologies Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='FMC Technologies Inc '),
334081,
8176244,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Baker Hughes Inc'),
323625,
7500000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Apache Corp'),
276213,
3583000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Southwestern Energy Co ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Southwestern Energy Co '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Southwestern Energy Co ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Southwestern Energy Co ',
(SELECT id FROM companies WHERE name='Southwestern Energy Co ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Southwestern Energy Co '),
161401,
4650000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Devon Energy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Devon Energy Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Devon Energy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Devon Energy Corp',
(SELECT id FROM companies WHERE name='Devon Energy Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Devon Energy Corp'),
139096,
2692000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Chevron Corp'),
123182,
1165500,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ultra Petroleum Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ultra Petroleum Corp '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ultra Petroleum Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ultra Petroleum Corp ',
(SELECT id FROM companies WHERE name='Ultra Petroleum Corp ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Ultra Petroleum Corp '),
97744,
4875000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Transocean Ltd'),
46431,
1005000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='BG Group PLC'),
21753,
1268929,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Range Resources Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Range Resources Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Range Resources Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Range Resources Corp',
(SELECT id FROM companies WHERE name='Range Resources Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Range Resources Corp'),
11844,
185000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Precision Castparts Corp'),
224653,
1225000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Union Pacific Corp'),
212207,
1728350,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='United Parcel Service Inc Class B'),
192279,
2630000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Dover Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Dover Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Dover Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Dover Corp',
(SELECT id FROM companies WHERE name='Dover Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Dover Corp'),
177734,
2795000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Verisk Analytics Inc Class A ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Verisk Analytics Inc Class A '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Verisk Analytics Inc Class A ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Verisk Analytics Inc Class A ',
(SELECT id FROM companies WHERE name='Verisk Analytics Inc Class A ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Verisk Analytics Inc Class A '),
160938,
3229100,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='CSX Corp'),
134184,
6790700,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Serco Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Serco Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Serco Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Serco Group PLC',
(SELECT id FROM companies WHERE name='Serco Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Serco Group PLC'),
131620,
15018700,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Polypore International Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Polypore International Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Polypore International Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Polypore International Inc ',
(SELECT id FROM companies WHERE name='Polypore International Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Polypore International Inc '),
123971,
3020000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='United Technologies Corp'),
121687,
1519000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Southwest Airlines Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Southwest Airlines Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Southwest Airlines Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Southwest Airlines Co',
(SELECT id FROM companies WHERE name='Southwest Airlines Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Southwest Airlines Co'),
113264,
11885000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MITIE Group PLC ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MITIE Group PLC '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MITIE Group PLC ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MITIE Group PLC ',
(SELECT id FROM companies WHERE name='MITIE Group PLC ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='MITIE Group PLC '),
98483,
22902000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Moog Inc Class A ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Moog Inc Class A '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Moog Inc Class A ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Moog Inc Class A ',
(SELECT id FROM companies WHERE name='Moog Inc Class A ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Moog Inc Class A '),
85597,
2328535,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='General Dynamics Corp'),
76807,
1155000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Landstar System Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Landstar System Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Landstar System Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Landstar System Inc',
(SELECT id FROM companies WHERE name='Landstar System Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Landstar System Inc'),
68270,
1350000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Rockwell Collins Inc'),
40249,
703907,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Danaher Corp'),
39393,
729900,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Norfolk Southern Corp'),
37858,
627000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='FedEx Corp'),
36054,
402700,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Iron Mountain Inc'),
13430,
425000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Mine Safety Appliances Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Mine Safety Appliances Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Mine Safety Appliances Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Mine Safety Appliances Co',
(SELECT id FROM companies WHERE name='Mine Safety Appliances Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Mine Safety Appliances Co'),
11305,
292266,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Capital One Financial Corp'),
236160,
4100000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='JPMorgan Chase & Co'),
211562,
5150000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='PNC Financial Services Group Inc'),
145683,
2595000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Arthur J Gallagher & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Arthur J Gallagher & Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Arthur J Gallagher & Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Arthur J Gallagher & Co',
(SELECT id FROM companies WHERE name='Arthur J Gallagher & Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Arthur J Gallagher & Co'),
128733,
3525000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='American Express Co'),
117390,
2100000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Wells Fargo & Co'),
115535,
3500000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'State Street Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'State Street Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'State Street Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'State Street Corp',
(SELECT id FROM companies WHERE name='State Street Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='State Street Corp'),
108375,
2438692,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BB&T Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BB&T Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BB&T Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BB&T Corp',
(SELECT id FROM companies WHERE name='BB&T Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='BB&T Corp'),
98595,
3500000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Aon PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Aon PLC Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Aon PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Aon PLC Class A',
(SELECT id FROM companies WHERE name='Aon PLC Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Aon PLC Class A'),
94402,
1662000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Torchmark Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Torchmark Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Torchmark Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Torchmark Corp',
(SELECT id FROM companies WHERE name='Torchmark Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Torchmark Corp'),
62388,
1200000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cullen/Frost Bankers Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cullen/Frost Bankers Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cullen/Frost Bankers Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cullen/Frost Bankers Inc',
(SELECT id FROM companies WHERE name='Cullen/Frost Bankers Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Cullen/Frost Bankers Inc'),
60634,
1110300,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Zions Bancorporation'),
48758,
2429400,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='US Bancorp'),
33712,
1045000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'East West Bancorp Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'East West Bancorp Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'East West Bancorp Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'East West Bancorp Inc',
(SELECT id FROM companies WHERE name='East West Bancorp Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='East West Bancorp Inc'),
4230,
200000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CVS/Caremark Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CVS/Caremark Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CVS/Caremark Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CVS/Caremark Corp',
(SELECT id FROM companies WHERE name='CVS/Caremark Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='CVS/Caremark Corp'),
290687,
6250000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Green Mountain Coffee Roasters Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Green Mountain Coffee Roasters Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Green Mountain Coffee Roasters Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Green Mountain Coffee Roasters Inc ',
(SELECT id FROM companies WHERE name='Green Mountain Coffee Roasters Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Green Mountain Coffee Roasters Inc '),
272597,
7433800,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Philip Morris International Inc'),
224700,
2500000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'L’Oréal SA non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'L’Oréal SA non-registered shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'L’Oréal SA non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'L’Oréal SA non-registered shares',
(SELECT id FROM companies WHERE name='L’Oréal SA non-registered shares')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='L’Oréal SA non-registered shares'),
115356,
850000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Whole Foods Market Inc'),
105684,
1132000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Costco Wholesale Corp'),
79032,
760000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Altria Group Inc'),
59168,
1750000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Colgate-Palmolive Co'),
27125,
250000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='PepsiCo Inc'),
22502,
320500,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Celanese Corp Series A ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Celanese Corp Series A '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Celanese Corp Series A ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Celanese Corp Series A ',
(SELECT id FROM companies WHERE name='Celanese Corp Series A ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Celanese Corp Series A '),
342090,
8335522,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AptarGroup Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AptarGroup Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AptarGroup Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AptarGroup Inc ',
(SELECT id FROM companies WHERE name='AptarGroup Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='AptarGroup Inc '),
206220,
4326000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Praxair Inc'),
144898,
1351531,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Valspar Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Valspar Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Valspar Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Valspar Corp',
(SELECT id FROM companies WHERE name='Valspar Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Valspar Corp'),
131159,
2089185,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Monsanto Co'),
115403,
1260000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Freeport-McMoRan Copper & Gold Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Freeport-McMoRan Copper & Gold Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Freeport-McMoRan Copper & Gold Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Freeport-McMoRan Copper & Gold Inc',
(SELECT id FROM companies WHERE name='Freeport-McMoRan Copper & Gold Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Freeport-McMoRan Copper & Gold Inc'),
105327,
2700000,
to_date(30112012, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Barrick Gold Corp'),
72513,
2100000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Crown Castle International Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Crown Castle International Corp '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Crown Castle International Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Crown Castle International Corp ',
(SELECT id FROM companies WHERE name='Crown Castle International Corp ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Crown Castle International Corp '),
218603,
3237600,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'tw telecom inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'tw telecom inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'tw telecom inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'tw telecom inc ',
(SELECT id FROM companies WHERE name='tw telecom inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='tw telecom inc '),
97622,
3800000,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'United States Cellular Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'United States Cellular Corp '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'United States Cellular Corp ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'United States Cellular Corp ',
(SELECT id FROM companies WHERE name='United States Cellular Corp ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='United States Cellular Corp '),
25590,
734300,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Telephone and Data Systems Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Telephone and Data Systems Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Telephone and Data Systems Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Telephone and Data Systems Inc',
(SELECT id FROM companies WHERE name='Telephone and Data Systems Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='Telephone and Data Systems Inc'),
22342,
970950,
to_date(30112012, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MetroPCS Communications Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MetroPCS Communications Inc '
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MetroPCS Communications Inc ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MetroPCS Communications Inc ',
(SELECT id FROM companies WHERE name='MetroPCS Communications Inc ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='amcap'),
(SELECT id FROM assets WHERE asset_name='MetroPCS Communications Inc '),
14393,
1351500,
to_date(30112012, 'ddmmyyyy')
)
;

