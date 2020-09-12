class AddUserIdToPrototype < ActiveRecord::Migration[6.0]
  def change
    add_reference :prototypes, :user, foreign_key: true
  end
end
