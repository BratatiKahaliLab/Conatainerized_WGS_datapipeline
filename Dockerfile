FROM centos:latest

MAINTAINER Dr.Bratati Kahali Lab Group,CBR,IISc 

RUN echo "Lab Members:-Abhishek Panda, Krithika Subramaniam, Dr. Bratati Kahali(PI)"

RUN yum install wget -y && \
    yum install git -y && \
    yum install curl -y

RUN mkdir /BWA

ADD Skylake-compiledBWA/ /BWA

RUN echo "1---------------######BWA######----------------------built"


RUN mkdir /Picard

ADD picard-2.17.4/ /Picard

RUN echo "2---------------######Picard######----------------------built"


ADD SAMBAMBA /Sambamba


RUN echo "3---------------######Sambamba######----------------------built"


ADD samblaster-v.0.1.24 /Samblaster

RUN echo "4---------------######Samblaster######----------------------built"


ADD samtools-1.3.1 /Samtools 

RUN echo "5---------------######Samtools######----------------------built"


ADD pigz-2.3.3-1.el7.centos.x86_64.rpm /

RUN rpm -ivh /pigz-2.3.3-1.el7.centos.x86_64.rpm

RUN echo "6---------------######Pigz######----------------------built"

RUN yum install java-1.8.0-openjdk-devel -y && \
    yum install java-1.8.0-openjdk -y

RUN mkdir /GATK

ADD GenomeAnalysisTK-3.7-0-gcfedb67 /GATK

RUN echo "7---------------######GATK######----------------------built"

ADD sub_sampling_split-sam-stream.pl / 


RUN yum install numactl -y 






