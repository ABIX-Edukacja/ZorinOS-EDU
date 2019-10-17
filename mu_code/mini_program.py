'''
Mini program dla warsztatów ABIX Edukacja - www.abixedukacja.eu
'''

imie = input('Podaj swoje imię... ')
print('Cześć ' + imie.capitalize() + ' - Ja mam ksywkę Python...')

rok_ur = int( input('Podaj swój rok urodzenia... ') )
wiek = 2019 - rok_ur

print('Zatem masz ' + str(wiek) + ' lat.')

# tu instrukcja warunkowa
if wiek < 18:
    print('Jeszcze młodość...')
else:
    print('Już dorosłość... ')

# koniec .....
print('To już jest koniec')