class GenerateUsersController < ApplicationController
  def index
    amount = 1
    GenerateUsers.new(amount).generate
  end
end
