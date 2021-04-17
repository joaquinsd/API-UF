class CustomersController < ApplicationController

  def client
    @customer = Customer.find_by(customer_name: params[:client])
    @requests = Customer.where(customer_name: params[:client]).count
    @request_counter = "The amount of requests #{@customer.customer_name} has made is #{@requests}"
    render json: @request_counter
  end
end