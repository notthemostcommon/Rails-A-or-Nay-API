class FavoritesController < ApplicationController
    before_action :set_fave, only: [:update, :destroy]

    def index
        @favorites = Favorite.all
        render json: @favorites
    end
    
    def create
      @favorite = Favorite.new(fave_params)
      if @favorite.save!
        puts "OK"
        render json: @favorite
      else
        raise "Error!"
      end
    end

    def update
      if @favorite.update(fave_params)
        puts "OK"
        render json: @favorite
      else 
        raise "Error!"
      end
    end
    
    def destroy
        if @favorite.delete
            puts "DELETED!"
            render json: Favorite.all 
        else
            raise "ERROR!"
        end
    end

    private 

    def fave_params
        params.permit(:dba, :camis, :bldg, :street, :boro, :zip, :user_id)
    end

    def set_fave
        @favorite = Favorite.find(params[:id])
    end

end
