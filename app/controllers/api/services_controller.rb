class Api::ServicesController <  ActionController::API

    def index
        render json: {status: 'wszystko OK! :-)'}.to_json
    end

    def bmi 
    	service = BmiService.new # tworzenie instancji klasy serwisu
        #obsługa parametrów
    	weight = params[:weight].to_f
    	height = params[:height].sub(',','.').to_f/100

        # obliczanie wyników
    	bmi_results = service.calculate( { weight: weight, height: height })
        # zwracanie jako json
    	render json: bmi_results.to_json
    end


    def biorythms
    	service = BiorythmService.new # tworzenie instancji klasy serwisu
    	bdate = Date.parse(params[:birth_date]) #obsługa parametrów
        # obliczanie wyników
    	biorythm_results = service.calculate(bdate)
        # zwracanie jako json
    	render json: biorythm_results.to_json
    end

end