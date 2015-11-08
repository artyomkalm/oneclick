class TrafficObject < ActiveRecord::Base
  has_many :appartments

  validates :name, presence: true
end
