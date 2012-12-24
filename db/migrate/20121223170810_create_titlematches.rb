class CreateTitlematches < ActiveRecord::Migration
  def change
    create_table :titlematches do |t|
      t.integer :title_id
      t.string :user
      t.date :date_won

      t.timestamps
    end
  end
end
