class BookingsController < ApplicationController
  before_action :set_gear, only: [:new, :create]
  before_action :set_booking, only: :show


  def new
    @booking = Booking.new
    @gear = Gear.find(params[:gear_id])
    @gears = Gear.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.gear = @gear
    @booking.save
    redirect_to gear_path(@gear)
  end

  private

  def set_gear
    @gear = Gear.find(params[:gear_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
