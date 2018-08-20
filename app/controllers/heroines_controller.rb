class HeroinesController < ApplicationController
  #before_action(:find_heroine)
  def index
    @heroines = Heroine.all
    render :index
  end
  
  def show
    @heroine = Heroine.find(params[:id])
    render :show
  end
  
  def new
    @heroine = Heroine.new
    render :new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      flash[:notice] = 'New Heroine Created'
      redirect_to heroines_path
    else
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

  # def find_heroine
  #   @heroine = Heroine.find(params[:id])
  # end
end
