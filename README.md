[![GoDoc](https://godoc.org/github.com/golang-migrate/migrate?status.svg)](https://godoc.org/github.com/golang-migrate/migrate)

# Golang Migrate Mysql with CLI
This is standard documentation for golang-migrate and mysql driver

## About golang-migrate CLI
You can see the migrate CLI documentation usage in here
__[CLI Documentation](https://github.com/golang-migrate/migrate/tree/master/cmd/migrate)__

### Installation golang-migrate CLI
This is example installation for mysql driver migrate. you can see another database in here 
__[Golang Migrate Documentation](https://github.com/golang-migrate/migrate)__

```bash
$ go get -u -d github.com/golang-migrate/migrate/cmd/migrate github.com/go-sql-driver/mysql
$ go build -tags 'mysql' -o /usr/local/bin/migrate github.com/golang-migrate/migrate/cmd/migrate
```

## Migrate CLI usage
You can see the documentation usage with command of `migrate -help` or you can see in here 
__[Migrate CLI Usage](https://github.com/golang-migrate/migrate/tree/master/cmd/migrate#usage)__

### Run Migration
```bash
$ migrate -database mysql://user:password@/dbname -path ./migrations up N
```

### Rollback Migration
```bash
$ migrate -database mysql://user:passwrod@/dbname -path ./migrations down N
```

### Recover Failed Migration
```bash
$ migrate -database mysql://user:password@/dbname -path ./migrations force N
```

Note: N is version that you wanted, if you want to execute all you can remove N

## Migrations Best Practices
This best practices based on reference in here
__[Migration Version Format](https://github.com/golang-migrate/migrate/blob/master/MIGRATIONS.md)__

### Migration Filename Format
`migrate` expects the filenames of migrations to have the format:
```
{version}_{title}.up.{extension}
{version}_{title}.down.{extension}
```
Common versioning schemes include incrementing integers:
```
1_user.down.sql
1_user.up.sql
2_role.down.sql
2_role.up.sql
...
```

Or timestamps at an appropriate resolution:
```
1500360784_user.down.sql
1500360784_user.up.sql
1500445949_role.down.sql
1500445949_role.up.sql
...
```

### SQL Statement for Migration Files
For example up file `1_user.up.sql`
```
CREATE TABLE IF NOT EXISTS user (
    id INTEGER NOT NULL AUTO_INCREMENT KEY,
    role_id INTEGER,
    user_image_path VARCHAR (250),
    first_name VARCHAR (100),
    second_name VARCHAR (100),
    email VARCHAR (30) UNIQUE,
    password VARCHAR (30),
    phone_number VARCHAR (20),
    address VARCHAR (250),
    created_by VARCHAR(100),
    created_at DATETIME,
    updated_by VARCHAR(100),
    updated_at DATETIME
);
```

For example down file `1_user.down.sql`
```
DROP TABLE IF EXISTS user;
```

See more documentation SQL Statement in here
__[SQL Statement](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html)__
