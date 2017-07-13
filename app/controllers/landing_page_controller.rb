class LandingPageController < ApplicationController
  def index
    @order = Order.new
  end

  def gallery
  end
end
