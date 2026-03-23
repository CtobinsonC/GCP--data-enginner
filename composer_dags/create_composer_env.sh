gcloud composer environments create composer-env  --location us-central1 --zone us-central1-a --machine-type n1-standard-2 --disk-size 20GB 
--image-version composer-2.0.0-airflow-2.2.5 --python-version 3  --enable-ip-alias

gcloud composer environments storage dags import --environment composer-env --location us-central1 --source gs://us-central1-composer-env-12345678-bucket/dags.zip