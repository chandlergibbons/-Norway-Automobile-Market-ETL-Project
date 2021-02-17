CREATE TABLE "sales_df_yr" (
    "Year" int   NOT NULL,
    "Model" VARCHAR   NOT NULL,
    "Make" VARCHAR   NOT NULL,
    "Quantity" int   NOT NULL,
    "Sales_Rating" VARCHAR   NOT NULL,
    CONSTRAINT "pk_sales_df_yr" PRIMARY KEY (
        "Year","Model"
     )
);

CREATE TABLE "fueleconomy" (
    "ID" int   NOT NULL,
    "Make" VARCHAR   NOT NULL,
    "Model" VARCHAR   NOT NULL,
    "Year" bigint   NOT NULL,
    "Vehicle_Class" VARCHAR   NOT NULL,
    "Drive" VARCHAR   NOT NULL,
    "Fuel_Type" VARCHAR   NOT NULL,
    "Fuel_Economy_Score" bigint   NOT NULL,
    "Good_Fuel_Economy?" VARCHAR   NOT NULL,
    CONSTRAINT "pk_fueleconomy" PRIMARY KEY (
        "Model","Year"
     )
);

ALTER TABLE "fueleconomy" ADD CONSTRAINT "fk_fueleconomy_Model_Year" FOREIGN KEY("Model", "Year")
REFERENCES "sales_df_yr" ("Model", "Year");


