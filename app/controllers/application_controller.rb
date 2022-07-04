class ApplicationController < ActionController::API
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_message

    def current_user
        user = User.find(session[:current_user])
    end

    def authorize_user
        render json: { error: 'Not Authorized' } unless current_user
    end

    private

    def not_found_message(invalid)
        render json: { errors: invalid }, status: :not_found
    end

    def invalid_message(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

end
