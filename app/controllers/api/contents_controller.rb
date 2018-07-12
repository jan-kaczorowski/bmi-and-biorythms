class Api::ContentsController < ApplicationController

    def index
        #ww = Whatever.new
        #render json: ww
        render json: {cokolwiek: 'uwaga'}.to_json
    end

end