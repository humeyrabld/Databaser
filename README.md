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

## Git – rekommenderad arbetsprocess

```bash
git init
git add sql/create_tables.sql
git commit -m "Create relational database tables"

git add sql/insert_data.sql
git commit -m "Add realistic seed data"

git add sql/select_basic.sql sql/select_join.sql
git commit -m "Add SELECT and JOIN queries"

git add sql/updates.sql sql/deletes.sql
git commit -m "Add CRUD update and delete operations"

git add linq_comparison.txt security.txt reflection.txt README.md report.pdf
git commit -m "Add LINQ comparison and project report"

git branch -M main
git remote add origin <DIN-GITHUB-REPO-URL>
git push -u origin main
```

## VG-fokus
Projektet använder tydliga constraints, genomtänkta relationer, flera typer av SELECT-frågor,
JOINs, LINQ-mappning, säkerhetsreflektion och meningsfull Git-struktur.
