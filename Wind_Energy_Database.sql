-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/FKoqKn
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Storm_Data" (
    "EventID" int   NOT NULL,
    "Database" string   NOT NULL,
    "ID" int   NOT NULL,
    "Date/Time" string   NOT NULL,
    "Nearest_town" string   NOT NULL,
    "State" string   NOT NULL,
    "Latitude" int   NOT NULL,
    "Longitude" int   NOT NULL,
    "Comments" string   NOT NULL
);

CREATE TABLE "High_Impact_Outages" (
    "State" string   NOT NULL,
    "NSP" string   NOT NULL,
    "Start" string   NOT NULL,
    "Finish" string   NOT NULL,
    "Network_Asset" string   NOT NULL,
    "Impact" string   NOT NULL,
    "Recall" string   NOT NULL,
    "Status" string   NOT NULL
);

CREATE TABLE "VIC_Summary" (
    "ID" string   NOT NULL,
    "Name" string   NOT NULL,
    "State" string   NOT NULL,
    "Source_Technology" string   NOT NULL,
    "Registered_Capacity" int   NOT NULL
);

CREATE TABLE "States_Summary" (
    "State" string   NOT NULL,
    "Acronym" string   NOT NULL
);

ALTER TABLE "Storm_Data" ADD CONSTRAINT "fk_Storm_Data_State" FOREIGN KEY("State")
REFERENCES "States_Summary" ("State");

ALTER TABLE "High_Impact_Outages" ADD CONSTRAINT "fk_High_Impact_Outages_State" FOREIGN KEY("State")
REFERENCES "States_Summary" ("State");

ALTER TABLE "VIC_Summary" ADD CONSTRAINT "fk_VIC_Summary_State" FOREIGN KEY("State")
REFERENCES "States_Summary" ("State");

