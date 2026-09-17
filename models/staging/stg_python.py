import pandas as pd

def model(dbt, session):
    dbt.config(
        materialized="table",
        packages=["pandas"]
    )

    df = dbt.ref("stg_customer")

    return df