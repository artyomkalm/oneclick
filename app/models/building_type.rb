class BuildingType < ActiveRecord::Base
  has_many :appartments

  validates :name, presence: true
end
