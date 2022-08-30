# from https://github.com/flmu/mlflow-tracking-server
FROM python:3.9-slim
LABEL maintainer="MLflow"

WORKDIR /mlflow/
RUN pip3 install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt


ENV AZURE_STORAGE_ACCESS_KEY (Enter here your access key)
ENV AZURE_STORAGE_CONNECTION_STRING (Enter here your connection string)

ENV MLFLOW_TRACKING_USERNAME="Choose a name"
ENV MLFLOW_TRACKING_PASSWORD="Choose a name"


ENV BACKEND_URI postgresql:URL_TO_DATABASE

CMD mlflow server \
    --backend-store-uri $BACKEND_URI  \
    --artifacts-destination wasbs://container1@cvat00test.blob.core.windows.net \
    --serve-artifacts  \
    --host 0.0.0.0 \
    --port 5000
