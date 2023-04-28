#a simple client class that generates the private and public keys by using the built in python RSA algorithm and test it.
from Crypto.PublicKey import RSA
key=RSA.generate(1024)
p_key=key.public_key().export_key("PEM")
priv_key=key.export_key("PEM")
print("SOLOMON ABRAHAM \n")
print(p_key)
print(priv_key)