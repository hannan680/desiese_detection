FROM python

WORKDIR /app

COPY ./requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . ./app

EXPOSE $PORT

# Set the command to run your application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "$PORT"]
