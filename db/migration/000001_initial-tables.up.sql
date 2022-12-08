CREATE TABLE "users" (
    "id" serial PRIMARY KEY NOT NULL,
    "username" varchar NOT NULL,
    "password" varchar NOT NULL,
    "email" varchar UNIQUE NOT NULL,
    "create_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "categories" (
    "id" serial PRIMARY KEY NOT NULL,
    "user_id" int NOT NULL,
    "title" varchar NOT NULL,
    "type" varchar NOT NULL,
    "description" varchar UNIQUE NOT NULL,
    "create_at" timestamptz NOT NULL DEFAULT (now())
);

ALTER TABLE "categories"
ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

 CREATE TABLE "accounts" (
        "id" serial PRIMARY KEY NOT NULL,
        "user_id" int NOT NULL,
        "category_id" int not null,
        "title" varchar NOT NULL,
        "type" varchar NOT NULL,
        "value" integer not null,
        "date" date not null,
        "description" varchar UNIQUE NOT NULL,
        "create_at" timestamptz NOT NULL DEFAULT (now())
    );

ALTER TABLE "accounts"
ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "accounts"
ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");