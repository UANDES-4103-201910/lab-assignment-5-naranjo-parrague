class EventVenuesController < ApplicationController
  def create
    @eventvenue = EventVenue.create(name: params[:name], address: params[:address], capacity: [:capacity])
    render json: @eventvenue
  end

  def destroy
    @eventvenue = EventVenue.find(params[:id]).delete
    render json: {}
  end

  def update
    @eventvenue = EventVenue.find(params[:id])
    @eventvenue.update(name: params[:name], address: params[:address], capacity: [:capacity])
    render json: @eventvenue
  end
end
