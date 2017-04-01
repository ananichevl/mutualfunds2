-- liquibase formatted sql
-- changeset mkp:add-records-31122011-01

MERGE INTO funds f
USING ( SELECT 1 FROM dual ) d
ON ( f.name = 'europacific' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (  funds_seq.nextval,
'europacific'
)
;

-- changeset mkp:add-records-31122011-02
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Prudential PLC'),
875911,
88333984,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Housing Development Finance Corp Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Housing Development Finance Corp Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Housing Development Finance Corp Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Housing Development Finance Corp Ltd',
(SELECT id FROM companies WHERE name='Housing Development Finance Corp Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Housing Development Finance Corp Ltd'),
806658,
65696730,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Deutsche Bank AG'),
768165,
20163788,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Agricultural Bank of China Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Agricultural Bank of China Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Agricultural Bank of China Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Agricultural Bank of China Class H',
(SELECT id FROM companies WHERE name='Agricultural Bank of China Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Agricultural Bank of China Class H'),
638875,
1485594000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Barclays PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Barclays PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Barclays PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Barclays PLC',
(SELECT id FROM companies WHERE name='Barclays PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Barclays PLC'),
606780,
221933921,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Fairfax Financial Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Fairfax Financial Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Fairfax Financial Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Fairfax Financial Holdings Ltd',
(SELECT id FROM companies WHERE name='Fairfax Financial Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Fairfax Financial Holdings Ltd'),
306709,
711291,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Fairfax Financial Holdings Ltd (CAD denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Fairfax Financial Holdings Ltd (CAD denominated)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Fairfax Financial Holdings Ltd (CAD denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Fairfax Financial Holdings Ltd (CAD denominated)',
(SELECT id FROM companies WHERE name='Fairfax Financial Holdings Ltd (CAD denominated)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Fairfax Financial Holdings Ltd (CAD denominated)'),
139414,
325000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Société Générale' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Société Générale'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Société Générale' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Société Générale',
(SELECT id FROM companies WHERE name='Société Générale')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Société Générale'),
442668,
19879513,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='HDFC Bank Ltd'),
440836,
54845000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ping An Insurance (Group) Co of China Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ping An Insurance (Group) Co of China Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ping An Insurance (Group) Co of China Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ping An Insurance (Group) Co of China Ltd Class H',
(SELECT id FROM companies WHERE name='Ping An Insurance (Group) Co of China Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Ping An Insurance (Group) Co of China Ltd Class H'),
435819,
66110000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AXA SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AXA SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AXA SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AXA SA',
(SELECT id FROM companies WHERE name='AXA SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='AXA SA'),
395053,
30386996,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Toronto-Dominion Bank' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Toronto-Dominion Bank'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Toronto-Dominion Bank' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Toronto-Dominion Bank',
(SELECT id FROM companies WHERE name='Toronto-Dominion Bank')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Toronto-Dominion Bank'),
378923,
5060000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='AIA Group Ltd'),
369037,
118192400,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hana Financial Holdings' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hana Financial Holdings'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hana Financial Holdings' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hana Financial Holdings',
(SELECT id FROM companies WHERE name='Hana Financial Holdings')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hana Financial Holdings'),
368459,
11921600,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bank of China Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bank of China Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bank of China Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bank of China Ltd Class H',
(SELECT id FROM companies WHERE name='Bank of China Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Bank of China Ltd Class H'),
360088,
977853600,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Banco Bradesco SA preferred nominative' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Banco Bradesco SA preferred nominative'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Banco Bradesco SA preferred nominative' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Banco Bradesco SA preferred nominative',
(SELECT id FROM companies WHERE name='Banco Bradesco SA preferred nominative')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Banco Bradesco SA preferred nominative'),
355519,
21565243,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ICICI Bank Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ICICI Bank Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ICICI Bank Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ICICI Bank Ltd',
(SELECT id FROM companies WHERE name='ICICI Bank Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ICICI Bank Ltd'),
350807,
27210410,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Industrial and Commercial Bank of China Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Industrial and Commercial Bank of China Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Industrial and Commercial Bank of China Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Industrial and Commercial Bank of China Ltd Class H',
(SELECT id FROM companies WHERE name='Industrial and Commercial Bank of China Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Industrial and Commercial Bank of China Ltd Class H'),
350698,
590830409,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BNP Paribas SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BNP Paribas SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BNP Paribas SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BNP Paribas SA',
(SELECT id FROM companies WHERE name='BNP Paribas SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='BNP Paribas SA'),
323966,
8247508,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bank of Nova Scotia' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bank of Nova Scotia'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bank of Nova Scotia' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bank of Nova Scotia',
(SELECT id FROM companies WHERE name='Bank of Nova Scotia')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Bank of Nova Scotia'),
291144,
5835200,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Brookfield Asset Management Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Brookfield Asset Management Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Brookfield Asset Management Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Brookfield Asset Management Inc',
(SELECT id FROM companies WHERE name='Brookfield Asset Management Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Brookfield Asset Management Inc'),
275542,
10027000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kotak Mahindra Bank Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kotak Mahindra Bank Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kotak Mahindra Bank Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kotak Mahindra Bank Ltd',
(SELECT id FROM companies WHERE name='Kotak Mahindra Bank Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Kotak Mahindra Bank Ltd'),
255121,
31467137,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'PT Bank Central Asia Tbk' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'PT Bank Central Asia Tbk'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'PT Bank Central Asia Tbk' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'PT Bank Central Asia Tbk',
(SELECT id FROM companies WHERE name='PT Bank Central Asia Tbk')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='PT Bank Central Asia Tbk'),
239729,
271718000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Credit Suisse Group AG'),
239095,
10175871,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='UBS AG'),
228460,
19194295,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Banco Santander SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Banco Santander SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Banco Santander SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Banco Santander SA',
(SELECT id FROM companies WHERE name='Banco Santander SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Banco Santander SA'),
227907,
29998608,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Siam Commercial Bank PCL' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Siam Commercial Bank PCL'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Siam Commercial Bank PCL' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Siam Commercial Bank PCL',
(SELECT id FROM companies WHERE name='Siam Commercial Bank PCL')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Siam Commercial Bank PCL'),
220261,
59650000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sberbank of Russia (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sberbank of Russia (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sberbank of Russia (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sberbank of Russia (ADR)',
(SELECT id FROM companies WHERE name='Sberbank of Russia (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Sberbank of Russia (ADR)'),
214550,
21598375,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Westfield Group' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Westfield Group'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Westfield Group' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Westfield Group',
(SELECT id FROM companies WHERE name='Westfield Group')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Westfield Group'),
209008,
26165000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Itaú Unibanco Holding SA preferred nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Itaú Unibanco Holding SA preferred nominative (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Itaú Unibanco Holding SA preferred nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Itaú Unibanco Holding SA preferred nominative (ADR)',
(SELECT id FROM companies WHERE name='Itaú Unibanco Holding SA preferred nominative (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Itaú Unibanco Holding SA preferred nominative (ADR)'),
156721,
8444022,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Itaú Unibanco Holding SA preferred nominative' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Itaú Unibanco Holding SA preferred nominative'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Itaú Unibanco Holding SA preferred nominative' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Itaú Unibanco Holding SA preferred nominative',
(SELECT id FROM companies WHERE name='Itaú Unibanco Holding SA preferred nominative')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Itaú Unibanco Holding SA preferred nominative'),
50690,
2781699,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sino Land Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sino Land Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sino Land Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sino Land Co Ltd',
(SELECT id FROM companies WHERE name='Sino Land Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Sino Land Co Ltd'),
196783,
138186105,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Resona Holdings Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Resona Holdings Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Resona Holdings Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Resona Holdings Inc',
(SELECT id FROM companies WHERE name='Resona Holdings Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Resona Holdings Inc'),
194406,
44139900,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China Construction Bank Corp Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China Construction Bank Corp Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China Construction Bank Corp Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China Construction Bank Corp Class H',
(SELECT id FROM companies WHERE name='China Construction Bank Corp Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China Construction Bank Corp Class H'),
194194,
278270000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sampo Oyj Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sampo Oyj Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sampo Oyj Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sampo Oyj Class A',
(SELECT id FROM companies WHERE name='Sampo Oyj Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Sampo Oyj Class A'),
186793,
7528722,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ayala Land Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ayala Land Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ayala Land Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ayala Land Inc',
(SELECT id FROM companies WHERE name='Ayala Land Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Ayala Land Inc'),
173948,
499786900,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'UniCredit SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'UniCredit SpA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'UniCredit SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'UniCredit SpA',
(SELECT id FROM companies WHERE name='UniCredit SpA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='UniCredit SpA'),
167625,
20173747,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China Life Insurance Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China Life Insurance Co Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China Life Insurance Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China Life Insurance Co Ltd Class H',
(SELECT id FROM companies WHERE name='China Life Insurance Co Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China Life Insurance Co Ltd Class H'),
164055,
66362000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Bank of Ireland'),
156629,
1475842276,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Banco Bilbao Vizcaya Argentaria SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Banco Bilbao Vizcaya Argentaria SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Banco Bilbao Vizcaya Argentaria SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Banco Bilbao Vizcaya Argentaria SA',
(SELECT id FROM companies WHERE name='Banco Bilbao Vizcaya Argentaria SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Banco Bilbao Vizcaya Argentaria SA'),
154631,
17885507,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Woori Finance Holdings Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Woori Finance Holdings Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Woori Finance Holdings Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Woori Finance Holdings Co Ltd',
(SELECT id FROM companies WHERE name='Woori Finance Holdings Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Woori Finance Holdings Co Ltd'),
136220,
16584000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Royal Bank of Canada' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Royal Bank of Canada'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Royal Bank of Canada' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Royal Bank of Canada',
(SELECT id FROM companies WHERE name='Royal Bank of Canada')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Royal Bank of Canada'),
131974,
2586539,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'DLF Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'DLF Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'DLF Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'DLF Ltd',
(SELECT id FROM companies WHERE name='DLF Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='DLF Ltd'),
121220,
35157675,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'DNB ASA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'DNB ASA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'DNB ASA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'DNB ASA',
(SELECT id FROM companies WHERE name='DNB ASA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='DNB ASA'),
111775,
11417796,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ING Groep NV depository receipts' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ING Groep NV depository receipts'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ING Groep NV depository receipts' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ING Groep NV depository receipts',
(SELECT id FROM companies WHERE name='ING Groep NV depository receipts')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ING Groep NV depository receipts'),
111718,
15524880,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'PT Bank Mandiri (Persero) Tbk Series B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'PT Bank Mandiri (Persero) Tbk Series B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'PT Bank Mandiri (Persero) Tbk Series B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'PT Bank Mandiri (Persero) Tbk Series B',
(SELECT id FROM companies WHERE name='PT Bank Mandiri (Persero) Tbk Series B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='PT Bank Mandiri (Persero) Tbk Series B'),
103408,
138912075,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Daito Trust Construction Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Daito Trust Construction Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Daito Trust Construction Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Daito Trust Construction Co Ltd',
(SELECT id FROM companies WHERE name='Daito Trust Construction Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Daito Trust Construction Co Ltd'),
102640,
1197000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China Taiping Insurance Holdings Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China Taiping Insurance Holdings Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China Taiping Insurance Holdings Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China Taiping Insurance Holdings Co Ltd',
(SELECT id FROM companies WHERE name='China Taiping Insurance Holdings Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China Taiping Insurance Holdings Co Ltd'),
102567,
55319200,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Erste Bank der oesterreichischen Sparkassen AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Erste Bank der oesterreichischen Sparkassen AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Erste Bank der oesterreichischen Sparkassen AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Erste Bank der oesterreichischen Sparkassen AG',
(SELECT id FROM companies WHERE name='Erste Bank der oesterreichischen Sparkassen AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Erste Bank der oesterreichischen Sparkassen AG'),
101534,
5763451,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'PartnerRe Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'PartnerRe Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'PartnerRe Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'PartnerRe Holdings Ltd',
(SELECT id FROM companies WHERE name='PartnerRe Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='PartnerRe Holdings Ltd'),
89573,
1395000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'HSBC Holdings PLC (Hong Kong)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'HSBC Holdings PLC (Hong Kong)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'HSBC Holdings PLC (Hong Kong)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'HSBC Holdings PLC (Hong Kong)',
(SELECT id FROM companies WHERE name='HSBC Holdings PLC (Hong Kong)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='HSBC Holdings PLC (Hong Kong)'),
89177,
11738967,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Royal Bank of Scotland Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Royal Bank of Scotland Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Royal Bank of Scotland Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Royal Bank of Scotland Group PLC',
(SELECT id FROM companies WHERE name='Royal Bank of Scotland Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Royal Bank of Scotland Group PLC'),
84595,
269930602,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Samsung Card Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Samsung Card Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Samsung Card Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Samsung Card Co Ltd',
(SELECT id FROM companies WHERE name='Samsung Card Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Samsung Card Co Ltd'),
78624,
2321740,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Banco Santander (Brasil) SA units' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Banco Santander (Brasil) SA units'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Banco Santander (Brasil) SA units' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Banco Santander (Brasil) SA units',
(SELECT id FROM companies WHERE name='Banco Santander (Brasil) SA units')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Banco Santander (Brasil) SA units'),
63735,
7946600,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Banco Santander (Brasil) SA units (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Banco Santander (Brasil) SA units (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Banco Santander (Brasil) SA units (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Banco Santander (Brasil) SA units (ADR)',
(SELECT id FROM companies WHERE name='Banco Santander (Brasil) SA units (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Banco Santander (Brasil) SA units (ADR)'),
12654,
1554600,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Macquarie Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Macquarie Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Macquarie Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Macquarie Group Ltd',
(SELECT id FROM companies WHERE name='Macquarie Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Macquarie Group Ltd'),
69467,
2854922,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Türkiye Garanti Bankasi AS' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Türkiye Garanti Bankasi AS'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Türkiye Garanti Bankasi AS' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Türkiye Garanti Bankasi AS',
(SELECT id FROM companies WHERE name='Türkiye Garanti Bankasi AS')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Türkiye Garanti Bankasi AS'),
69052,
22163923,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CITIC Securities Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CITIC Securities Co Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CITIC Securities Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CITIC Securities Co Ltd Class H',
(SELECT id FROM companies WHERE name='CITIC Securities Co Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='CITIC Securities Co Ltd Class H'),
69025,
41948000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sun Hung Kai Properties Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sun Hung Kai Properties Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sun Hung Kai Properties Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sun Hung Kai Properties Ltd',
(SELECT id FROM companies WHERE name='Sun Hung Kai Properties Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Sun Hung Kai Properties Ltd'),
58849,
4695000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Chongqing Rural Commercial Bank Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Chongqing Rural Commercial Bank Co Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Chongqing Rural Commercial Bank Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Chongqing Rural Commercial Bank Co Ltd Class H',
(SELECT id FROM companies WHERE name='Chongqing Rural Commercial Bank Co Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Chongqing Rural Commercial Bank Co Ltd Class H'),
55139,
106529000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Standard Chartered PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Standard Chartered PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Standard Chartered PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Standard Chartered PLC',
(SELECT id FROM companies WHERE name='Standard Chartered PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Standard Chartered PLC'),
50219,
2295000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'QBE Insurance Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'QBE Insurance Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'QBE Insurance Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'QBE Insurance Group Ltd',
(SELECT id FROM companies WHERE name='QBE Insurance Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='QBE Insurance Group Ltd'),
36888,
2785000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Shinhan Financial Group Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Shinhan Financial Group Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Shinhan Financial Group Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Shinhan Financial Group Co Ltd',
(SELECT id FROM companies WHERE name='Shinhan Financial Group Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Shinhan Financial Group Co Ltd'),
35751,
1029840,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Lloyds Banking Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Lloyds Banking Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Lloyds Banking Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Lloyds Banking Group PLC',
(SELECT id FROM companies WHERE name='Lloyds Banking Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Lloyds Banking Group PLC'),
35145,
87359895,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Axis Bank Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Axis Bank Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Axis Bank Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Axis Bank Ltd',
(SELECT id FROM companies WHERE name='Axis Bank Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Axis Bank Ltd'),
31195,
2050000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'State Bank of India' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'State Bank of India'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'State Bank of India' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'State Bank of India',
(SELECT id FROM companies WHERE name='State Bank of India')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='State Bank of India'),
30030,
985000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China Pacific Insurance (Group) Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China Pacific Insurance (Group) Co Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China Pacific Insurance (Group) Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China Pacific Insurance (Group) Co Ltd Class H',
(SELECT id FROM companies WHERE name='China Pacific Insurance (Group) Co Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China Pacific Insurance (Group) Co Ltd Class H'),
26122,
9180000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Deutsche Börse AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Deutsche Börse AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Deutsche Börse AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Deutsche Börse AG',
(SELECT id FROM companies WHERE name='Deutsche Börse AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Deutsche Börse AG'),
25848,
493000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Svenska Handelsbanken AB Class A'),
14465,
550000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nestlé SA'),
1557463,
27091200,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='British American Tobacco PLC'),
1234462,
26014999,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Anheuser-Busch InBev NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Anheuser-Busch InBev NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Anheuser-Busch InBev NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Anheuser-Busch InBev NV',
(SELECT id FROM companies WHERE name='Anheuser-Busch InBev NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Anheuser-Busch InBev NV'),
1140651,
18630623,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Anheuser-Busch InBev NV VVPR STRIPS' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Anheuser-Busch InBev NV VVPR STRIPS'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Anheuser-Busch InBev NV VVPR STRIPS' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Anheuser-Busch InBev NV VVPR STRIPS',
(SELECT id FROM companies WHERE name='Anheuser-Busch InBev NV VVPR STRIPS')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Anheuser-Busch InBev NV VVPR STRIPS'),
13,
10093238,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Pernod Ricard SA'),
565442,
6096672,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Danone SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Danone SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Danone SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Danone SA',
(SELECT id FROM companies WHERE name='Danone SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Danone SA'),
534461,
8502168,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'L’Oréal SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'L’Oréal SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'L’Oréal SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'L’Oréal SA',
(SELECT id FROM companies WHERE name='L’Oréal SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='L’Oréal SA'),
403057,
3859000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'L’Oréal SA bonus shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'L’Oréal SA bonus shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'L’Oréal SA bonus shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'L’Oréal SA bonus shares',
(SELECT id FROM companies WHERE name='L’Oréal SA bonus shares')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='L’Oréal SA bonus shares'),
108791,
1041600,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Shoprite Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Shoprite Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Shoprite Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Shoprite Holdings Ltd',
(SELECT id FROM companies WHERE name='Shoprite Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Shoprite Holdings Ltd'),
427452,
25335000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hengan International Group Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hengan International Group Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hengan International Group Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hengan International Group Co Ltd',
(SELECT id FROM companies WHERE name='Hengan International Group Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hengan International Group Co Ltd'),
394217,
42143500,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Unilever NV depository receipts' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Unilever NV depository receipts'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Unilever NV depository receipts' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Unilever NV depository receipts',
(SELECT id FROM companies WHERE name='Unilever NV depository receipts')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Unilever NV depository receipts'),
385870,
11221000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tesco PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tesco PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tesco PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tesco PLC',
(SELECT id FROM companies WHERE name='Tesco PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Tesco PLC'),
351465,
56094558,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Associated British Foods PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Associated British Foods PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Associated British Foods PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Associated British Foods PLC',
(SELECT id FROM companies WHERE name='Associated British Foods PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Associated British Foods PLC'),
331456,
19280000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Koninklijke Ahold NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Koninklijke Ahold NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Koninklijke Ahold NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Koninklijke Ahold NV',
(SELECT id FROM companies WHERE name='Koninklijke Ahold NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Koninklijke Ahold NV'),
330109,
24513000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SABMiller PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SABMiller PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SABMiller PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SABMiller PLC',
(SELECT id FROM companies WHERE name='SABMiller PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SABMiller PLC'),
277577,
7886000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Wilmar International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Wilmar International Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Wilmar International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Wilmar International Ltd',
(SELECT id FROM companies WHERE name='Wilmar International Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Wilmar International Ltd'),
249717,
64779000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Asahi Group Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Asahi Group Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Asahi Group Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Asahi Group Holdings Ltd',
(SELECT id FROM companies WHERE name='Asahi Group Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Asahi Group Holdings Ltd'),
235303,
10716700,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Wal-Mart de México SAB de CV Series V' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Wal-Mart de México SAB de CV Series V'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Wal-Mart de México SAB de CV Series V' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Wal-Mart de México SAB de CV Series V',
(SELECT id FROM companies WHERE name='Wal-Mart de México SAB de CV Series V')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Wal-Mart de México SAB de CV Series V'),
179912,
65671436,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tingyi (Cayman Islands) Holding Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tingyi (Cayman Islands) Holding Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tingyi (Cayman Islands) Holding Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tingyi (Cayman Islands) Holding Corp',
(SELECT id FROM companies WHERE name='Tingyi (Cayman Islands) Holding Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Tingyi (Cayman Islands) Holding Corp'),
165345,
54414000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Coca-Cola Amatil Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Coca-Cola Amatil Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Coca-Cola Amatil Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Coca-Cola Amatil Ltd',
(SELECT id FROM companies WHERE name='Coca-Cola Amatil Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Coca-Cola Amatil Ltd'),
146310,
12428216,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China Resources Enterprise Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China Resources Enterprise Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China Resources Enterprise Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China Resources Enterprise Ltd',
(SELECT id FROM companies WHERE name='China Resources Enterprise Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China Resources Enterprise Ltd'),
133329,
38856000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Japan Tobacco Inc'),
132628,
28200,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Olam International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Olam International Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Olam International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Olam International Ltd',
(SELECT id FROM companies WHERE name='Olam International Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Olam International Ltd'),
120730,
73518000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Olam International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Olam International Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Olam International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Olam International Ltd',
(SELECT id FROM companies WHERE name='Olam International Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Olam International Ltd'),
5651,
3441089,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ITC Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ITC Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ITC Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ITC Ltd',
(SELECT id FROM companies WHERE name='ITC Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ITC Ltd'),
122705,
32370874,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Diageo PLC'),
120136,
5500000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China Yurun Food Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China Yurun Food Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China Yurun Food Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China Yurun Food Group Ltd',
(SELECT id FROM companies WHERE name='China Yurun Food Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China Yurun Food Group Ltd'),
115762,
88145000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cia de Bebidas das Américas – AmBev preferred nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cia de Bebidas das Américas – AmBev preferred nominative (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cia de Bebidas das Américas – AmBev preferred nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cia de Bebidas das Américas – AmBev preferred nominative (ADR)',
(SELECT id FROM companies WHERE name='Cia de Bebidas das Américas – AmBev preferred nominative (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Cia de Bebidas das Américas – AmBev preferred nominative (ADR)'),
114225,
3165000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Coca-Cola Hellenic Bottling Co SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Coca-Cola Hellenic Bottling Co SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Coca-Cola Hellenic Bottling Co SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Coca-Cola Hellenic Bottling Co SA',
(SELECT id FROM companies WHERE name='Coca-Cola Hellenic Bottling Co SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Coca-Cola Hellenic Bottling Co SA'),
97748,
5700000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'OJSC Magnit (GDR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'OJSC Magnit (GDR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'OJSC Magnit (GDR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'OJSC Magnit (GDR)',
(SELECT id FROM companies WHERE name='OJSC Magnit (GDR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='OJSC Magnit (GDR)'),
95220,
4500000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Woolworths Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Woolworths Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Woolworths Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Woolworths Ltd',
(SELECT id FROM companies WHERE name='Woolworths Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Woolworths Ltd'),
86018,
3350626,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Unilever PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Unilever PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Unilever PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Unilever PLC',
(SELECT id FROM companies WHERE name='Unilever PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Unilever PLC'),
84877,
2526750,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Wesfarmers Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Wesfarmers Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Wesfarmers Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Wesfarmers Ltd',
(SELECT id FROM companies WHERE name='Wesfarmers Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Wesfarmers Ltd'),
45202,
1498120,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Honda Motor Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Honda Motor Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Honda Motor Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Honda Motor Co Ltd',
(SELECT id FROM companies WHERE name='Honda Motor Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Honda Motor Co Ltd'),
838662,
27492250,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Volkswagen AG nonvoting preferred'),
619398,
4134575,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hyundai Motor Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hyundai Motor Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hyundai Motor Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hyundai Motor Co',
(SELECT id FROM companies WHERE name='Hyundai Motor Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hyundai Motor Co'),
582521,
3134390,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Daimler AG (EUR denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Daimler AG (EUR denominated)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Daimler AG (EUR denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Daimler AG (EUR denominated)',
(SELECT id FROM companies WHERE name='Daimler AG (EUR denominated)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Daimler AG (EUR denominated)'),
472621,
10765616,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Daimler AG'),
5482,
125000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kia Motors Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kia Motors Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kia Motors Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kia Motors Corp',
(SELECT id FROM companies WHERE name='Kia Motors Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Kia Motors Corp'),
439679,
7559160,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Li & Fung Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Li & Fung Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Li & Fung Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Li & Fung Ltd',
(SELECT id FROM companies WHERE name='Li & Fung Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Li & Fung Ltd'),
433537,
234152000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hyundai Mobis Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hyundai Mobis Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hyundai Mobis Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hyundai Mobis Co Ltd',
(SELECT id FROM companies WHERE name='Hyundai Mobis Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hyundai Mobis Co Ltd'),
396208,
1555000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'adidas AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'adidas AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'adidas AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'adidas AG',
(SELECT id FROM companies WHERE name='adidas AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='adidas AG'),
368047,
5658000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'H & M Hennes & Mauritz AB Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'H & M Hennes & Mauritz AB Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'H & M Hennes & Mauritz AB Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'H & M Hennes & Mauritz AB Class B',
(SELECT id FROM companies WHERE name='H & M Hennes & Mauritz AB Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='H & M Hennes & Mauritz AB Class B'),
366310,
11391611,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hero MotoCorp Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hero MotoCorp Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hero MotoCorp Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hero MotoCorp Ltd',
(SELECT id FROM companies WHERE name='Hero MotoCorp Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hero MotoCorp Ltd'),
357868,
9975363,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Industria de Diseño Textil SA'),
326387,
3985180,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Naspers Ltd Class N'),
321577,
7350000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nikon Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nikon Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nikon Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nikon Corp',
(SELECT id FROM companies WHERE name='Nikon Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nikon Corp'),
318532,
14304200,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='British Sky Broadcasting Group PLC'),
304756,
26790000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Toyota Motor Corp'),
302698,
9083300,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nissan Motor Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nissan Motor Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nissan Motor Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nissan Motor Co Ltd',
(SELECT id FROM companies WHERE name='Nissan Motor Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nissan Motor Co Ltd'),
296281,
32954800,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Yamada Denki Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Yamada Denki Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Yamada Denki Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Yamada Denki Co Ltd',
(SELECT id FROM companies WHERE name='Yamada Denki Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Yamada Denki Co Ltd'),
234336,
3442150,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tata Motors Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tata Motors Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tata Motors Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tata Motors Ltd',
(SELECT id FROM companies WHERE name='Tata Motors Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Tata Motors Ltd'),
234023,
69545458,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bayerische Motoren Werke AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bayerische Motoren Werke AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bayerische Motoren Werke AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bayerische Motoren Werke AG',
(SELECT id FROM companies WHERE name='Bayerische Motoren Werke AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Bayerische Motoren Werke AG'),
221671,
3309000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Swatch Group Ltd non-registered shares'),
186658,
498800,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Swatch Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Swatch Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Swatch Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Swatch Group Ltd',
(SELECT id FROM companies WHERE name='Swatch Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Swatch Group Ltd'),
31889,
478484,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Sands China Ltd'),
215235,
76156800,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cie Générale des Établissements Michelin Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cie Générale des Établissements Michelin Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cie Générale des Établissements Michelin Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cie Générale des Établissements Michelin Class B',
(SELECT id FROM companies WHERE name='Cie Générale des Établissements Michelin Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Cie Générale des Établissements Michelin Class B'),
207293,
3506615,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'PT Astra International Tbk' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'PT Astra International Tbk'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'PT Astra International Tbk' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'PT Astra International Tbk',
(SELECT id FROM companies WHERE name='PT Astra International Tbk')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='PT Astra International Tbk'),
200463,
24563500,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Burberry Group PLC'),
164192,
8922000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ctripcom International Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ctripcom International Ltd (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ctripcom International Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ctripcom International Ltd (ADR)',
(SELECT id FROM companies WHERE name='Ctripcom International Ltd (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Ctripcom International Ltd (ADR)'),
159284,
6807000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='WPP PLC'),
144433,
13768000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Belle International Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Belle International Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Belle International Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Belle International Holdings Ltd',
(SELECT id FROM companies WHERE name='Belle International Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Belle International Holdings Ltd'),
141561,
81200000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'LVMH Moët Hennessey-Louis Vuitton SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'LVMH Moët Hennessey-Louis Vuitton SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'LVMH Moët Hennessey-Louis Vuitton SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'LVMH Moët Hennessey-Louis Vuitton SA',
(SELECT id FROM companies WHERE name='LVMH Moët Hennessey-Louis Vuitton SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='LVMH Moët Hennessey-Louis Vuitton SA'),
138759,
980000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Shangri-La Asia Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Shangri-La Asia Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Shangri-La Asia Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Shangri-La Asia Ltd',
(SELECT id FROM companies WHERE name='Shangri-La Asia Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Shangri-La Asia Ltd'),
121056,
70164000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Truworths International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Truworths International Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Truworths International Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Truworths International Ltd',
(SELECT id FROM companies WHERE name='Truworths International Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Truworths International Ltd'),
97887,
10700000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Renault SA'),
96880,
2793065,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Carnival PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Carnival PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Carnival PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Carnival PLC',
(SELECT id FROM companies WHERE name='Carnival PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Carnival PLC'),
82542,
2500000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Suzuki Motor Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Suzuki Motor Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Suzuki Motor Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Suzuki Motor Corp',
(SELECT id FROM companies WHERE name='Suzuki Motor Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Suzuki Motor Corp'),
81623,
3946333,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='JCDecaux SA'),
81270,
3528700,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Intercontinental Hotels Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Intercontinental Hotels Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Intercontinental Hotels Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Intercontinental Hotels Group PLC',
(SELECT id FROM companies WHERE name='Intercontinental Hotels Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Intercontinental Hotels Group PLC'),
70076,
3900000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Isuzu Motors Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Isuzu Motors Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Isuzu Motors Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Isuzu Motors Ltd',
(SELECT id FROM companies WHERE name='Isuzu Motors Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Isuzu Motors Ltd'),
67065,
14500000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Techtronic Industries Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Techtronic Industries Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Techtronic Industries Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Techtronic Industries Co Ltd',
(SELECT id FROM companies WHERE name='Techtronic Industries Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Techtronic Industries Co Ltd'),
45075,
43815000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Dongfeng Motor Group Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Dongfeng Motor Group Co Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Dongfeng Motor Group Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Dongfeng Motor Group Co Ltd Class H',
(SELECT id FROM companies WHERE name='Dongfeng Motor Group Co Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Dongfeng Motor Group Co Ltd Class H'),
44934,
26200000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kingfisher PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kingfisher PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kingfisher PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kingfisher PLC',
(SELECT id FROM companies WHERE name='Kingfisher PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Kingfisher PLC'),
36051,
9259650,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Marks and Spencer Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Marks and Spencer Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Marks and Spencer Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Marks and Spencer Group PLC',
(SELECT id FROM companies WHERE name='Marks and Spencer Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Marks and Spencer Group PLC'),
27849,
5766023,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Carphone Warehouse Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Carphone Warehouse Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Carphone Warehouse Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Carphone Warehouse Group PLC',
(SELECT id FROM companies WHERE name='Carphone Warehouse Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Carphone Warehouse Group PLC'),
27752,
5783088,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Whitbread PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Whitbread PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Whitbread PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Whitbread PLC',
(SELECT id FROM companies WHERE name='Whitbread PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Whitbread PLC'),
15603,
642382,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Dixons Retail PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Dixons Retail PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Dixons Retail PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Dixons Retail PLC',
(SELECT id FROM companies WHERE name='Dixons Retail PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Dixons Retail PLC'),
4938,
32378948,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Novo Nordisk A/S Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Novo Nordisk A/S Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Novo Nordisk A/S Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Novo Nordisk A/S Class B',
(SELECT id FROM companies WHERE name='Novo Nordisk A/S Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Novo Nordisk A/S Class B'),
2544183,
22139400,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Novartis AG'),
1930852,
33773725,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bayer AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bayer AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bayer AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bayer AG',
(SELECT id FROM companies WHERE name='Bayer AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Bayer AG'),
1225935,
19174425,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Teva Pharmaceutical Industries Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Teva Pharmaceutical Industries Ltd (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Teva Pharmaceutical Industries Ltd (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Teva Pharmaceutical Industries Ltd (ADR)',
(SELECT id FROM companies WHERE name='Teva Pharmaceutical Industries Ltd (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Teva Pharmaceutical Industries Ltd (ADR)'),
1034923,
25642300,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Roche Holding AG'),
774900,
4572007,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'UCB SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'UCB SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'UCB SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'UCB SA',
(SELECT id FROM companies WHERE name='UCB SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='UCB SA'),
501488,
11918602,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CSL Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CSL Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CSL Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CSL Ltd',
(SELECT id FROM companies WHERE name='CSL Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='CSL Ltd'),
416626,
12729329,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sonova Holding AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sonova Holding AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sonova Holding AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sonova Holding AG',
(SELECT id FROM companies WHERE name='Sonova Holding AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Sonova Holding AG'),
258360,
2470000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Sinopharm Group Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Sinopharm Group Co Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Sinopharm Group Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Sinopharm Group Co Ltd Class H',
(SELECT id FROM companies WHERE name='Sinopharm Group Co Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Sinopharm Group Co Ltd Class H'),
129356,
53840000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Merck KGaA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Merck KGaA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Merck KGaA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Merck KGaA',
(SELECT id FROM companies WHERE name='Merck KGaA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Merck KGaA'),
109538,
1098724,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Grifols SA Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Grifols SA Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Grifols SA Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Grifols SA Class A',
(SELECT id FROM companies WHERE name='Grifols SA Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Grifols SA Class A'),
101793,
6050000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Terumo Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Terumo Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Terumo Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Terumo Corp',
(SELECT id FROM companies WHERE name='Terumo Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Terumo Corp'),
102434,
2175000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Essilor International' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Essilor International'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Essilor International' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Essilor International',
(SELECT id FROM companies WHERE name='Essilor International')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Essilor International'),
70742,
1002000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Smith & Nephew PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Smith & Nephew PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Smith & Nephew PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Smith & Nephew PLC',
(SELECT id FROM companies WHERE name='Smith & Nephew PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Smith & Nephew PLC'),
43635,
4492000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Samsung Electronics Co Ltd'),
2135770,
2320709,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Samsung Electronics Co Ltd nonvoting preferred' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Samsung Electronics Co Ltd nonvoting preferred'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Samsung Electronics Co Ltd nonvoting preferred' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Samsung Electronics Co Ltd nonvoting preferred',
(SELECT id FROM companies WHERE name='Samsung Electronics Co Ltd nonvoting preferred')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Samsung Electronics Co Ltd nonvoting preferred'),
28353,
48800,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Taiwan Semiconductor Manufacturing Co Ltd'),
1022045,
408265136,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Taiwan Semiconductor Manufacturing Co Ltd (ADR)'),
75171,
5822723,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Canon Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Canon Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Canon Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Canon Inc',
(SELECT id FROM companies WHERE name='Canon Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Canon Inc'),
731509,
16511500,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Murata Manufacturing Co Ltd'),
575507,
11200200,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ASML Holding NV'),
558262,
13282222,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'HTC Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'HTC Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'HTC Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'HTC Corp',
(SELECT id FROM companies WHERE name='HTC Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='HTC Corp'),
519044,
31622010,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tencent Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tencent Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tencent Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tencent Holdings Ltd',
(SELECT id FROM companies WHERE name='Tencent Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Tencent Holdings Ltd'),
393637,
19585000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Infineon Technologies AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Infineon Technologies AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Infineon Technologies AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Infineon Technologies AG',
(SELECT id FROM companies WHERE name='Infineon Technologies AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Infineon Technologies AG'),
374825,
49795000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SAP AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SAP AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SAP AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SAP AG',
(SELECT id FROM companies WHERE name='SAP AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SAP AG'),
265249,
5017000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SAP AG (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SAP AG (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SAP AG (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SAP AG (ADR)',
(SELECT id FROM companies WHERE name='SAP AG (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SAP AG (ADR)'),
99546,
1880000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Arm Holdings PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Arm Holdings PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Arm Holdings PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Arm Holdings PLC',
(SELECT id FROM companies WHERE name='Arm Holdings PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Arm Holdings PLC'),
247956,
26970000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'HOYA Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'HOYA Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'HOYA Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'HOYA Corp',
(SELECT id FROM companies WHERE name='HOYA Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='HOYA Corp'),
233934,
10860000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'NetEasecom Inc (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'NetEasecom Inc (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'NetEasecom Inc (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'NetEasecom Inc (ADR)',
(SELECT id FROM companies WHERE name='NetEasecom Inc (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='NetEasecom Inc (ADR)'),
232319,
5179900,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nokia Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nokia Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nokia Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nokia Corp',
(SELECT id FROM companies WHERE name='Nokia Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nokia Corp'),
199182,
40800000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Quanta Computer Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Quanta Computer Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Quanta Computer Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Quanta Computer Inc',
(SELECT id FROM companies WHERE name='Quanta Computer Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Quanta Computer Inc'),
197870,
94055000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nintendo Co Ltd'),
190103,
1380400,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Baidu Inc Class A (ADR)'),
149082,
1280000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hon Hai Precision Industry Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hon Hai Precision Industry Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hon Hai Precision Industry Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hon Hai Precision Industry Co Ltd',
(SELECT id FROM companies WHERE name='Hon Hai Precision Industry Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hon Hai Precision Industry Co Ltd'),
142367,
51999120,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='MediaTek Inc'),
141161,
15402625,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hirose Electric Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hirose Electric Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hirose Electric Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hirose Electric Co Ltd',
(SELECT id FROM companies WHERE name='Hirose Electric Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hirose Electric Co Ltd'),
108945,
1242300,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ZTE Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ZTE Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ZTE Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ZTE Corp',
(SELECT id FROM companies WHERE name='ZTE Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ZTE Corp'),
98634,
31460000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Delta Electronics Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Delta Electronics Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Delta Electronics Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Delta Electronics Inc',
(SELECT id FROM companies WHERE name='Delta Electronics Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Delta Electronics Inc'),
79653,
33497563,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nippon Electric Glass Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nippon Electric Glass Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nippon Electric Glass Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nippon Electric Glass Co Ltd',
(SELECT id FROM companies WHERE name='Nippon Electric Glass Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nippon Electric Glass Co Ltd'),
66825,
6750000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Ibiden Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Ibiden Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Ibiden Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Ibiden Co Ltd',
(SELECT id FROM companies WHERE name='Ibiden Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Ibiden Co Ltd'),
53295,
2695200,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'STMicroelectronics NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'STMicroelectronics NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'STMicroelectronics NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'STMicroelectronics NV',
(SELECT id FROM companies WHERE name='STMicroelectronics NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='STMicroelectronics NV'),
39573,
6659948,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Keyence Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Keyence Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Keyence Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Keyence Corp',
(SELECT id FROM companies WHERE name='Keyence Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Keyence Corp'),
34964,
145000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Rohm Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Rohm Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Rohm Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Rohm Co Ltd',
(SELECT id FROM companies WHERE name='Rohm Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Rohm Co Ltd'),
33241,
712700,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Schneider Electric SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Schneider Electric SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Schneider Electric SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Schneider Electric SA',
(SELECT id FROM companies WHERE name='Schneider Electric SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Schneider Electric SA'),
661820,
12570156,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Atlas Copco AB Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Atlas Copco AB Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Atlas Copco AB Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Atlas Copco AB Class A',
(SELECT id FROM companies WHERE name='Atlas Copco AB Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Atlas Copco AB Class A'),
291804,
13569000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Atlas Copco AB Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Atlas Copco AB Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Atlas Copco AB Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Atlas Copco AB Class B',
(SELECT id FROM companies WHERE name='Atlas Copco AB Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Atlas Copco AB Class B'),
219709,
11560000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Ryanair Holdings PLC (ADR)'),
480117,
17233200,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Siemens AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Siemens AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Siemens AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Siemens AG',
(SELECT id FROM companies WHERE name='Siemens AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Siemens AG'),
470063,
4912000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Komatsu Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Komatsu Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Komatsu Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Komatsu Ltd',
(SELECT id FROM companies WHERE name='Komatsu Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Komatsu Ltd'),
336909,
14414600,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Legrand SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Legrand SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Legrand SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Legrand SA',
(SELECT id FROM companies WHERE name='Legrand SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Legrand SA'),
326027,
10137000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Capita Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Capita Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Capita Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Capita Group PLC',
(SELECT id FROM companies WHERE name='Capita Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Capita Group PLC'),
303838,
31129005,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kubota Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kubota Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kubota Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kubota Corp',
(SELECT id FROM companies WHERE name='Kubota Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Kubota Corp'),
283508,
33832000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Weir Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Weir Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Weir Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Weir Group PLC',
(SELECT id FROM companies WHERE name='Weir Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Weir Group PLC'),
248195,
7865000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'European Aeronautic Defence and Space Co EADS NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'European Aeronautic Defence and Space Co EADS NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'European Aeronautic Defence and Space Co EADS NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'European Aeronautic Defence and Space Co EADS NV',
(SELECT id FROM companies WHERE name='European Aeronautic Defence and Space Co EADS NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='European Aeronautic Defence and Space Co EADS NV'),
241200,
7716890,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ASSA ABLOY AB Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ASSA ABLOY AB Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ASSA ABLOY AB Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ASSA ABLOY AB Class B',
(SELECT id FROM companies WHERE name='ASSA ABLOY AB Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ASSA ABLOY AB Class B'),
222658,
8878000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Experian PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Experian PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Experian PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Experian PLC',
(SELECT id FROM companies WHERE name='Experian PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Experian PLC'),
197693,
14540000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AB Volvo Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AB Volvo Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AB Volvo Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AB Volvo Class B',
(SELECT id FROM companies WHERE name='AB Volvo Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='AB Volvo Class B'),
196947,
18000000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Geberit AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Geberit AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Geberit AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Geberit AG',
(SELECT id FROM companies WHERE name='Geberit AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Geberit AG'),
184989,
960000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'FANUC CORP' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'FANUC CORP'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'FANUC CORP' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'FANUC CORP',
(SELECT id FROM companies WHERE name='FANUC CORP')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='FANUC CORP'),
176157,
1151000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Meggitt PLC'),
161036,
29391547,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Marubeni Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Marubeni Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Marubeni Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Marubeni Corp',
(SELECT id FROM companies WHERE name='Marubeni Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Marubeni Corp'),
157207,
25800000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Beijing Enterprises Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Beijing Enterprises Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Beijing Enterprises Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Beijing Enterprises Holdings Ltd',
(SELECT id FROM companies WHERE name='Beijing Enterprises Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Beijing Enterprises Holdings Ltd'),
157201,
26200000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='KONE Oyj Class B'),
142775,
2751000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Jardine Matheson Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Jardine Matheson Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Jardine Matheson Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Jardine Matheson Holdings Ltd',
(SELECT id FROM companies WHERE name='Jardine Matheson Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Jardine Matheson Holdings Ltd'),
141592,
3009400,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Bureau Veritas SA'),
131683,
1807181,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Vallourec SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Vallourec SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Vallourec SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Vallourec SA',
(SELECT id FROM companies WHERE name='Vallourec SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Vallourec SA'),
126204,
1944000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Aggreko PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Aggreko PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Aggreko PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Aggreko PLC',
(SELECT id FROM companies WHERE name='Aggreko PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Aggreko PLC'),
118619,
3786843,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Noble Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Noble Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Noble Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Noble Group Ltd',
(SELECT id FROM companies WHERE name='Noble Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Noble Group Ltd'),
117629,
135018000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SMC Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SMC Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SMC Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SMC Corp',
(SELECT id FROM companies WHERE name='SMC Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SMC Corp'),
115486,
715700,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ABB Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ABB Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ABB Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ABB Ltd',
(SELECT id FROM companies WHERE name='ABB Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ABB Ltd'),
105406,
5600000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hutchison Port Holdings Trust' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hutchison Port Holdings Trust'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hutchison Port Holdings Trust' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hutchison Port Holdings Trust',
(SELECT id FROM companies WHERE name='Hutchison Port Holdings Trust')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hutchison Port Holdings Trust'),
101415,
163573000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'International Consolidated Airlines Group SA (CDI) (GBP denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'International Consolidated Airlines Group SA (CDI) (GBP denominated)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'International Consolidated Airlines Group SA (CDI) (GBP denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'International Consolidated Airlines Group SA (CDI) (GBP denominated)',
(SELECT id FROM companies WHERE name='International Consolidated Airlines Group SA (CDI) (GBP denominated)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='International Consolidated Airlines Group SA (CDI) (GBP denominated)'),
98021,
42820400,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'ITOCHU Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'ITOCHU Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'ITOCHU Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'ITOCHU Corp',
(SELECT id FROM companies WHERE name='ITOCHU Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ITOCHU Corp'),
96518,
9500000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BAE Systems PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BAE Systems PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BAE Systems PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BAE Systems PLC',
(SELECT id FROM companies WHERE name='BAE Systems PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='BAE Systems PLC'),
92836,
20967468,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Alstom SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Alstom SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Alstom SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Alstom SA',
(SELECT id FROM companies WHERE name='Alstom SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Alstom SA'),
83028,
2738000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nabtesco Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nabtesco Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nabtesco Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nabtesco Corp',
(SELECT id FROM companies WHERE name='Nabtesco Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nabtesco Corp'),
82025,
4500000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Qantas Airways Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Qantas Airways Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Qantas Airways Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Qantas Airways Ltd',
(SELECT id FROM companies WHERE name='Qantas Airways Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Qantas Airways Ltd'),
80638,
54000000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Adani Enterprises Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Adani Enterprises Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Adani Enterprises Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Adani Enterprises Ltd',
(SELECT id FROM companies WHERE name='Adani Enterprises Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Adani Enterprises Ltd'),
72315,
13080023,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Vestas Wind Systems A/S' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Vestas Wind Systems A/S'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Vestas Wind Systems A/S' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Vestas Wind Systems A/S',
(SELECT id FROM companies WHERE name='Vestas Wind Systems A/S')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Vestas Wind Systems A/S'),
66678,
6176677,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SGS SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SGS SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SGS SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SGS SA',
(SELECT id FROM companies WHERE name='SGS SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SGS SA'),
64289,
38834,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Serco Group PLC'),
61319,
8330000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'AP Moller-Maersk A/S Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'AP Moller-Maersk A/S Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'AP Moller-Maersk A/S Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'AP Moller-Maersk A/S Class B',
(SELECT id FROM companies WHERE name='AP Moller-Maersk A/S Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='AP Moller-Maersk A/S Class B'),
59779,
9054,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Fiat Industrial SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Fiat Industrial SpA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Fiat Industrial SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Fiat Industrial SpA',
(SELECT id FROM companies WHERE name='Fiat Industrial SpA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Fiat Industrial SpA'),
57449,
6700000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Brambles Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Brambles Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Brambles Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Brambles Ltd',
(SELECT id FROM companies WHERE name='Brambles Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Brambles Ltd'),
56549,
7721872,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Makita Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Makita Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Makita Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Makita Corp',
(SELECT id FROM companies WHERE name='Makita Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Makita Corp'),
46254,
1429200,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China Merchants Holdings (International) Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China Merchants Holdings (International) Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China Merchants Holdings (International) Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China Merchants Holdings (International) Co Ltd',
(SELECT id FROM companies WHERE name='China Merchants Holdings (International) Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China Merchants Holdings (International) Co Ltd'),
42650,
14689347,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Air France' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Air France'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Air France' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Air France',
(SELECT id FROM companies WHERE name='Air France')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Air France'),
41963,
8160720,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Kühne + Nagel International AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Kühne + Nagel International AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Kühne + Nagel International AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Kühne + Nagel International AG',
(SELECT id FROM companies WHERE name='Kühne + Nagel International AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Kühne + Nagel International AG'),
37065,
330000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Daikin Industries Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Daikin Industries Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Daikin Industries Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Daikin Industries Ltd',
(SELECT id FROM companies WHERE name='Daikin Industries Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Daikin Industries Ltd'),
21773,
795000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'América Móvil SAB de CV Series L (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'América Móvil SAB de CV Series L (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'América Móvil SAB de CV Series L (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'América Móvil SAB de CV Series L (ADR)',
(SELECT id FROM companies WHERE name='América Móvil SAB de CV Series L (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='América Móvil SAB de CV Series L (ADR)'),
1908172,
84432402,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'América Móvil SAB de CV Series L' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'América Móvil SAB de CV Series L'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'América Móvil SAB de CV Series L' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'América Móvil SAB de CV Series L',
(SELECT id FROM companies WHERE name='América Móvil SAB de CV Series L')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='América Móvil SAB de CV Series L'),
158759,
140040000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SOFTBANK CORP' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SOFTBANK CORP'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SOFTBANK CORP' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SOFTBANK CORP',
(SELECT id FROM companies WHERE name='SOFTBANK CORP')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SOFTBANK CORP'),
1452120,
49302900,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'MTN Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'MTN Group Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'MTN Group Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'MTN Group Ltd',
(SELECT id FROM companies WHERE name='MTN Group Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='MTN Group Ltd'),
646744,
36324200,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Koninklijke KPN NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Koninklijke KPN NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Koninklijke KPN NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Koninklijke KPN NV',
(SELECT id FROM companies WHERE name='Koninklijke KPN NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Koninklijke KPN NV'),
531644,
44432000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Vodafone Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Vodafone Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Vodafone Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Vodafone Group PLC',
(SELECT id FROM companies WHERE name='Vodafone Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Vodafone Group PLC'),
387144,
139344919,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'OJSC Mobile TeleSystems (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'OJSC Mobile TeleSystems (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'OJSC Mobile TeleSystems (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'OJSC Mobile TeleSystems (ADR)',
(SELECT id FROM companies WHERE name='OJSC Mobile TeleSystems (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='OJSC Mobile TeleSystems (ADR)'),
339829,
23149100,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Telefónica SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Telefónica SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Telefónica SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Telefónica SA',
(SELECT id FROM companies WHERE name='Telefónica SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Telefónica SA'),
297376,
17166000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'TeliaSonera AB' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'TeliaSonera AB'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'TeliaSonera AB' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'TeliaSonera AB',
(SELECT id FROM companies WHERE name='TeliaSonera AB')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='TeliaSonera AB'),
261207,
38435700,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China Telecom Corp Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China Telecom Corp Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China Telecom Corp Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China Telecom Corp Ltd Class H',
(SELECT id FROM companies WHERE name='China Telecom Corp Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China Telecom Corp Ltd Class H'),
239504,
420844000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Portugal Telecom SGPS SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Portugal Telecom SGPS SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Portugal Telecom SGPS SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Portugal Telecom SGPS SA',
(SELECT id FROM companies WHERE name='Portugal Telecom SGPS SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Portugal Telecom SGPS SA'),
150004,
26045000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Bharti Airtel Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Bharti Airtel Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Bharti Airtel Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Bharti Airtel Ltd',
(SELECT id FROM companies WHERE name='Bharti Airtel Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Bharti Airtel Ltd'),
127685,
19740000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Axiata Group Bhd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Axiata Group Bhd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Axiata Group Bhd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Axiata Group Bhd',
(SELECT id FROM companies WHERE name='Axiata Group Bhd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Axiata Group Bhd'),
112659,
69481000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Advanced Info Service PCL' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Advanced Info Service PCL'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Advanced Info Service PCL' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Advanced Info Service PCL',
(SELECT id FROM companies WHERE name='Advanced Info Service PCL')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Advanced Info Service PCL'),
110536,
24821500,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Millicom International Cellular SA (SDR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Millicom International Cellular SA (SDR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Millicom International Cellular SA (SDR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Millicom International Cellular SA (SDR)',
(SELECT id FROM companies WHERE name='Millicom International Cellular SA (SDR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Millicom International Cellular SA (SDR)'),
94177,
940000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Iliad SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Iliad SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Iliad SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Iliad SA',
(SELECT id FROM companies WHERE name='Iliad SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Iliad SA'),
81140,
657500,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Telekomunikacja Polska SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Telekomunikacja Polska SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Telekomunikacja Polska SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Telekomunikacja Polska SA',
(SELECT id FROM companies WHERE name='Telekomunikacja Polska SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Telekomunikacja Polska SA'),
74902,
15001227,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Turkcell Iletisim Hizmetleri AS' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Turkcell Iletisim Hizmetleri AS'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Turkcell Iletisim Hizmetleri AS' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Turkcell Iletisim Hizmetleri AS',
(SELECT id FROM companies WHERE name='Turkcell Iletisim Hizmetleri AS')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Turkcell Iletisim Hizmetleri AS'),
59341,
12655000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'TalkTalk Telecom Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'TalkTalk Telecom Group PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'TalkTalk Telecom Group PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'TalkTalk Telecom Group PLC',
(SELECT id FROM companies WHERE name='TalkTalk Telecom Group PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='TalkTalk Telecom Group PLC'),
25698,
12230000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tele Norte Leste Participações SA ordinary nominative' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tele Norte Leste Participações SA ordinary nominative'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tele Norte Leste Participações SA ordinary nominative' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tele Norte Leste Participações SA ordinary nominative',
(SELECT id FROM companies WHERE name='Tele Norte Leste Participações SA ordinary nominative')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Tele Norte Leste Participações SA ordinary nominative'),
4915,
427200,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Syngenta AG'),
607300,
2074315,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Linde AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Linde AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Linde AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Linde AG',
(SELECT id FROM companies WHERE name='Linde AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Linde AG'),
460530,
3095500,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Potash Corp of Saskatchewan Inc'),
368011,
8915000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Holcim Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Holcim Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Holcim Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Holcim Ltd',
(SELECT id FROM companies WHERE name='Holcim Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Holcim Ltd'),
346371,
6474544,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nitto Denko Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nitto Denko Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nitto Denko Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nitto Denko Corp',
(SELECT id FROM companies WHERE name='Nitto Denko Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nitto Denko Corp'),
327077,
9141300,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'PT Semen Gresik (Persero) Tbk' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'PT Semen Gresik (Persero) Tbk'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'PT Semen Gresik (Persero) Tbk' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'PT Semen Gresik (Persero) Tbk',
(SELECT id FROM companies WHERE name='PT Semen Gresik (Persero) Tbk')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='PT Semen Gresik (Persero) Tbk'),
272984,
216182000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Impala Platinum Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Impala Platinum Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Impala Platinum Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Impala Platinum Holdings Ltd',
(SELECT id FROM companies WHERE name='Impala Platinum Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Impala Platinum Holdings Ltd'),
265467,
12805488,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'POSCO' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'POSCO'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'POSCO' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'POSCO',
(SELECT id FROM companies WHERE name='POSCO')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='POSCO'),
256687,
775000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BASF SE' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BASF SE'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BASF SE' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BASF SE',
(SELECT id FROM companies WHERE name='BASF SE')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='BASF SE'),
251787,
3610000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Amcor Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Amcor Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Amcor Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Amcor Ltd',
(SELECT id FROM companies WHERE name='Amcor Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Amcor Ltd'),
250397,
33954916,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='ArcelorMittal'),
193352,
10572736,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Orica Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Orica Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Orica Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Orica Ltd',
(SELECT id FROM companies WHERE name='Orica Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Orica Ltd'),
191370,
7718819,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CRH PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CRH PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CRH PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CRH PLC',
(SELECT id FROM companies WHERE name='CRH PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='CRH PLC'),
181945,
9152320,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Shin-Etsu Chemical Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Shin-Etsu Chemical Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Shin-Etsu Chemical Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Shin-Etsu Chemical Co Ltd',
(SELECT id FROM companies WHERE name='Shin-Etsu Chemical Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Shin-Etsu Chemical Co Ltd'),
177756,
3610000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'First Quantum Minerals Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'First Quantum Minerals Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'First Quantum Minerals Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'First Quantum Minerals Ltd',
(SELECT id FROM companies WHERE name='First Quantum Minerals Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='First Quantum Minerals Ltd'),
167101,
8490500,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Chr Hansen Holding A/S' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Chr Hansen Holding A/S'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Chr Hansen Holding A/S' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Chr Hansen Holding A/S',
(SELECT id FROM companies WHERE name='Chr Hansen Holding A/S')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Chr Hansen Holding A/S'),
150077,
6901000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'UltraTech Cement Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'UltraTech Cement Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'UltraTech Cement Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'UltraTech Cement Ltd',
(SELECT id FROM companies WHERE name='UltraTech Cement Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='UltraTech Cement Ltd'),
147485,
6714283,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'K+S AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'K+S AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'K+S AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'K+S AG',
(SELECT id FROM companies WHERE name='K+S AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='K+S AG'),
141144,
3123000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'L’Air Liquide SA bonus shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'L’Air Liquide SA bonus shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'L’Air Liquide SA bonus shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'L’Air Liquide SA bonus shares',
(SELECT id FROM companies WHERE name='L’Air Liquide SA bonus shares')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='L’Air Liquide SA bonus shares'),
101276,
818610,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'L’Air Liquide SA non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'L’Air Liquide SA non-registered shares'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'L’Air Liquide SA non-registered shares' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'L’Air Liquide SA non-registered shares',
(SELECT id FROM companies WHERE name='L’Air Liquide SA non-registered shares')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='L’Air Liquide SA non-registered shares'),
29254,
236456,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Vedanta Resources PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Vedanta Resources PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Vedanta Resources PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Vedanta Resources PLC',
(SELECT id FROM companies WHERE name='Vedanta Resources PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Vedanta Resources PLC'),
126925,
8052097,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Svenska Cellulosa AB SCA Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Svenska Cellulosa AB SCA Class B'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Svenska Cellulosa AB SCA Class B' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Svenska Cellulosa AB SCA Class B',
(SELECT id FROM companies WHERE name='Svenska Cellulosa AB SCA Class B')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Svenska Cellulosa AB SCA Class B'),
108287,
7306260,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'JFE Holdings Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'JFE Holdings Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'JFE Holdings Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'JFE Holdings Inc',
(SELECT id FROM companies WHERE name='JFE Holdings Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='JFE Holdings Inc'),
93525,
5164000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'BHP Billiton PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'BHP Billiton PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'BHP Billiton PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'BHP Billiton PLC',
(SELECT id FROM companies WHERE name='BHP Billiton PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='BHP Billiton PLC'),
87473,
3000000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Akzo Nobel NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Akzo Nobel NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Akzo Nobel NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Akzo Nobel NV',
(SELECT id FROM companies WHERE name='Akzo Nobel NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Akzo Nobel NV'),
86552,
1790000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Vale SA ordinary nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Vale SA ordinary nominative (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Vale SA ordinary nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Vale SA ordinary nominative (ADR)',
(SELECT id FROM companies WHERE name='Vale SA ordinary nominative (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Vale SA ordinary nominative (ADR)'),
85800,
4000000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Anhui Conch Cement Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Anhui Conch Cement Co Ltd Class H'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Anhui Conch Cement Co Ltd Class H' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Anhui Conch Cement Co Ltd Class H',
(SELECT id FROM companies WHERE name='Anhui Conch Cement Co Ltd Class H')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Anhui Conch Cement Co Ltd Class H'),
74226,
25010000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Koninklijke DSM NV' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Koninklijke DSM NV'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Koninklijke DSM NV' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Koninklijke DSM NV',
(SELECT id FROM companies WHERE name='Koninklijke DSM NV')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Koninklijke DSM NV'),
70340,
1515979,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Jindal Steel & Power Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Jindal Steel & Power Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Jindal Steel & Power Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Jindal Steel & Power Ltd',
(SELECT id FROM companies WHERE name='Jindal Steel & Power Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Jindal Steel & Power Ltd'),
58878,
6900000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Rio Tinto PLC'),
58238,
1200000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Grasim Industries Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Grasim Industries Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Grasim Industries Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Grasim Industries Ltd',
(SELECT id FROM companies WHERE name='Grasim Industries Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Grasim Industries Ltd'),
53355,
1138500,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Titan Cement Co SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Titan Cement Co SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Titan Cement Co SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Titan Cement Co SA',
(SELECT id FROM companies WHERE name='Titan Cement Co SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Titan Cement Co SA'),
52816,
3521000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Barrick Gold Corp'),
47513,
1050000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Formosa Chemicals & Fibre Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Formosa Chemicals & Fibre Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Formosa Chemicals & Fibre Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Formosa Chemicals & Fibre Corp',
(SELECT id FROM companies WHERE name='Formosa Chemicals & Fibre Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Formosa Chemicals & Fibre Corp'),
47419,
17970000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Givaudan SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Givaudan SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Givaudan SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Givaudan SA',
(SELECT id FROM companies WHERE name='Givaudan SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Givaudan SA'),
43194,
45332,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Israel Chemicals Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Israel Chemicals Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Israel Chemicals Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Israel Chemicals Ltd',
(SELECT id FROM companies WHERE name='Israel Chemicals Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Israel Chemicals Ltd'),
34656,
3325000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CEMEX SAB de CV ordinary participation certificates units (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CEMEX SAB de CV ordinary participation certificates units (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CEMEX SAB de CV ordinary participation certificates units (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CEMEX SAB de CV ordinary participation certificates units (ADR)',
(SELECT id FROM companies WHERE name='CEMEX SAB de CV ordinary participation certificates units (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='CEMEX SAB de CV ordinary participation certificates units (ADR)'),
27514,
5104639,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='BP PLC'),
884307,
123652164,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class B'),
482938,
12672000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Royal Dutch Shell PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Royal Dutch Shell PLC Class A'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Royal Dutch Shell PLC Class A' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Royal Dutch Shell PLC Class A',
(SELECT id FROM companies WHERE name='Royal Dutch Shell PLC Class A')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class A'),
116404,
3195000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class B (ADR)'),
98281,
1292999,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Royal Dutch Shell PLC Class A (ADR)'),
73090,
1000000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Canadian Natural Resources Ltd'),
749429,
20012600,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'OAO Gazprom (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'OAO Gazprom (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'OAO Gazprom (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'OAO Gazprom (ADR)',
(SELECT id FROM companies WHERE name='OAO Gazprom (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='OAO Gazprom (ADR)'),
469125,
44008000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'INPEX CORP' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'INPEX CORP'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'INPEX CORP' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'INPEX CORP',
(SELECT id FROM companies WHERE name='INPEX CORP')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='INPEX CORP'),
442656,
70250,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nexen Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nexen Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nexen Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nexen Inc',
(SELECT id FROM companies WHERE name='Nexen Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nexen Inc'),
335383,
21080000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Nexen Inc (CAD denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Nexen Inc (CAD denominated)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Nexen Inc (CAD denominated)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Nexen Inc (CAD denominated)',
(SELECT id FROM companies WHERE name='Nexen Inc (CAD denominated)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Nexen Inc (CAD denominated)'),
99898,
6278314,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='TOTAL SA'),
292934,
5730000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Saipem SpA Class S' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Saipem SpA Class S'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Saipem SpA Class S' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Saipem SpA Class S',
(SELECT id FROM companies WHERE name='Saipem SpA Class S')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Saipem SpA Class S'),
286200,
6731566,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Crescent Point Energy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Crescent Point Energy Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Crescent Point Energy Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Crescent Point Energy Corp',
(SELECT id FROM companies WHERE name='Crescent Point Energy Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Crescent Point Energy Corp'),
273477,
6205000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cenovus Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cenovus Energy Inc'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cenovus Energy Inc' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cenovus Energy Inc',
(SELECT id FROM companies WHERE name='Cenovus Energy Inc')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Cenovus Energy Inc'),
216429,
6517498,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Petróleo Brasileiro SA – Petrobras ordinary nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Petróleo Brasileiro SA – Petrobras ordinary nominative (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Petróleo Brasileiro SA – Petrobras ordinary nominative (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Petróleo Brasileiro SA – Petrobras ordinary nominative (ADR)',
(SELECT id FROM companies WHERE name='Petróleo Brasileiro SA – Petrobras ordinary nominative (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Petróleo Brasileiro SA – Petrobras ordinary nominative (ADR)'),
189208,
7614000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Cairn India Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Cairn India Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Cairn India Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Cairn India Ltd',
(SELECT id FROM companies WHERE name='Cairn India Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Cairn India Ltd'),
186106,
31450000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'China National Offshore Oil Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'China National Offshore Oil Corp'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'China National Offshore Oil Corp' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'China National Offshore Oil Corp',
(SELECT id FROM companies WHERE name='China National Offshore Oil Corp')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='China National Offshore Oil Corp'),
137783,
78800100,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Oil Search Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Oil Search Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Oil Search Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Oil Search Ltd',
(SELECT id FROM companies WHERE name='Oil Search Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Oil Search Ltd'),
121457,
19000000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Eni SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Eni SpA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Eni SpA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Eni SpA',
(SELECT id FROM companies WHERE name='Eni SpA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Eni SpA'),
91110,
4397000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Suncor Energy Inc'),
84903,
2944000,
to_date(31122011, 'ddmmyyyy')
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
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='BG Group PLC'),
84439,
3950000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Reliance Industries Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Reliance Industries Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Reliance Industries Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Reliance Industries Ltd',
(SELECT id FROM companies WHERE name='Reliance Industries Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Reliance Industries Ltd'),
84229,
6455000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SeaDrill Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SeaDrill Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SeaDrill Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SeaDrill Ltd',
(SELECT id FROM companies WHERE name='SeaDrill Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SeaDrill Ltd'),
75218,
2249343,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Essar Energy PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Essar Energy PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Essar Energy PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Essar Energy PLC',
(SELECT id FROM companies WHERE name='Essar Energy PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Essar Energy PLC'),
66536,
24995900,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Coal India Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Coal India Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Coal India Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Coal India Ltd',
(SELECT id FROM companies WHERE name='Coal India Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Coal India Ltd'),
54860,
9690189,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Tenaris SA (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Tenaris SA (ADR)'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Tenaris SA (ADR)' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Tenaris SA (ADR)',
(SELECT id FROM companies WHERE name='Tenaris SA (ADR)')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Tenaris SA (ADR)'),
38667,
1040000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Subsea  SA' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Subsea  SA'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Subsea  SA' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Subsea  SA',
(SELECT id FROM companies WHERE name='Subsea  SA')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Subsea  SA'),
8362,
450538,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Power Assets Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Power Assets Holdings Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Power Assets Holdings Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Power Assets Holdings Ltd',
(SELECT id FROM companies WHERE name='Power Assets Holdings Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Power Assets Holdings Ltd'),
318147,
43010000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'National Grid PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'National Grid PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'National Grid PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'National Grid PLC',
(SELECT id FROM companies WHERE name='National Grid PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='National Grid PLC'),
300797,
30990000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Power Grid Corp of India Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Power Grid Corp of India Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Power Grid Corp of India Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Power Grid Corp of India Ltd',
(SELECT id FROM companies WHERE name='Power Grid Corp of India Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Power Grid Corp of India Ltd'),
271678,
144130336,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'GDF SUEZ' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'GDF SUEZ'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'GDF SUEZ' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'GDF SUEZ',
(SELECT id FROM companies WHERE name='GDF SUEZ')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='GDF SUEZ'),
269961,
9876186,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'Hong Kong and China Gas Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'Hong Kong and China Gas Co Ltd'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'Hong Kong and China Gas Co Ltd' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'Hong Kong and China Gas Co Ltd',
(SELECT id FROM companies WHERE name='Hong Kong and China Gas Co Ltd')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='Hong Kong and China Gas Co Ltd'),
250137,
107928672,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'International Power PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'International Power PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'International Power PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'International Power PLC',
(SELECT id FROM companies WHERE name='International Power PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='International Power PLC'),
175865,
33583000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'EON AG' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'EON AG'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'EON AG' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'EON AG',
(SELECT id FROM companies WHERE name='EON AG')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='EON AG'),
64725,
3000000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SSE PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SSE PLC'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SSE PLC' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SSE PLC',
(SELECT id FROM companies WHERE name='SSE PLC')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SSE PLC'),
42605,
2125000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'CEZ a s' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'CEZ a s'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'CEZ a s' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'CEZ a s',
(SELECT id FROM companies WHERE name='CEZ a s')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='CEZ a s'),
32504,
817000,
to_date(31122011, 'ddmmyyyy')
)
;

MERGE INTO companies c
USING ( SELECT 1 FROM dual ) d
ON ( c.name = 'SUEZ Environnement Co' )
WHEN NOT MATCHED THEN
INSERT (id,
name
)
VALUES (companies_seq.nextval,
'SUEZ Environnement Co'
)
;

MERGE INTO assets a
USING ( SELECT 1 FROM dual ) d
ON ( a.asset_name = 'SUEZ Environnement Co' )
WHEN NOT MATCHED THEN
INSERT (id,
asset_name,
company_id
)
VALUES (assets_seq.nextval,
'SUEZ Environnement Co',
(SELECT id FROM companies WHERE name='SUEZ Environnement Co')
)
;

INSERT INTO funds_portfolio
(id,
fund_id,
asset_id,
value,
shares,
report_date
)
VALUES (funds_portfolio_seq.nextval,
(SELECT id FROM funds WHERE name='europacific'),
(SELECT id FROM assets WHERE asset_name='SUEZ Environnement Co'),
21684,
1882253,
to_date(31122011, 'ddmmyyyy')
)
;

