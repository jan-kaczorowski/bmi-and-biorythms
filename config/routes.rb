Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index' 

  #scope module: :api, defaults: {format: :json}, path: 'api' do
    # get :index, to: 'services#index'
    # get :biorythms, to: 'services#biorythms' # http://127.0.0.1:3000/api/biorythms?birth_date=1985-06-20
    # get :bmi, to: 'services#bmi' # http://127.0.0.1:3000/api/bmi?height=178&weight=84
    #post :biorythms, to: 'services#biorythms' # POST http://127.0.0.1:3000/api/biorythms  {birth_date: 1985-06-20}
    #post :bmi, to: 'services#bmi' # POST http://127.0.0.1:3000/api/bmi    { height: 178, weight: 84 }
  #end

  namespace :api, defaults: {format: :json} do
    post :bmi, to: 'services#bmi' # path: api/bmi
  end

  get :bmi, to: 'home#bmi'
  get :biorythms, to: 'home#biorythms'



end
