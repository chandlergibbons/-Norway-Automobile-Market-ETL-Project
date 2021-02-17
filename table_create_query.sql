-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/A9MeKz
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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


