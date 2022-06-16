gi-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/FKoqKn
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Storm_Data" (
    "EventID" int   NOT NULL,
    "Database" varchar   NOT NULL,
    "ID" int   NOT NULL,
    "Date/Time" varchar   NOT NULL,
    "Nearest_town" varchar   NOT NULL,
    "State" varchar   NOT NULL,
    "Latitude" int   NOT NULL,
    "Longitude" int   NOT NULL,
    "Comments" varchar   NOT NULL
);

CREATE TABLE "High_Impact_Outages" (
    "State" varchar   NOT NULL,
    "NSP" varchar   NOT NULL,
    "Start" varchar   NOT NULL,
    "Finish" varchar   NOT NULL,
    "Network_Asset" varchar   NOT NULL,
    "Impact" varchar   NOT NULL,
    "Recall" varchar   NOT NULL,
    "Status" varchar   NOT NULL
);

CREATE TABLE "VIC_Summary" (
    "ID" varchar   NOT NULL,
    "Name" varchar   NOT NULL,
    "State" varchar   NOT NULL,
    "Source_Technology" varchar   NOT NULL,
    "Registered_Capacity" int   NOT NULL
);

CREATE TABLE "States_Summary" (
    "State" varchar   NOT NULL,
    "Acronym" varchar   NOT NULL
);

ALTER TABLE "Storm_Data" ADD CONSTRAINT "fk_Storm_Data_State" FOREIGN KEY("State")
REFERENCES "States_Summary" ("State");

ALTER TABLE "High_Impact_Outages" ADD CONSTRAINT "fk_High_Impact_Outages_State" FOREIGN KEY("State")
REFERENCES "States_Summary" ("State");

ALTER TABLE "VIC_Summary" ADD CONSTRAINT "fk_VIC_Summary_State" FOREIGN KEY("State")
REFERENCES "States_Summary" ("State");

