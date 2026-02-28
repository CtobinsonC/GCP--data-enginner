import apache_beam as beam
from apache_beam.options.pipeline_options import PipelineOptions

def run():
    # Configuración del pipeline
    options = PipelineOptions(
        runner="DataflowRunner",  # Cambiar a DirectRunner para local
        project="gcp-data-engineer-cloud-com-ct",
        region="us-central1",
        temp_location="gs://gcs-bucket-cloudcom-ctc05/temp",
        staging_location="ggs://gcs-bucket-cloudcom-ctc05/staging"
    )

    with beam.Pipeline(options=options) as p:
        (
            p
            | "Leer archivo" >> beam.io.ReadFromText("gs://dataflow-samples/shakespeare/kinglear.txt")
            | "Separar palabras" >> beam.FlatMap(lambda line: line.split())
            | "Contar palabras" >> beam.combiners.Count.PerElement()
            | "Guardar resultados" >> beam.io.WriteToText("gs://gcs-bucket-cloudcom-ctc05/output/wordcount")
        )
    print("Pipeline ejecutado exitosamente.")

if __name__ == "__main__":
    run()
