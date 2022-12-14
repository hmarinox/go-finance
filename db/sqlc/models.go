// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.16.0

package db

import (
	"time"
)

type Account struct {
	ID          int32     `json:"id"`
	UserID      int32     `json:"user_id"`
	CategoryID  int32     `json:"category_id"`
	Title       string    `json:"title"`
	Type        string    `json:"type"`
	Value       int32     `json:"value"`
	Date        time.Time `json:"date"`
	Description string    `json:"description"`
	CreateAt    time.Time `json:"create_at"`
}

type Category struct {
	ID          int32     `json:"id"`
	UserID      int32     `json:"user_id"`
	Title       string    `json:"title"`
	Type        string    `json:"type"`
	Description string    `json:"description"`
	CreateAt    time.Time `json:"create_at"`
}

type User struct {
	ID       int32     `json:"id"`
	Username string    `json:"username"`
	Password string    `json:"password"`
	Email    string    `json:"email"`
	CreateAt time.Time `json:"create_at"`
}
