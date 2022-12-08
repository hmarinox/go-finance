-- name: CreateUser :one
insert into users (
    username,
    password,
    email
) values (
    $1, $2, $3
) returning *;

-- name: GetUserByName :one
select * from users where username = $1 limit 1;

-- name: GetUserById :one
select * from users where id = $1 limit 1;
