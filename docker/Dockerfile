# from https://github.com/flmu/mlflow-tracking-server
FROM python:3.9-slim
LABEL maintainer="MLflow"

WORKDIR /mlflow/
RUN pip3 install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt


ENV AZURE_STORAGE_ACCESS_KEY WHwVnffc50wbJP6/BtGuf2kYf5wXJ3M4DCRfq1jJRtbhYB8TUgQwNW7JO8QVezENXBHtFPM/GiUx+AStHKMmmw==
ENV AZURE_STORAGE_CONNECTION_STRING DefaultEndpointsProtocol=https;AccountName=cvat00test;AccountKey=WHwVnffc50wbJP6/BtGuf2kYf5wXJ3M4DCRfq1jJRtbhYB8TUgQwNW7JO8QVezENXBHtFPM/GiUx+AStHKMmmw==;EndpointSuffix=core.windows.net

ENV MLFLOW_TRACKING_USERNAME="deepecho"
ENV MLFLOW_TRACKING_PASSWORD="deepechomlflow"


ENV BACKEND_URI postgresql://deepecho@deepecho0mlflow0test:Clinicalstudy2022@deepecho0mlflow0test.postgres.database.azure.com/mlflow_db

CMD mlflow server \
    --backend-store-uri $BACKEND_URI  \
    --artifacts-destination wasbs://container1@cvat00test.blob.core.windows.net \
    --serve-artifacts  \
    --host 0.0.0.0 \
    --port 5000