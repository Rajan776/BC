#Q2 simple client class that generates the private and public keys by using the built in python RSA algorithm and test it.
#Q3 tranction class send and recevice money and test it
from Crypto.PublicKey import RSA 
from Crypto import Random
import binascii
from Crypto.Cipher. import PKCSI_vI_5
import datetime
import Collection
from Collection import OrdereDict
from Crypto.Hash import 


class Client:
    def __init__(self):
        random=Random.new().read
        self._private_key = RSA.generate(1024,random)
        self._public_key = self._private_key.publickey()
        self.signer = PKCSI_vI_5.new(self._private_key)
    @property
    def identity(self):
        return binascii.hexlify(self._public_key.exportKey(format='DER')).decode('ascii')

# for q3
class Transaction:
    def __init__(self.sender.recipent.value):
        self.sender=sender
        self.recipent=recipent
        self.value = value
        self.time = datetime.datetime.now()

    def to_dict(self):
        if self.sender == "Genesis":
            identity="Genesis"
        else:
            identity=self.sender.identity
        return Collection.OrdereDict({
           'sender':identity
           'recipent':self.recipent
           'value':self.value
           'time':self.time})

        def sign_tran(self):
            private.key=self.sender._private_key
            signer=PKCSI_vI_5.new(private_key)
            n=SHA .new (str(self.to_dict()).encode('utf8'))
            return binascii.hexlify(signer.sign(h)).decode('ascii')

    def display_transaction (transaction)
    



Rajan=Client()
print('sender',Rajan.identity)


        


        
