from airflow import DAG
from airflow.providers.google.cloud.operators.bigquery import BigQueryInsertJobOperator
from datetime import datetime

default_args = {
    "start_date": datetime(2024, 1, 1),
    "retries": 1
}

with DAG(
    "orders pipeline",
    default_args=default_args,
    schedule_interval="@daily",
    catchup=False
) as dag:
    
    create_table = BigQueryInsertJobOperator(
        task_id="aggregate_orders",
        configuration={
            "query": {
                "query": """
                    CREATE OR REPLACE TABLE ecommerce.analysis.orders_summary AS
                    SELECT 
                        DATE(order_date) AS order_date,
                        COUNT(*) AS total_orders,
                        SUM(total_amount) AS total_revenue
                    FROM ecommerce.raw.orders
                    GROUP BY DATE(order_date)
                """,
                "useLegacySql": False
            }
        }
    )