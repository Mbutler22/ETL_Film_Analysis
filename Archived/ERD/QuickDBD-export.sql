﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
CREATE TABLE "movies_data" (
    "id" integer NOT NULL,
    "imdb_id" varchar(12) NOT NULL,
    "budget" float NOT NULL,
    "original_language" varchar(2) NOT NULL,
    "original_title" varchar(100) NOT NULL,
    "overview" varchar(200) NOT NULL,
    "popularity" float NOT NULL,
    "release_date" date NOT NULL,
    "revenue" float NOT NULL,
    "runtime" integer NOT NULL,
    "status" boolean NOT NULL,
    "title" varchar(100) NOT NULL,
    "video" boolean NOT NULL,
    CONSTRAINT "pk_movies_data" PRIMARY KEY ("id")
);
CREATE TABLE "keywords" (
    "rec_key" integer NOT NULL,
    "movie_id" integer NOT NULL,
    "keyword" varchar(30) NOT NULL,
    CONSTRAINT "pk_keywords" PRIMARY KEY ("rec_key")
);
CREATE TABLE "cast" (
    "rec_key" integer NOT NULL,
    "movie_id" integer NOT NULL,
    "character" varchar(30) NOT NULL,
    "name" varchar(30) NOT NULL,
    "gender" varchar(10) NOT NULL,
    "order" integer NOT NULL,
    "profile_path" varchar(100) NOT NULL,
    CONSTRAINT "pk_cast" PRIMARY KEY ("rec_key")
);
CREATE TABLE "crew" (
    "rec_key" integer NOT NULL,
    "movie_id" integer NOT NULL,
    "department" varchar(30) NOT NULL,
    "job" varchar(30) NOT NULL,
    "name" varchar(30) NOT NULL,
    "gender" varchar(10) NOT NULL,
    "profile_path" varchar(100) NOT NULL,
    CONSTRAINT "pk_crew" PRIMARY KEY ("rec_key")
);
CREATE TABLE "genres" (
    "genre_id" integer NOT NULL,
    "genre" varchar(30) NOT NULL,
    CONSTRAINT "pk_genres" PRIMARY KEY ("genre_id")
);
CREATE TABLE "production_companies" (
    "rec_key" integer NOT NULL,
    "movie_id" integer NOT NULL,
    "name" varchar(30) NOT NULL,
    "comp_id" integer NOT NULL,
    CONSTRAINT "pk_production_companies" PRIMARY KEY ("rec_key")
);
CREATE TABLE "production_countries" (
    "rec_key" integer NOT NULL,
    "movie_id" integer NOT NULL,
    "iso_3166" varchar(2) NOT NULL,
    "country" varchar(30) NOT NULL,
    CONSTRAINT "pk_production_countries" PRIMARY KEY ("rec_key")
);
CREATE TABLE "spoken_languages" (
    "rec-key" integer NOT NULL,
    "movie_id" integer NOT NULL,
    "iso_639_1" varchar(2) NOT NULL,
    "language" varchar(30) NOT NULL,
    CONSTRAINT "pk_spoken_languages" PRIMARY KEY ("rec-key")
);
CREATE TABLE "ratings" (
    "movie_id" integer NOT NULL,
    "ratings_count" integer NOT NULL,
    "avg_rating" float NOT NULL,
    "median_rating" float NOT NULL
);
CREATE TABLE "genre_movie_junction" (
    "rec_key" SERIAL integer NOT NULL,
    "movie_id" integer NOT NULL,
    "genre_id" integer NOT NULL,
    CONSTRAINT "pk_genre_movie_junction" PRIMARY KEY ("rec_key")
);
-- Free plan table limit reached. SUBSCRIBE for more.
ALTER TABLE "keywords"
ADD CONSTRAINT "fk_keywords_movie_id" FOREIGN KEY("movie_id") REFERENCES "movies_data" ("id");
ALTER TABLE "cast"
ADD CONSTRAINT "fk_cast_movie_id" FOREIGN KEY("movie_id") REFERENCES "movies_data" ("id");
ALTER TABLE "crew"
ADD CONSTRAINT "fk_crew_movie_id" FOREIGN KEY("movie_id") REFERENCES "movies_data" ("id");
ALTER TABLE "production_companies"
ADD CONSTRAINT "fk_production_companies_movie_id" FOREIGN KEY("movie_id") REFERENCES "movies_data" ("id");
ALTER TABLE "production_countries"
ADD CONSTRAINT "fk_production_countries_movie_id" FOREIGN KEY("movie_id") REFERENCES "movies_data" ("id");
ALTER TABLE "spoken_languages"
ADD CONSTRAINT "fk_spoken_languages_movie_id" FOREIGN KEY("movie_id") REFERENCES "movies_data" ("id");
ALTER TABLE "ratings"
ADD CONSTRAINT "fk_ratings_movie_id" FOREIGN KEY("movie_id") REFERENCES "movies_data" ("id");
ALTER TABLE "genre_movie_junction"
ADD CONSTRAINT "fk_genre_movie_junction_movie_id" FOREIGN KEY("movie_id") REFERENCES "movies_data" ("id");
ALTER TABLE "genre_movie_junction"
ADD CONSTRAINT "fk_genre_movie_junction_genre_id" FOREIGN KEY("genre_id") REFERENCES "genres" ("genre_id");
-- Free plan table limit reached. SUBSCRIBE for more.
-- Free plan table limit reached. SUBSCRIBE for more.