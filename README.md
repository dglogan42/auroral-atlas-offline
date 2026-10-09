# Auroral Atlas — offline documentation

Unzip this folder, then open index.html in your browser. The guide and book search work directly from disk without internet or installation. Keep astrology-reference.pdf beside index.html for links to the scanned pages.

## Included files
- index.html: offline guide and searchable 282-page reference reader.
- astrology-reference.pdf: original scan supplied by you.
- astrology-reference.txt: extracted OCR text, with page breaks.
- auroral-reference.sqlite: SQLite database with 282 source-page records and an empty charts table.
- schema.sql: database table definitions.

## Using the hosted application
1. Enter a chart name, date, local clock time, UTC offset, location label, latitude and longitude.
2. Use the offset that applied at that date, including daylight saving. North and east are positive.
3. Western shows tropical geocentric positions of ten solar-system bodies and selected major aspects with a 4-degree orb.
4. Eastern shows the Chinese lunar-year animal, heavenly stem, earthly branch, element, polarity and year-cycle position; the clock-hour animal uses local time.
5. Sky map shows an educational horizon projection of 17 reference stars and planetary bodies above the horizon.
6. Save chart creates a SQL record. Open a saved record, change the inputs, and Update chart replaces that record. Start a new record creates a separate observation.
7. Archive supports text search, delete and JSON export. SQL explorer runs three preset read-only queries and exports saved charts as SQL.
8. Reference imports the OCR pages into the hosted SQL database when you first search. Read PDF page loads its extracted text; View scan opens the original.

## Calculation scope
Supported dates: 1900–2100. Western uses Astronomy Engine geocentric true-ecliptic-of-date longitudes. No Western houses or ascendant are calculated. Eastern is a Chinese year-cycle chart, not full BaZi or Vedic astrology. Lunar New Year is its year boundary, not the BaZi solar-term boundary. Chinese calendar conversion relies on browser Intl calendar support.

Sky map stars use fixed J2000 coordinates without precession or proper motion. Refraction is applied; daylight visibility is not modeled. This sample is not suitable for navigation and does not contain all 57 USNO navigational stars. Historical book claims do not determine the ephemeris calculations. OCR errors remain; verify diagrams and exact words against the scan.

## SQLite queries
Open auroral-reference.sqlite with any SQLite viewer, or use the sqlite3 command:

sqlite3 auroral-reference.sqlite

SELECT COUNT(*) FROM reference_pages;
SELECT id, substr(content,1,250) FROM reference_pages WHERE content LIKE '%zodiac%';
SELECT content FROM reference_pages WHERE id = 25;
SELECT * FROM charts ORDER BY id DESC;

Reference page IDs are PDF page numbers, not printed book-page numbers. The charts table in this offline package is empty: saved hosted records are not included. Export those records from the hosted Archive or SQL explorer if needed.

## Offline boundaries
This package provides documentation, source reading, and a usable SQLite reference database. It is not an offline copy of the hosted chart calculator. No server, accounts, CDN scripts, or internet connection are required for the offline reader. External reference links and the hosted app require internet.

## Online references
Auroral Atlas: https://auroral-atlas.david-logan-nz.chatgpt.site
USNO: https://aa.usno.navy.mil/data/Nav_Star_Chart
Stellarium Web: https://stellarium-web.org/
Chinese calendar: https://www.hko.gov.hk/en/gts/time/stemsandbranches.htm
Astronomy Engine: https://github.com/cosinekitty/astronomy

## License

Original offline-reader code, documentation, and SQL schema are licensed under
the MIT License. See LICENSE.

The historical PDF and derived OCR/reference text are excluded from that grant.
See THIRD_PARTY_NOTICES.md for source attribution and scope.
