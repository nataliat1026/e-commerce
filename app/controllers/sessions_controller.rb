class SessionsController < ApplicationController

    def login
        user = User.find_by!(email: params[:email])
        if user&.authenticate(params[:password])
            render json: { user: 'Successfully logged in!' }, status: 200
        else
            render json: { errors: 'Invalid password or username' }, status: :unprocessable_entity
        end
    end

end