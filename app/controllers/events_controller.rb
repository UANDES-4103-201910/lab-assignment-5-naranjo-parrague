class EventsController < ApplicationController
  def create
    @event = Event.new(name: params[:name],description: params[:description], start_date: params[:start_date], event_venue: params[:event_venue])
    render json: @event
  end

  def destroy
    @event = Event.find(params[:id]).delete
    render json: @event
  end

  def update
    @event = Event.find(params[:id])
    @event.update(name: params[:name],description: params[:description], start_date: params[:start_date], event_venue: params[:event_venue])
    render json: @event
  end

  def upcoming_events
  end
end
