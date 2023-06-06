class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]

  def new
    @gear = Gear.new
  end

  def index
    @gears = Gear.all
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def create
    @gear = Gear.new(gears_params)
    @gear.save
    redirect_to gear_path(@gear)
  end

  def update
    @gear.update(gear_params)
    redirect_to gear_path(@gear)
  end

  def edit
  end

  def destroy
    @gear.destroy
    redirect_to gears_path
  end

  def gears_params
    params.require(:gear).permit(:model, :brand, :size, :rate_per_day)
  end

  def set_list
    @gear = Gear.find(params[:gear_id])
  end
end
