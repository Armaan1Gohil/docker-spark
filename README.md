# Apache Spark with Docker Compose

This repository contains a Docker Compose setup to run Apache Spark locally, including a master node, worker nodes, and a service to submit Spark jobs.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Armaan1Gohil/docker-spark.git
   cd docker-spark
   ```
   
2. **Start Spark Cluster:**
   ```bash
   docker-compose up -d
   ```
3. **Access Jupyter through Browser:**
   Open your browser and go to:
   ``` bash
   localhost:8888
   ```

4. **Open pyspark-practice**:
   Start the file and execute the code.

6. **Stop the Cluster:**
   To stop and remove the containers, run:
   ``` bash
   docker-compose down
   ```
