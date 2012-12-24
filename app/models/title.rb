class Title < ActiveRecord::Base
  attr_accessible :owner, :title, :date_acquired, :image_url
  has_many :titlematches

  def days_since_acquired()
    days_since = 0
    if (date_acquired)
      days_since = (Date.today - date_acquired).to_i
    end

    return days_since
  end
end
