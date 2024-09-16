# Base Image
FROM python:3.9-slim

# Work directory
# WORKDIR /main

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN dir
RUN pip install virtualenv
RUN python -m venv venv
RUN chmod +x venv/bin/activate
RUN . venv/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install Flask

ENV PORT=5000
EXPOSE 5000
ENV FLASK_APP=main.py

# Certifique-se de que o comando para rodar a aplicação é o correto
#CMD ["python", "main.py"]
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
