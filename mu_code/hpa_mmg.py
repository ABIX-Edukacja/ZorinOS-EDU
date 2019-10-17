'''
Zdefiniuj funkcję milimetry(hPa) , w wyniku której ciśnienie atmosferyczne podane w hektopaskalach (hPa)
ostanie przeliczone na milimetry słupa rtęci (mmHg). Jeśli nie masz barometru, sprawdź aktualną wartość
ciśnienia atmosferycznego w jednym z serwisów z prognozą pogody.
1 hPa = 0.75006167382112 mmHg
'''

def milimetry( hPa ):
    return hPa * 0.75006167382112

def milimetry_txt( hPa ):
    return str(hPa * 0.75006167382112) + ' mmHg.'

mm1 = milimetry(991.8)
print('Aktualne ciśnienienie wynosi ' + str(mm1) + ' mmHg.')

mm2 = milimetry_txt(991.8)
print('Aktualne ciśnienienie wynosi ' + mm2)