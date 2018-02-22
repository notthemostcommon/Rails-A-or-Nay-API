class ReviewsController < ApplicationController

    before_action :set_review, only: [:update, :destroy]

    def index
        @reviews = Review.all
        render json: @reviews
    end
    
    def create
        @review = Review.new(review_params)
        if @review.save!
        puts "OK"
        render json: @review
        else
        raise "Error!"
        end
    end

    def update
        if @review.update(review_params)
        puts "OK"
        render json: @review
        else 
        raise "Error!"
        end
    end
    
    def destroy
        if @review.delete
            puts "DELETED!"
            render json: Favorite.all 
        else
            raise "ERROR!"
        end
    end

    private 

    def review_params
        params.permit(:review, :rating, :dba, :camis, :bldg, :street, :boro, :zip, :user_id)
    end

    def set_review
        @review = Review.find(params[:id])
    end
    
end
