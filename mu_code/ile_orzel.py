'''
Napisz program, który będzie symulował sto rzutów monetą. Zdefiniuj funkcję rzuty_moneta() ,
której wynikiem będzie liczba wyrzuconych orłów.
0 - orzeł, 1 - reszka,
'''

from random import randint

MONETA = [ 'orzeł' , 'reszka' ]

def rzuty_moneta( ile_rzutow = 100 ):
    rzuty = []

    for x in range(ile_rzutow):
        wynik = randint(0,1)
        co_wylosowano = MONETA[wynik]
        rzuty.append(co_wylosowano)

    ile_orzel  = rzuty.count('orzeł')
    ile_reszka = rzuty.count('reszka')

    return ile_orzel

ile_aaa = rzuty_moneta(211)

ile_100 = rzuty_moneta()

print('Dla 211 rzutów: ' + str(ile_aaa) + ' orzeł.')

print('Dla 100 rzutów: ' + str(ile_100) + ' orzeł.')