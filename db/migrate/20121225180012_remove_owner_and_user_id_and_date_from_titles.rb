class RemoveOwnerAndUserIdAndDateFromTitles < ActiveRecord::Migration
  def up
    remove_column :titles, :owner
    remove_column :titles, :user_id
    remove_column :titles, :date
  end

  def down
    add_column :titles, :owner, :string
    add_column :titles, :user_id, :integer
    add_column :titles, :date, :date
  end
end
