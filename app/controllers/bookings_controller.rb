class BookingsController < ApplicationController
  before_action :set_gear, only: [:new, :create]


  def new
    @booking = Booking.new
    @gears = Gear.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.gear = @gear
    @booking.user = current_user
    @booking.save
    redirect_to user_path(@booking.user)
  end

  private

  def set_gear
    @gear = Gear.find(params[:gear_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:rental_start_date, :rental_end_date)
  end
end
