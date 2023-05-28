FROM python

WORKDIR /app

COPY ./requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . ./app

EXPOSE 80


CMD ["web:uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "${PORT:-5000}"]
