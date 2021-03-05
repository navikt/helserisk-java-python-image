FROM navikt/java:12

USER root
RUN apt-get update -y
RUN apt-get install -y python3=3.6.7-1~18.04
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip==21.0.1
RUN pip3 --version
RUN pip install numpy==1.19.5
RUN pip install Cython==0.29.22
RUN pip install spacy==2.3.5
RUN pip install plac==1.1.3
#RUN pip install pandas==1.1.5
#RUN pip install networkx==2.5
RUN python3 -m spacy download nb_core_news_lg

USER apprunner
