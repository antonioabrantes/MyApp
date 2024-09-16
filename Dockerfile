# Base Image
FROM python:3.9-slim

# Work directory
WORKDIR /app
COPY . /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN dir
RUN pip install virtualenv
RUN python -m venv venv
RUN chmod +x venv/bin/activate
RUN . venv/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENV PORT=5000
EXPOSE 5000
ENV FLASK_APP=main.py


CMD ["python", "main.py", "runserver", "0.0.0.0:8000"]
