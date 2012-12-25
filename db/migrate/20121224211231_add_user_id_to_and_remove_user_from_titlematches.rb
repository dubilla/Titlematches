class AddUserIdToAndRemoveUserFromTitlematches < ActiveRecord::Migration
  def change
    add_column :titles, :user_id, :integer
    remove_column :titles, :user
  end
end
