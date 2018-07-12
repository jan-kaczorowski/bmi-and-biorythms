
class HomeController < ApplicationController

    def index
     render json:   { status: "super"}.to_json
    end

end