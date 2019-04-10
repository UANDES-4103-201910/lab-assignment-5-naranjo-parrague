class TicketsController < ApplicationController
  def create
    @ticket = Ticket.create(ticket_type: params[:ticket_type], order: params[:order])
    render json: @ticket
  end

  def destroy
    @ticket = Ticket.find(params[:id]).delete
    render json: {}
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(ticket_type: params[:ticket_type], order: params[:order])
    render json: @ticket
  end

end
