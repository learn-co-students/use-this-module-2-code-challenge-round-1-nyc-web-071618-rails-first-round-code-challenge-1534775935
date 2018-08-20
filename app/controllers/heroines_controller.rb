class HeroinesController < ApplicationController
  def index
    if params[:power_filter] == "super strength"
      @heroines = Heroine.all.select { |heroine| heroine.power_id == 1 }
    elsif params[:power_filter] == 'flight'
      @heroines = Heroine.all.select { |heroine| heroine.power_id == 2 }
    elsif params[:power_filter] == 'super human senses'
      @heroines = Heroine.all.select { |heroine| heroine.power_id == 3 }
    elsif params[:power_filter] == 'elasticity'
      @heroines = Heroine.all.select { |heroine| heroine.power_id == 4 }
    else
      @heroines = Heroine.all
    end
  end

  def show
    @heroine = Heroine.find_by_id(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(params.require(:heroine).permit(:name, :super_name, :power_id))
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

end
