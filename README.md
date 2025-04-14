# postgresql-scheme
A proposal of postgres data scheme.

## Pre-requisites

A postgres database and tools to access it. If you don't have it, install it:

```shell
sudo apt install postgresql postgresql-contrib
```
Check that postgresql is running:
```shell
sudo systemctl status postgresql
```
Start it if not running
```shell
sudo systemctl start postgresql
```

nodeJs as base for needed sql-tool. If you don't have it, install it:
```shell
sudo apt install nodejs
```

##Steps

migr.dbml file is the single source of information. From this file, SQL schema is generated and tables created.
Also nice to know, display the content and relations in the file at https://dbdiagram.io/d to view it graphically.

Install cli utility for dbmd as global node package:
```shell
npm install -g @dbml/cli
```

Create a postgres database as you as owner:
```shell
createdb -U <user> <db_name>
```

Verify database existence and correct configs:
```shell
psql -l
```

Generate SQL schema from the dbml file:
```shell
dbml2sql -o schema.sql schema.dbml
```

Initialize the schema:
```shell
psql -U <user> -d <db_name> -f schema.sql
```

Store some test data in database:
```shell
psql -U <user> -d <db_name> -f ./sql-scripts/configure-test-tables.sql
```

Check out and run some scripts in the sql-scripts folder

###Revert the database
Delete the postgres database as you as owner:
```shell
dropdb --force -U <user> <db_name>
```
