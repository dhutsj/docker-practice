import requests

url = "url/data.csv"
username = ""
password = ""
headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36"}
session = requests.session()
chunk_size = 1024

with session:
    res = session.get(url, auth=(username, password), headers=headers, verify=False, stream=True)
    with open("data.csv", 'wb') as fd:
        for chunk in res.iter_content(chunk_size):
            fd.write(chunk)
