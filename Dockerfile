# declaracao da imagem base
FROM python
# nome do diretorio de trabalho
WORKDIR /app
# copia os arquivos para dentro do container
COPY requirements.txt .
# COPY requirements.txt /app
# comando executado na hora da construcao do container
RUN python -m pip install -r requirements.txt
COPY . .
# comando executado na hora da inicializacao do container
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
