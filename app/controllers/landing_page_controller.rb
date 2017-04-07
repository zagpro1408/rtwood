class LandingPageController < ApplicationController
  def index
    @order = Order.new
  end
end
