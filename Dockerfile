FROM python:2.7

WORKDIR /home

COPY requirements.txt ./
COPY download_data_csv.py ./
RUN pip install --no-cache-dir -r requirements.txt


