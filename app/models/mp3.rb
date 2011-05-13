class Mp3 < ActiveRecord::Base

  # associations
  has_many :ratings

  # validations
  validates_presence_of :url
  validates_presence_of :title
  validates_presence_of :artist_name
  validates_presence_of :length

  def average_rating
    self.ratings.map(&:value).inject(0.0) { |sum,el| sum + el } / self.ratings.map(&:value).size
  end

end
