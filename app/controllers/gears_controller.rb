class GearsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_gear, only: [:edit, :update, :destroy]

  def index
#     @pagy, @gears = pagy(Gear.all, items: 5)
    @markers = @gears.geocoded.map do |gear|
        {
          lat: gear.latitude,
          lng: gear.longitude
        }
      end
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR description ILIKE :query OR brand ILIKE :query OR model ILIKE :query OR size ILIKE :query OR category ILIKE :query"
      @gears = Gear.where(sql_subquery, query: "%#{params[:query]}%")
    else
      @gears = Gear.all
    end

  end

  def show
    @gear = Gear.find(params[:id])
  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gears_params)
    @gear.user_id = current_user.id
    @gear.save
    if @gear.save
      redirect_to gear_path(@gear), notice: "Gear was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @gear.update(gears_params)
    redirect_to gears_path(@gear)
  end

  def edit
  end

  def destroy
    @gear.destroy
    redirect_to gears_path
  end


  private

  def gears_params
    params.require(:gear).permit(:model, :brand, :size, :rate_per_day, :title, :category, :description, photos:[])
  end

  def set_gear
    @gear = Gear.find(params[:gear_id])
  end
end
