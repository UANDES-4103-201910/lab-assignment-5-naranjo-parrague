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

  def showtickettypes
    @tickettype = TicketType.find(params[:ticketypeid])
    @tickets = Ticket.where(ticket_type: @ticket_type)
    render json: @tickets
  end

  def createtickettypes
    @tickettype = TicketType.new(event: params[:event],price: params[:price], ticket_zone: params[:ticket_zone])
    render json: @tickettype
  end

  def updatetickettypes
    @tickettype = Ticket.find(params[:id])
    @tickettype.update(event: params[:event],price: params[:price], ticket_zone: params[:ticket_zone])
    render json: @ticket
  end

  def deletetickettypes
    @tickettype = tickettype.find(params[:id]).delete
    render json: {}
  end

end
