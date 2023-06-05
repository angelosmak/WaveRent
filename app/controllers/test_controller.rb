class TestController < ApplicationController
  def method_name
    render :layout => 'another_layout'
  end
end
