# MusicLibrary – SQL och Databasdesign (VG)

Detta projekt implementerar en relationsdatabas för ett musikbibliotek med tre tabeller:
Artist, Album och Track.

## Databasteknik
- SQLite
- PRIMARY KEY och FOREIGN KEY
- CHECK, UNIQUE och NOT NULL
- CRUD
- WHERE, ORDER BY, LIKE och GROUP BY
- JOIN
- SQL ↔ LINQ
- Git och versionshantering

## Mappstruktur

```text
MusicLibrary/
├── sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── select_basic.sql
│   ├── select_join.sql
│   ├── updates.sql
│   └── deletes.sql
├── linq_comparison.txt
├── security.txt
├── reflection.txt
├── report.pdf
└── README.md
```

## Köra databasen

SQLite kan användas via exempelvis SQLite CLI eller DB Browser for SQLite.

Kör filerna i denna ordning:

1. `sql/create_tables.sql`
2. `sql/insert_data.sql`
3. `sql/select_basic.sql`
4. `sql/select_join.sql`
5. `sql/updates.sql`
6. `sql/deletes.sql`

`PRAGMA foreign_keys = ON;` ska vara aktiverat för att SQLite ska kontrollera foreign keys.

## VG-fokus
Projektet använder tydliga constraints, genomtänkta relationer, flera typer av SELECT-frågor,
JOINs, LINQ-mappning, säkerhetsreflektion och meningsfull Git-struktur.

## Projektstatus

Databasen är testad lokalt med SQLite och innehåller fungerande CREATE, INSERT, SELECT, JOIN, UPDATE och DELETE-operationer.