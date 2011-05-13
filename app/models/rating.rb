class Rating < ActiveRecord::Base

  # associations
  belongs_to :mp3

  # validations
  validates_presence_of :user
  validates_presence_of :value



end
