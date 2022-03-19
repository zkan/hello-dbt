# Data Engineer Cafe with dbt

## Getting Started

```sh
python -m venv ENV
source ENV/bin/activate
```

```sh
pip install dbt-core dbt-bigquery
```

or

```sh
pip install -r requirements.txt
```

## Running dbt

Set environment variables

```sh
export DBT_PROFILES_DIR=./
export BIGQUERY_KEYFILE=/Users/zkan/dataengineercafe.json
```

Run dbt

```sh
dbt run
```
