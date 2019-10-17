
'''
Kod źródłowy dla Lekcji: Zapalamy i gasimy diodę - podstawy elektroniki, mechatroniki
(c) by ABIX Edukacja -> www.abixedukacja.eu
'''

# wykonujemy import odpowiednich modułów
from PyTechBrain import *
from time import sleep

# inicjujemy obiekt układy PyTechBrain
uklad = PyTechBrain()

# na początek gasimy naszą diodę
uklad.sygnalizator_czerwony('off')

# teraz pętla nieskończona
while True:
    uklad.sygnalizator_czerwony('on')
    sleep(1)
    uklad.sygnalizator_czerwony('off')
    sleep(1)