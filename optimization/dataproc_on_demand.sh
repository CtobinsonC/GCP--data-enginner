gcloud projects add-iam-policy-binding caleb-gcp-data-enginner 
    --member=serviceAccount:dataproc-service-account@caleb-gcp-data-enginner.iam.gserviceaccount.co
    --role=roles/dataproc.editor



gcloud dataproc batches submit spark 
    --project=caleb-gcp-data-enginner 
    --region=us-central1 
    --cluster=dataproc-cluster-1 
    --jars=gs://spark-lib/bigquery/spark-bigquery-latest_2.12.jar 
    --class=org.apache.spark.examples.SparkPi 
    -- 1000