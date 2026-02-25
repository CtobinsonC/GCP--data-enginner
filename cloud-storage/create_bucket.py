import argparse
from google.cloud import storage

def main():
    parser = argparse.ArgumentParser(description="Create a new bucket in Google Cloud Storage.")
    parser.add_argument("bucket_name", help="The name of the bucket to create.")
    args = parser.parse_args()

    bucket_name = args.bucket_name
    print(f"Creating bucket: {bucket_name}")

    # logical para crear bucket
    storage_client = storage.Client()
    bucket = storage_client.bucket(bucket_name)
    bucket.storage_class = "standard"
    new_bucket = storage_client.create_bucket(bucket, location="us-central1")
    print(f"Bucket {new_bucket.name} created in {new_bucket.location} with class {new_bucket.storage_class}.")


if __name__ == "__main__":
    main()