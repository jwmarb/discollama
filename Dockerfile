FROM python:3.11.9-bookworm

WORKDIR /mnt
COPY . .
RUN pip install -r requirements.txt

CMD ["python", "discollama.py"]