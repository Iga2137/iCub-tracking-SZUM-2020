# iCub-tracking-SZUM-2020

Celem projektu jest śledzenie obiektu za pomoca oczu robota iCub.

# Pierwsze kroki

Na wstępie należy połączyć się z serwerem i uruchomić symulację
```bat
$ yarpserver
$ iCub_SIM
```

W przeglądarce internetowej wpisujemy adres IP z portem 10002 (world), gdzie tworzymy obiekt , za ktorym podążać będą oczy robota.

http://82.145.77.104:10002/form

```bat
world mk box 0.3 0.3 0.3 0.3 0.2 1 1 0 0  
```
W ten sposób przygotowaliśmy symulację do wykonania programu

# Śledzenie

Otworzenie odpowiednich portów - world oraz head - odbywa się poprzez uruchomienie programu icub1.m

Następnie uruchamiamy program icub2.m, który działa nieprzerwanie podczas manipulacji obiektem.

Kostkę przesuwamy w przeglądarce internetowej pod adresem http://82.145.77.104:10002/form za pomocą komendy:

```bat
world set box 1 x y z 
```
gdzie x,y,z oznaczają współrzędne położenia kostki.

Tak długo, jak uruchomiony jest program icub2.m, robot wodzi oczami za obiektem

# Prezentacja działania:

https://www.youtube.com/watch?v=WRmBl1uQUNo&feature=youtu.be
