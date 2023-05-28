FROM python


COPY ./requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ./models .

COPY . .

EXPOSE 80


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
