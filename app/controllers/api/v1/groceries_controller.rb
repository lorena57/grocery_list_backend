class Api::V1::GroceriesController < ApplicationController

    def index
        @groceries = Grocery.all
        render json: @groceries
    end

    def create
        grocery = Grocery.new(grocery_params)
        if grocery.save
            render json: grocery, status: :accepted
        else
            render json: {errors: grocery.errors.full_messages}
        end
    end

    private

    def grocery_params
        params.require(:grocery).permit(:grocery_item, :qty, :notes, :market_id)
    end


end