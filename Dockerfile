FROM apache/spark-py:v3.4.0

# Working Directory Inside the Container
WORKDIR /work_dir/

USER root

# Copy the Jupyter notebook
COPY ./work_dir/ /work_dir/

# Install Jupyter Notebook
RUN pip install --no-cache-dir jupyter

# Expose necessary ports
EXPOSE 8888 4040 7077

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
