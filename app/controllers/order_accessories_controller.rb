class OrderAccessoriesController < ApplicationController
  before_action :set_order_accessory, only: [:show, :edit, :update, :destroy]

  # GET /order_accessories
  # GET /order_accessories.json
  def index
    @order_accessories = OrderAccessory.all
  end

  # GET /order_accessories/1
  # GET /order_accessories/1.json
  def show
  end

  # GET /order_accessories/new
  def new
    @order_accessory = OrderAccessory.new
  end

  # GET /order_accessories/1/edit
  def edit
  end

  # POST /order_accessories
  # POST /order_accessories.json
  def create
    @order_accessory = OrderAccessory.new(order_accessory_params)

    respond_to do |format|
      if @order_accessory.save
        format.html { redirect_to @order_accessory, notice: 'Order accessory was successfully created.' }
        format.json { render :show, status: :created, location: @order_accessory }
      else
        format.html { render :new }
        format.json { render json: @order_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_accessories/1
  # PATCH/PUT /order_accessories/1.json
  def update
    respond_to do |format|
      if @order_accessory.update(order_accessory_params)
        format.html { redirect_to @order_accessory, notice: 'Order accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_accessory }
      else
        format.html { render :edit }
        format.json { render json: @order_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_accessories/1
  # DELETE /order_accessories/1.json
  def destroy
    @order_accessory.destroy
    respond_to do |format|
      format.html { redirect_to order_accessories_url, notice: 'Order accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_accessory
      @order_accessory = OrderAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_accessory_params
      params.require(:order_accessory).permit(:accessory_id, :count)
    end
end
