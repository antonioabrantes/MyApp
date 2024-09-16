# Use uma imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie o arquivo de requisitos e instale as dependências
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copie o código da aplicação
COPY app /app

# Exponha a porta 5000
EXPOSE 5000

# Defina o comando para iniciar a aplicação
CMD ["python", "main.py"]


