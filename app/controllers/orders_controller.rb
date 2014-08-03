class OrdersController < ApplicationController
  load_and_authorize_resource

  def index
    @orders = @orders.order("id desc").page(params[:page])
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  private
  def order_params
    params.require(:order).permit(:car_id, :customer_name, :price, :no)
  end
end
