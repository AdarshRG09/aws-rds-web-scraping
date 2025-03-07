import requests

response = requests.get("https://zenquotes.io/api/random", verify="/etc/pki/tls/certs/ca-bundle.crt")
quote_data = response.json()[0]

print(f'"{quote_data["q"]}" - {quote_data["a"]}')
