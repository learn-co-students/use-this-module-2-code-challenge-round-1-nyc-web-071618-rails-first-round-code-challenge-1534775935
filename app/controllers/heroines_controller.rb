class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
    if params[:name]
      @heroine = Heroine.where('name LIKE ?', "%#{params[:name]}%")
      else
      @heroine = Heroine.all
    end
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if  @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
    idz = @heroine.power_id
    @power = Power.find(idz)

  end
end

private

def heroine_params
  params.require(:heroine).permit(:name, :super_name, :power_id)
end
