class Api::V1::GroceriesController < ApplicationController

    def index
        groceries = Grocery.all
        render json: GrocerySerializer.new(groceries)
    end

      def create
        market = Market.find_by(id: grocery_params['market_id'])
        grocery = Grocery.new(grocery_params)
        grocery.market = market
        if grocery.save
            render json: GrocerySerializer.new(grocery), status: :accepted
        else
            render json: {errors: grocery.errors.full_messages}
        end
    end

    def show
        grocery = Grocery.find_by(id: params[:id])
        if grocery 
            render json: GrocerySerializer.new(grocery)
        else 
            render json: {message: 'Groceries not found'}
        end
    end

    def update
        grocery = Grocery.find_by(id: params[:id])
        grocery.update(grocery_params)
        render json: grocery, status: 200
    end

    def destroy
        grocery = Grocery.find_by(id: params[:id])
        grocery.delete
        render json: {groceryId: grocery.id}
    end

    private

    def grocery_params
        params.require(:grocery).permit(:grocery_item, :qty, :notes, :market_id) 
    end

end