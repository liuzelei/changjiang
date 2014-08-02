class AccessoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @accessories = @accessories.page(params[:page])
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @accessory = Accessory.new(accessory_params)

    if @accessory.save
      redirect_to @accessory, notice: 'Accessory was successfully created.'
    else
      render :new
    end
  end

  def update
      if @accessory.update(accessory_params)
        redirect_to @accessory, notice: 'Accessory was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /accessories/1
  # DELETE /accessories/1.json
  def destroy
    @accessory.destroy
    redirect_to accessories_url, notice: 'Accessory was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_accessory
    @accessory = Accessory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def accessory_params
    params.require(:accessory).permit(:name, :count)
  end
end
