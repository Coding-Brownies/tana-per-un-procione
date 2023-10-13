# Dockerfile
FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"] 

# install pwsh crap for the exam
RUN apt-get update && \  
    apt-get install -y wget apt-transport-https software-properties-common && \  
    source /etc/os-release && \ 
    wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb && \  
    dpkg -i packages-microsoft-prod.deb && \ 
    rm packages-microsoft-prod.deb && \ 
    apt-get update && \  
    apt-get install -y powershell

# install basic need for asm
RUN apt update && \  
    apt install -y gcc make file gcc-multilib gdb
