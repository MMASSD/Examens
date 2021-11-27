FROM jupyter/all-spark-notebook

MAINTAINER Pierre Navaro <pierre.navaro@univ-rennes2.fr>

USER root

COPY . ${HOME}

RUN chown -R ${NB_USER} ${HOME}

USER $NB_USER

RUN pip install --no-cache-dir -I pyspark
