class PowersController < ApplicationController
  before_action :find_power, only:[:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def power_params
    params.require(:power).permit(:name, :description)
  end

  def find_power
    @power = Power.find(params[:id])
  end
end
