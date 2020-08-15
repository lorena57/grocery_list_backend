class Api::V1::MarketsController < ApplicationController

    def index
        markets = Market.all
        render json: MarketSerializer.new(markets)
    end

    def create
        if Market.find_by(:name => market_params[:name])
            market = Market.find_by(:name => market_params[:name])
        redirect_to '/api/v1/markets/#{market.id}'
        else
            market = Market.create(market_params)
            market.save!
            render json: market
    end
end


    def show
        market = Market.find_by(:id =>[:id])
        render json: market
    end

    private

    def market_params
        params.require(:market).permit(:name)
    end


end
