class GenerateUsersController < ApplicationController
  def index
    # amount = 1
    GenerateUsers.new.generate
  end
end
