class RepairType < ActiveRecord::Base
  has_many :appartments

  validates :name, presence: true
end
