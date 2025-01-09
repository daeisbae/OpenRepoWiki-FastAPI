FROM python:3.13-alpine

WORKDIR /usr/src/openrepowiki

COPY . /usr/src/openrepowiki/
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]