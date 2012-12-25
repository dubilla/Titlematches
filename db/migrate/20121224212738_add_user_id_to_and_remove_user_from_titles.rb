class AddUserIdToAndRemoveUserFromTitles < ActiveRecord::Migration
  # these are flipped around, how to fix...hmmm... do we really need to? :)
  def change
    add_column :titlematches, :user_id, :integer
    remove_column :titlematches, :user
  end
end
