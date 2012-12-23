class AddDateAcquiredToTitles < ActiveRecord::Migration
  def change
    add_column :titles, :date_acquired, :date
  end
end
