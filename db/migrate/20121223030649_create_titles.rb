class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :title
      t.string :owner
      t.date :date_acquired

      t.timestamps
    end
  end
end
