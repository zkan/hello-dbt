# dbt with Spark

Download Spark 3.5.1 [here](https://www.apache.org/dyn/closer.lua/spark/spark-3.5.1/spark-3.5.1-bin-hadoop3.tgz).

## Running Spark Thrift Server

```bash
./spark-3.5.1-bin-hadoop3/sbin/start-thriftserver.sh --conf spark.sql.legacy.allowNonEmptyLocationInCTAS=true
```

**Note:** To allow overwriting the existing non-empty directory, set 'spark.sql.legacy.allowNonEmptyLocationInCTAS' to true.

## Installing Poetry

```bash
curl -sSL https://install.python-poetry.org | python3 -
```
