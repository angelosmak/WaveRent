class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    @gears = @user.gears
  end
end
