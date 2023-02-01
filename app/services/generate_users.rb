# frozen_string_literal: true
class GenerateUsers
  def initialize(amount = 10)
    @amount = amount
  end

  def generate
    @amount.times {
      firstname = Faker::Name.unique.first_name
      lastname = Faker::Name.unique.last_name
      email = firstname + "_" + lastname + '@test.com'
      new_user = User.new({
                            email: email,
                            firstname: firstname,
                            lastname: lastname,
                            password: "testtest",
                            password_confirmation: "testtest"
                          })
      # new_user.confirm
      new_user.save
    }
  end
end
