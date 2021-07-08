# Containerized_WGS_Data_Pipeline



This repository holds respective Dockerfile and links to software packages used in the paper titled as follows:-

#### "Implementation of human whole genome sequencing data analysis: A containerized framework for sustained and enhanced throughput". 

###### AUTHORS:- Abhishek Panda, Krithika Subramanian, Dr. Bratati Kahali
###### AFFILIATION:- Centre for Brain Research, Indian Institute of Science, Bangalore, INDIA




## Steps To build and launch containers for the WGS data pipeline:- 
##### 1. The Dockerfile mentioned in this repo constitutes all the necessary configurations to build the required image. The command used to build the wgs container          image is as follows :- 
         docker build -t pipeline /Docker/file/path/.


##### 2. The containers are created using the following command:-   
         docker run -i --security-opt seccomp=unconfined -m “X”G --memory-reservation “M”G --memory-swap -1 --cpuset-cpus “k-p”  -v/host/path/Output/:/Container/path/Output/ -v /host/path/Output/:/Container/path/Output  -t “image-name” bash
         
         
         
         


##### NOTE:The links file in this repo consists of all the software packages used for the WGS pipeline and the tar of the container image. Download all the software packages from the link and put them in the local directory of the given Dockerfile. 
