class HeroinesController < ApplicationController
  def index
    # @heroines = Heroine.all
    @heroines = Heroine.filter_by_power(params[:power])
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = Power.find(@heroine.power_id)
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

private

def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
end

end
