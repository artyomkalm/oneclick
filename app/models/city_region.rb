class CityRegion < ActiveRecord::Base
  belongs_to :city
  has_many :appartments
  has_many :lqs

  validates :name, presence: true
end
