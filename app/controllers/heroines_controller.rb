class HeroinesController < ApplicationController




  def index
    @heroines = Heroine.all
    # @heroines = @heroines.power(params[:power_id]) if params[:status].present?
    # bonus
  end

  def show
    @heroine=Heroine.find(params[:id])
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
    params.require(:heroine).permit(:name,:super_name,:power_id)
  end





end # end of HeroinesController class
