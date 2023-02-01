class HomeController < ApplicationController
  def index
    @items = 25
    @pagy, @records = pagy(User.all, items: @items)
    render
  end
end
