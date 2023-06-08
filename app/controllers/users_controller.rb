class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    @gears = @user.gears
  end

  private

  def article_params
    params.require(:user).permit(:first_name, :first_name, :body, :photo, :email, :address, :phone)
  end
end
