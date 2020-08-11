class Api::V1::GroceriesController < ApplicationController

    def index
        groceries = Grocery.all
        render json: GrocerySerializer.new(groceries)
    end

    def create
        grocery = Grocery.new(grocery_params)
        
        if grocery.save
            render json: grocery, status: :accepted
        else
            render json: {errors: grocery.errors.full_messages}
        end
    end

    def update
        grocery = Grocery.find(params[:id])
        grocery.update(grocery_params))
        render json: grocery, status: 200    
    end

    def show
        grocery = Grocery.find_by(id: params[:id])
        if grocery 
            render json: GrocerySerializer.new(grocery)
        else 
            render json: {message: 'Groceries not found'}
            
        end
    end

    private

    def grocery_params
        
        params.require(:grocery).permit(:grocery_item, :notes, :market_id, :name) 
        
    end


end
