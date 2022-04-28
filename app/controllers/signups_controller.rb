class SignupsController < ApplicationController
    

    def index 
        render json: Signup.all
    end

    def create 
        signup = Signup.create(signup_params)
        render json: signup.activity
    end

    private 

    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end
end
