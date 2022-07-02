class ApplicationController < ActionController::API
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_message

    private

    def not_found_message(invalid)
        render json: { errors: invalid }, status: :not_found
    end

    def invalid_message(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

end
