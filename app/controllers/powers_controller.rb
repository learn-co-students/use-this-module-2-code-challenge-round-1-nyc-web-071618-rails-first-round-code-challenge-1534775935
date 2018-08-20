class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  private

  def heroine_params
     params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
