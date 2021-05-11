-- TABLE CREATION

CREATE TABLE "sales_df_yr" (
    "year" int   NOT NULL,
    "model" VARCHAR   NOT NULL,
    "make" VARCHAR   NOT NULL,
    "quantity" int   NOT NULL,
    "sales_rating" VARCHAR   NOT NULL,
    CONSTRAINT "pk_sales_df_yr" PRIMARY KEY (
        "year","model"
     )
);

CREATE TABLE "fueleconomy" (
    "id" int   NOT NULL,
    "make" VARCHAR   NOT NULL,
    "model" VARCHAR   NOT NULL,
    "Year" bigint   NOT NULL,
    "vehicle_class" VARCHAR   NOT NULL,
    "drive" VARCHAR   NOT NULL,
    "fuel_type" VARCHAR   NOT NULL,
    "fuel_economy_score" bigint   NOT NULL,
    "good_fuel_economy?" VARCHAR   NOT NULL,
    CONSTRAINT "pk_fueleconomy" PRIMARY KEY (
        "model","year"
     )
);

ALTER TABLE "fueleconomy" ADD CONSTRAINT "fk_fueleconomy_model_year" FOREIGN KEY("model", "year")
REFERENCES "sales_df_yr" ("model", "year");

-- TABLE JOIN

SELECT * 
FROM sales_df_yr
INNER JOIN fueleconomy
ON sales_df_yr.year = fueleconomy.year AND sales_df_yr.model = fueleconomy.model


