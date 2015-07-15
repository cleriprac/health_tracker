class Exercise < ActiveRecord::Base
  validates_presence_of :calories
  validates_presence_of :name
  belongs_to :user
end
