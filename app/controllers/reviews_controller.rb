class ReviewsController < ApplicationController

    #   POST /reviews
    def create
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    #   PATCH /reviews/:id
    def update
        review = Review.find(params[:id])
        review.update!(review_params)
        render json: review, status: :created
    end

    #   DELETE /reviews/:id
    def destroy
        review = Review.find(params[:id])
        review.destroy
        head :no_content
    end

    private

    def review_params
        params.permit(:rating, :content, :product_id, :user_id)
    end

end
