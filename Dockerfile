FROM apache/spark-py:v3.4.0

WORKDIR /work_dir/

USER root

COPY ./work_dir/pyspark-practice.ipynb .
RUN wget -O /work_dir/google_playstore_data.csv "https://cdn.getmidnight.com/171293841d3fdd4af2e12426ce202ac9/files/2023/09/googleplaystore_user_reviews.csv?ref=datascience.fm"

ENV PYTHONPATH="${SPARK_HOME}/python/:$PYTHONPATH"
ENV PYTHONPATH="${SPARK_HOME}/python/lib/py4j-0.10.9.7-src.zip:$PYTHONPATH"

RUN pip install --no-cache-dir jupyter

EXPOSE 8888 4040 7077

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
