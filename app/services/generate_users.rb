# frozen_string_literal: true
class GenerateUsers
  def initialize(amount)
    @amount = amount
  end

  def generate
    @amount.times {
      email = Faker::Name.unique.first_name + '@test.com'
      new_user = User.new({
                            email: email,
                            password: "testtest",
                            password_confirmation: "testtest"
                          })
      # new_user.confirm
      new_user.save
    }
  end
end
