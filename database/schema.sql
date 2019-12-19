-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Overdoses" (
    "overdose_id" INT   NOT NULL,
    "State" VARCHAR(30)   NOT NULL,
    "State Code" INT   NOT NULL,
    "County" VARCHAR(50)   NOT NULL,
    "County Code" INT   NOT NULL,
    "Year" INT   NOT NULL,
    "UCD - Drug/Alcohol Induced Cause" VARCHAR(100)   NOT NULL,
    "UCD - Drug/Alcohol Induced Cause Code" VARCHAR(10)   NOT NULL,
    "Multiple Cause of death" VARCHAR(100)   NOT NULL,
    "Multiple Cause of death Code" VARCHAR(10)   NOT NULL,
    "Deaths" INT   NOT NULL,
    "Population" INT   NOT NULL,
    "Crude Rate" VARCHAR(20)   NOT NULL,
    "Crude Rate Lower 95% Confidence Interval" NUMERIC   NOT NULL,
    "Crude Rate Upper 95% Confidence Interval" NUMERIC   NOT NULL,
    "Crude Rate Standard Error" NUMERIC   NOT NULL,
    "Age Adjusted Rate" VARCHAR(20)   NOT NULL,
    "Age Adjusted Rate Lower 95% Confidence Interval" NUMERIC   NOT NULL,
    "Age Adjusted Rate Upper 95% Confidence Interval" NUMERIC   NOT NULL,
    "Age Adjusted Rate Standard Error" NUMERIC   NOT NULL,
    "% of Total Deaths" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Overdoses" PRIMARY KEY (
        "overdose_id"
     )
);

CREATE TABLE "Prescriptions" (
    "pres_id" INT   NOT NULL,
    "state" VARCHAR(10)   NOT NULL,
    "county" VARCHAR(50)   NOT NULL,
    "county_FIPS" INT   NOT NULL,
    "year" INT   NOT NULL,
    "opioid_claim_count" NUMERIC   NOT NULL,
    "opioid_day_supply" NUMERIC   NOT NULL,
    "opioid_prescriber_rate" NUMERIC   NOT NULL,
    "la_opioid_claim_count" NUMERIC   NOT NULL,
    "la_opioid_day_supply" NUMERIC   NOT NULL,
    "la_opioid_prescriber_rate" NUMERIC   NOT NULL,
    CONSTRAINT "pk_Prescriptions" PRIMARY KEY (
        "pres_id"
     )
);

CREATE TABLE "County_Codes" (
    "county_FIPS" INT   NOT NULL,
    "county" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_County_Codes" PRIMARY KEY (
        "county_FIPS"
     )
);

ALTER TABLE "Overdoses" ADD CONSTRAINT "fk_Overdoses_County Code" FOREIGN KEY("County Code")
REFERENCES "County_Codes" ("county_FIPS");

ALTER TABLE "Prescriptions" ADD CONSTRAINT "fk_Prescriptions_county_FIPS" FOREIGN KEY("county_FIPS")
REFERENCES "County_Codes" ("county_FIPS");

