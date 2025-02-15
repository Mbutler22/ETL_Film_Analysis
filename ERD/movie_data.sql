﻿CREATE TABLE "movies_data" (
    "id" integer NOT NULL,
    "imdb_id" varchar(12),
    "budget" float,
    "original_language" varchar(2),
    "original_title" varchar(255),
    "overview" varchar(1000),
    "popularity" float,
    "release_date" date,
    "revenue" float,
    "runtime" integer,
    "status" varchar(255),
    "title" varchar(255) NOT NULL,
    "video" varchar(255),
    CONSTRAINT "pk_movies_data" PRIMARY KEY ("id")
);