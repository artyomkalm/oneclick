class House < ActiveRecord::Base
  has_many :appartments
  belongs_to :street
  belongs_to :lq

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{self.street.city.name}, #{self.lq.number_code}/#{self.number_lq}"
  end
end
