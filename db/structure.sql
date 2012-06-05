CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "lcbo_id" varchar(255), "image_url" varchar(255), "image_thumb_url" varchar(255), "name" varchar(255), "category" varchar(255), "region" varchar(255), "price" varchar(255), "rating" integer, "description" varchar(255), "byline" varchar(255), "byline_link" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "reviews" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255), "score" integer, "comment" text, "lcbo_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "rating" integer, "product_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120604234733');

INSERT INTO schema_migrations (version) VALUES ('20120604234828');

INSERT INTO schema_migrations (version) VALUES ('20120605002850');

INSERT INTO schema_migrations (version) VALUES ('20120605010300');

INSERT INTO schema_migrations (version) VALUES ('20120605011138');