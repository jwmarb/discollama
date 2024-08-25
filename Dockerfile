FROM python:3.12.5-slim-bookworm

WORKDIR /mnt
COPY . .
RUN pip install -r requirements.txt

CMD ["python", "discollama.py"]