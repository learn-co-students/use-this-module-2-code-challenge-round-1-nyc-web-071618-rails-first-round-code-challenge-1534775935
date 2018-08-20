class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  def new
    @heroine = Heroine.new
  end

  def create
    if @heroine = Heroine.create(heroine_params)
      #missing parameter
      byebug
      flash[:notice] = "Success"
      redirect_to heroine_path(@heroine) #no id, therefore no redirection
    else
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
end
