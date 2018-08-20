class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Article.find(params[:id])

    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      render :edit
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
