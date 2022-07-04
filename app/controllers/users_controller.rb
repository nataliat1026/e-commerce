class UsersController < ApplicationController
    before_action :authorize_user, except: [:create]

    #   GET /users/:id
    def show
        # current_user = User.find(session[:current_user])
        render json: current_user
    end

    #   POST /users
    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    #   PATCH /users/:id
    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user, status: :created
    end

    #   DELETE /users/:id
    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    private

    def user_params
        params.permit(:email, :password)
    end

end
