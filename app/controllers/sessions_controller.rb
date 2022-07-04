class SessionsController < ApplicationController

    def login
        user = User.find_by!(email: params[:email])
        if user&.authenticate(params[:password])

            session[:current_user] ||= user.id
            session[:login_attempts] ||= 0

            render json: { user: 'Successfully logged in!' }, status: 200
        else
            session[:login_attempts] ||= 0
            session[:login_attempts] += 1

            render json: { errors: 'Invalid password and/or username' }, status: :unprocessable_entity
        end
    end

    def logout
        session.delete :current_user
    end

end
