class WaterType < ActiveRecord::Base
  has_many :appartments

  validates :name, presence: true
end
