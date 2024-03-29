class Title < ActiveRecord::Base
  attr_accessible :owner, :title, :date_acquired, :image_url
  has_many :titlematches
  belongs_to :user

  # should probably make an ApplicationHelper to get days_since
  # and a separate one to get the actual date of the last titlematch for the given title [DBU]
  def days_since_acquired()
    days_since = ""
    # Would be nice to make this more DRY - a private method? [DBU 12/25/12]
    titlematch = Titlematch.order(:date_won).find_by_title_id(id)
    if titlematch
      date_acquired = titlematch.date_won
    end

    days_since = 0
    if date_acquired
      days_since = (Date.today - date_acquired).to_i
    end

    return days_since
  end

  def get_owner()
    owner = ""
    titlematch = Titlematch.order(:date_won).find_by_title_id(id)
    if titlematch and titlematch.user
      owner = titlematch.user.display_name
    end
    return owner
  end

end
