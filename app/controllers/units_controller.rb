class UnitsController < ApplicationController
  def uf
    date_uf = Date.parse(params[:date])
    @unit = Unit.find_by(date: date_uf)
    unit_value = @unit.value

    response = {
      requested_date: date_uf,
      value: unit_value
    }

    respond_to do |format|
      format.json {
        render json: response
        Customer.create(customer_name: params[:client], request_date: Time.now, request: request.fullpath)
      }
      format.html { render html: 'Requests in HTML are forbidden' }
    end
  end
end
