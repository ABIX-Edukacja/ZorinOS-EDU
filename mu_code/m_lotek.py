import random

liczba = random.randint(1, 10)
zgadles = False
for i in range(3):
    odp = input("Jaką liczbę od 1 do 10 mam na myśli? ")
    test = int(odp)
    if test == liczba:
        print("Zgadłeś! Dostajesz długopis!")
        zgadles = True
        break
    elif test == 3:
        print('wpisałeś trójkę...')
    else:
        print("Nie zgadłeś. Spróbuj jeszcze raz.")

if zgadles == True:
    print('Super')
else:
    print('A ja myślałem o...', liczba)