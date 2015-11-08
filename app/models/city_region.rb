class CityRegion < ActiveRecord::Base
  belongs_to :city
  has_many :appartments

  validates :name, presence: true
end
