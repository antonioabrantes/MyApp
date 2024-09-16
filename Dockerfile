# Base Image
FROM python:3.9-slim

# Work directory
WORKDIR /main

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN dir
RUN pip install virtualenv
RUN python -m venv venv
RUN chmod +x venv/bin/activate
RUN . venv/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5000

#RUN docker ps


