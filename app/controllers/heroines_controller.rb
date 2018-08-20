class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :edit, :update, :destroy]

  def index
    if params[:superpower]
      @heroines = Heroine.select {|heroine| heroine.power.name.include?(params[:superpower])}
    else
      @heroines = Heroine.all
    end

    #i think this is suppoed to be in models...NOT SURE!!
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

  #show is implicit
  #edit is implicit

  def update
    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      render :edit
    end
  end

  def destroy
    @heroine.destroy
    redirect_to heroines_path
  end

  private

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end #end heroine class controller
