class CampersController < ApplicationController
before_action :find_camper

    def index 
        render json: Camper.all
    end

    def show 
        if @camper 
            render json: @camper
        else 
            render json: {error: "Camper not found"}, status: 404
        end
    end

    def create 
        camper = Camper.create(camper_params)
        render json: camper
    end

    private 

    def find_camper 
        @camper = Camper.find_by(id: params[:id])
    end

    def camper_params 
        params.permit(:name, :age)
    end

end
