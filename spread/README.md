# Spread

## Configuration
Put your Google Cloud JSON file in the root directory of the project. It must represent a service account with permissions to create machines on GCP under the Observability account.

```shell
export GOOGLE_JSON_FILENAME="$(pwd)/${YOUR_JSON_FILE}.json
```

## Run Spread tests

```shell
spread
spread -v
spread -vv
```
