#!/usr/bin/env bash

airflow db init
airflow scheduler &
airflow users create             \
    --role Admin                 \
    --username ${AIRFLOW_USER}   \
    --email ${AIRFLOW_EMAIL}     \
    --firstname admin            \
    --lastname admin             \
    --password ${AIRFLOW_PASSWORD}

exec airflow webserver