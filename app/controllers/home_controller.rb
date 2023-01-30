class HomeController < ApplicationController
  def index
    # @users = User.all
    @items = 5
    @pagy, @records = pagy(User.all, items: @items)
    render
  end
end
