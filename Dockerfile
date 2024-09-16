# Expose a port to Containers
EXPOSE 8080

# Command to run on server
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]

# Use uma imagem oficial do Python
FROM python:3.9-slim

# Defina o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copie o arquivo requirements.txt que contém as dependências do Python
COPY requirements.txt .

# Instale as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante do código da aplicação para o container
COPY . .

# Defina a variável de ambiente para o Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=production
ENV PORT=8080

# Exponha a porta que será usada pela aplicação
EXPOSE 8080

# Comando para iniciar o servidor Flask
CMD ["flask", "run"]


