FROM apache/airflow:2.6.0-python3.10

ADD requirements.txt /tmp/pip-requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --user -r /tmp/pip-requirements.txt

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["webserver"]
