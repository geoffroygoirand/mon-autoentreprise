class InvoicesController < ApplicationController

  before_action :set_client, only: [:edit, :upadate, :destroy]


  def new
    @invoice = Invoice.new
  end

  def show
    @invoice=Invoice.find(params[:id])
    @invoices = Invoice.all
  end


  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.user = current_user
    if @invoice.save
        redirect_to info_path
    else
        render "new"
    end
  end

  def edit
     @invoice = Invoice.find(params[:id])
  end

  def update
      @invoice = Invoice.find(params[:id])
      @invoice.update!(invoice_params)
      redirect_to invoice
  end

  def calculate
    @invoices = Invoice.all
     @turn_over = 0
    @invoices.each do |invoice|
    @turn_over += invoice.amount
    @charge_sociale = @turn_over*0.22
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to root
  end

  private
  require 'date'

  def invoice_params
      params.require(:invoice).permit(:object, :amount, :date, :user_id, :client_id)
  end

  def set_client
      @client = Client.find(params[:id])
  end

end