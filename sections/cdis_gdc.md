- **Software Engineer**, November 2014 - November 2015

    *University of Chicago
     [Center for Data Intensive Science](http://cdis.uchicago.edu/)* —
     Chicago,
     Illinois

    - Helped build the National Cancer Institute's [Genomic Data
      Commons](https://www.nih.gov/news-events/news-releases/newly-launched-genomic-data-commons-facilitate-data-clinical-information-sharing),
      a system for storing and organizing cancer genomics data for the
      clinical research community. We imported and organized multiple
      petabytes of data from poorly maintained legacy systems, and
      built APIs and tools for accessing it.
    - Built and maintained the deployment, operations, and monitoring
      tooling for the entire system using Saltstack, Python, Consul,
      Nginx, and Openstack. Supported rolling deployment, fast
      rollback of bad deploys, and arbitrary language ecosystems and
      build processes. Was used to deploy and operate backend
      services, single page apps, and internal services (e.g. for
      authentication and geolocation).
    - Built and operated a fault-tolerant distributed work scheduler
      for re-processing over two petabytes of genomic sequence data
      with a modern bioinformatics pipeline, using Python, Docker, and
      Consul. The system used 40k cores distributed over ~1000
      machines at it's peak and enabled to us to meet a tight, crucial
      deadline.
    - Wrote the core HTTP API for downloading genomic sequence data
      using Python, including support for downloading tar archives of
      arbitrary groups of files by generated them on-the-fly without
      ever writing to disk.
    - Wrote, deployed, and operated ETL processes for gathering
      metadata from multiple sets of manually managed, poorly
      organized and continuously updated CSV and Excel files, doing
      entity resolution on it, and storing the resulting normalized
      records in Postgres and Elasticsearch.
