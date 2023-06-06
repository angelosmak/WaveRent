class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def home
  end

  def show
  end
end
