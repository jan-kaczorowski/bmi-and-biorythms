
class HomeController < ApplicationController

    def index
    	
    end

    def bmi 
    	service = BmiService.new # tworzenie instancji klasy serwisu
        #obsługa parametrów
    	weight = params[:weight].to_f
    	height = params[:height].sub(',','.').to_f/100

        # sub albo gsub

        # obliczanie wyników

    	@bmi_results = service.calculate( { weight: weight, height: height })
        # zwracanie jako json

    end


    def biorythms
    	service = BiorythmService.new # tworzenie instancji klasy serwisu
    	bdate = Date.parse(params[:birth_date]) #obsługa parametrów
        # obliczanie wyników
    	@biorythm_results = service.calculate(bdate)
        # zwracanie jako json

    end

end




