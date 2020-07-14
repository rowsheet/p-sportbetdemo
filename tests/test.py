import requests
import json

HOST = "http://localhost:5555/services"
# HOST = "https://fathomless-spire-81170.herokuapp.com/"
COOKIES = {
    "JSESSIONID": "17ab96bd8ffbe8ca58a78657a918558"
}

def HTTP_GET(path, params=None):
    url = HOST + "/" + path
    print("URL:     " + url)
    resp = requests.get(url, cookies=COOKIES, params=params)
    print("STATUS:  " + str(resp.status_code))
    print("RESULT:")
    try:
        parsed = json.loads(resp.text)
        print(json.dumps(parsed, indent=4, sort_keys=True))
    except Exception as ex:
        print(resp.text)
        print(str(ex))

def HTTP_POST(path, params=None):
    url = HOST + "/" + path
    print("URL:     " + url)
    resp = requests.post(url, cookies=COOKIES, params=params)
    print("STATUS   " + str(resp.status_code))
    print("RESULT:")
    parsed = json.loads(resp.text)
    print(json.dumps(parsed, indent=4, sort_keys=True))
