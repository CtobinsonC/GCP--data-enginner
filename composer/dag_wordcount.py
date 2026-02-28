from airflow import DAG
from airflow.providers.google.cloud.operators.dataflow import DataflowTemplatedJobStartOperator
from datetime import datetime

default_args = {
    'owner': 'data-engineer',
    'start_date': datetime(2026, 1, 1),
    'retries': 1,
}

dag = DAG(
    'dag_ejecutar_template_v1',
    default_args=default_args,
    description='DAG para ejecutar una plantilla de Dataflow',
    schedule_interval=None,
    catchup=False
)

dataflow_task = DataflowTemplatedJobStartOperator(
        task_id='run_template_task',
        # Esta ruta debe existir después de que corras tu comando de Python
        template='gs://gcs-bucket-cloudcom-ctc05/templates/wordcount_template',
        project_id='gcp-data-engineer-cloud-com-ct',
        location='us-central1',
        dag=dag
    )