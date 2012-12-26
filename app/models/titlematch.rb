class Titlematch < ActiveRecord::Base
  attr_accessible :date_won, :title_id, :user_id
  belongs_to :title
  belongs_to :user
end