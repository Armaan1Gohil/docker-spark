FROM apache/spark-py:v3.4.0

WORKDIR /work_dir/

USER root

# Copy the Jupyter notebook
COPY ./work_dir/pyspark-practice.ipynb /work_dir/

# Debugging: Print a message before downloading
RUN echo "Attempting to download google_playstore_data.csv"

# Download the data file directly into the /work_dir/ directory
RUN apt-get update -y \
    && apt-get install -y wget \
    && wget -O google_playstore_data.csv "https://cdn.getmidnight.com/171293841d3fdd4af2e12426ce202ac9/files/2023/09/googleplaystore_user_reviews.csv?ref=datascience.fm" \
    && echo "Download complete" \
    && ls -l /work_dir/

# Debugging: Print the contents of the file to confirm it was downloaded
RUN echo "Contents of the /work_dir/ directory:" && ls -l /work_dir/

# Install Jupyter Notebook
RUN pip install --no-cache-dir jupyter

# Expose necessary ports
EXPOSE 8888 4040 7077

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]