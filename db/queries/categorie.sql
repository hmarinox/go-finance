-- name: CreateCategory :one
insert into categories (
    user_id,
    title,
    type,
    description
) values (
    $1, $2, $3, $4
) returning *;

-- name: GetCategoryByTitle :one
select * from categories where title = $1 limit 1;

-- name: GetCategoryById :one
select * from categories where id = $1 limit 1;

-- name: GetCategories :many
select * from categories where user_id = $1 and type = $2 and title like $3 and description like $4;