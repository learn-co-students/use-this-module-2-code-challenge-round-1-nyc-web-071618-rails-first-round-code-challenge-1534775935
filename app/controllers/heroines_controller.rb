class HeroinesController < ApplicationController
  before_action :find_heroine, only:[:show, :edit, :update, :destroy]

  def index
    # @heroines = Heroine.all
    @heroines = Heroine.search(params[:search])
  end

  def show
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

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
