class OrdersController < ApplicationController

  def show
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        # Отправка заявки менеджеру
        OrderMailer.for_employee(@order).deliver_later
        format.html { render :show }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def order_params
      params.require(:order).permit(:company, :name, :email, :number, :text)
    end
end
