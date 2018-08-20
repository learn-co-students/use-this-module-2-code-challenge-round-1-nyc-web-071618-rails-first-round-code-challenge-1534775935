class PowersController < ApplicationController
  before_action :find_power, only: [:show]

  def index
    @powers = Power.all
  end

  #show is implicit

  private

  def find_power
    @power = Power.find(params[:id])
  end
end
