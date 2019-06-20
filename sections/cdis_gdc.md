- **Software Engineer**, November 2014 - November 2015

    *University of Chicago [Center for Data Intensive
     Science](http://cdis.uchicago.edu/)* — Chicago, Illinois

    - Helped build the National Cancer Institute's [Genomic Data
      Commons](https://gdc.cancer.gov), a system for storing and
      organizing cancer genomics data for the clinical research
      community. We imported and organized multiple petabytes of data
      from legacy systems, and built APIs and tools for accessing it.
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
      machines at its peak, and enabled to us to meet a tight, crucial
      deadline and launch the GDC on time.
    - Wrote the core HTTP API that enabled users to access the system,
      including support for downloading tar archives of arbitrary
      groups of files by generating them on-the-fly without ever
      writing to disk.
    - Wrote, deployed, and operated ETL processes for continuously
      syncing metadata from multiple sets of manually managed, poorly
      organized CSV and Excel files, doing entity resolution,
      and storing the resulting normalized records in Postgres and
      Elasticsearch.
