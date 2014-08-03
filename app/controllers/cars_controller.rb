class CarsController < ApplicationController
  load_and_authorize_resource

  def index
    @cars = @cars.order("id desc").page(params[:page])
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to cars_path, notice: '车辆添加成功.'
    else
      render :new
    end
  end

  def update
    if @car.update(car_params)
      redirect_to @car, notice: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_url, notice: 'Car was successfully destroyed.'
  end

  private
  def car_params
    params.require(:car).permit(:price, :vin, :color, :model, :cc)
  end
end
