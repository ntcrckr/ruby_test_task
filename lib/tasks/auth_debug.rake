namespace :auth_debug do
  desc "TODO"
  task generate_users: :environment do
    # amount = 1
    GenerateUsers.generate
  end

end
