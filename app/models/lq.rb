class Lq < ActiveRecord::Base

  belongs_to :city
  belongs_to :city_region
  has_many :houses

  validates :number_code, presence: true
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{self.city.name}, #{self.number_code}/1"
  end

  

end
