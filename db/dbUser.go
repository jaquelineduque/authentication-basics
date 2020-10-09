package db

import (
//_ "github.com/lib/pq"
)

func CreateUser(email string) {
	db := CreateConnection()
	sqlStatement := "INSERT INTO users(" +
		" email " +
		") VALUES( " +
		" $1 " +
		") "
	_, err := db.Exec(
		sqlStatement, email)

	if err != nil {
		panic(err.Error())
	}

	defer db.Close()
}
