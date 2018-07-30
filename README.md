# Cwiczenia

projekt dostępny pod adresem biorythms.jankaczorowski.pl


## Etap 0

robimy nowy projekt w rails
baza danych - sqlite


## Etap 1

### Business: 
1) system ma być zdolny do liczenia BMI na podstawie *wagi* i *wzrostu* w metrach.
2) system ma zwracać a) BMI - liczba b) komunikat - czy ktoś ma wagę normalną, niedowagę czy nadwagę


### wzór BMI:
waga_w_kg / (wzrost_w_metrach)^2


### ToDo
budujemy klasę która będzie to obliczać


## Etap 2

### Business:
1) system ma być zdolny do liczenia 3 biorytmów (intelektualny, fizyczny, emocjonalny) na podstawie daty urodzenia człowieka
2) system ma zwracać wyniki 3 biorytmów, trendy (opadający, wznoszący) i prognozy na X następnych dni 


### wzór obliczania biorytmów:
ogólny: 2*PI*T/OKRES, gdzie:

T - to ilość dni życia od dnia urodzin
OKRES:
	- dla intelektualnego:		33 dni
	- dla fizycznego: 			23 dni
	- dla emocjonalnego:		28 dni

### ToDo
budujemy klasę która będzie to obliczać


## Etap 3

Robimy proste 2 formularze które pozwalają obliczać BMI i Biorytmy




## Etap 4

Robimy proste API, które pozwala wyciągnąć BMI i Biorytmy z pominięciem layoutu



# Odpalanie w Dockerze

cd do folderu
```shell
docker build -t biorythms:latest .
docker run --name biorythms_app -p 3000:3000 biorythms:latest
```