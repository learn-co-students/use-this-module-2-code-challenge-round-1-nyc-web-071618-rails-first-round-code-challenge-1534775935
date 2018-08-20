class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end


  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_param)
    if @heroine.valid?
      flash[:notice] = "Post successfully created"
      redirect_to heroine_path(@heroine)
    else
      flash[:notice] = "Post unsuccessfully created"
      render :new
    end
  end

  private
  def heroine_param
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
