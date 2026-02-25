from google.cloud import bigquery

def query_public_datasets():
    client = bigquery.Client()

    query = """
        SELECT order_item.id, order_id, product_id, product.name 
        FROM `bigquery-public-data.thelook_ecommerce.order_items` AS order_item
        JOIN `bigquery-public-data.thelook_ecommerce.products` AS product
        ON order_item.product_id = product.id
    """

    query_job = client.query(query)
    results = query_job.to_dataframe()[:20]

    print("Order Items and Product Names:")
    print(results)

if __name__ == "__main__":    
    query_public_datasets()