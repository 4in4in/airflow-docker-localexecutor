FROM apache/airflow:2.6.0-python3.10

ADD requirements.txt /tmp/pip-requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --user -r /tmp/pip-requirements.txt

ADD entrypoint.sh /entrypoint.sh

USER root

RUN apt update && apt install -y openjdk-11-jre-headless wget
RUN mkdir /data && wget -O /data/converter.jar https://github.com/dan2097/opsin/releases/download/2.7.0/opsin-cli-2.7.0-jar-with-dependencies.jar

USER airflow

ENTRYPOINT ["/entrypoint.sh"]
CMD ["webserver"]
