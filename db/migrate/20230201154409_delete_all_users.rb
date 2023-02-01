class DeleteAllUsers < ActiveRecord::Migration[7.0]
  def change
    User.destroy_all
  end
end
