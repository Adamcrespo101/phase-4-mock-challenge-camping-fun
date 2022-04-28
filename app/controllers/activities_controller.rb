class ActivitiesController < ApplicationController
before_action :find_activity

    def index 
        render json: Activity.all, status: 200
    end

    def show 
        if @activity 
        render json: @activity, serializer: ShowActivitySignupSerializer
        else 
            render json: {error: "activity not found"}, status: 404
    end
end

    def destroy 
        if @activity 
            @activity.destroy
        else 
            render json: {error: "activity not found"}, status: 404
    end
end

    private 

    def find_activity
        @activity = Activity.find_by(id: params[:id])
    end



end
