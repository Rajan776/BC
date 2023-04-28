#A simple client class that generates the private and public keys by using the built
#in python RSA algorithm and test it.
from Crypto.PublicKey import RSA 
from Crypto import Random
import binascii
class Client:
    def __init__(self):
        random=Random.new().read
        self._private_key = RSA.generate(1024,random)
        self._public_key = self._private_key.publickey()
    @property
    def identity(self):
        return binascii.hexlify(self._public_key.exportKey(format='DER')).decode('ascii')

Rajan=Client()
print('sender',Rajan.identity)


        
