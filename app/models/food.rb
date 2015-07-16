class Food < ActiveRecord::Base
  validates_presence_of :calories
  validates_presence_of :name
  belongs_to :user

  def formatted_time
    return self.created_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A %B %d at %I:%M %p")
  end
end
