class MarketsController < ApplicationController
  def index
    @market = Market.order(:name)
  end

  def new
  end

  def create
  end

  def show
    @market = Market.find(params[:id].to_i)
    @vendor = Vendor.where(market_id: params[:id].to_i)
  end

  def edit
    @market = market
  end

  def update
    market.name = params[:market][:name]
    market.address = params[:market][:address]
    market.city = params[:market][:city]
    market.county = params[:market][:county]
    market.state = params[:market][:state]
    market.zip = params[:market][:zip].to_i
    market.save
    redirect_to :market
  end

  def destroy
    market.destroy
    redirect_to :markets
  end

  def market
    @market ||= Market.find(params[:id].to_i)
  end
end
