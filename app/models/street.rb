class Street < ActiveRecord::Base

  belongs_to :city
  has_many :houses

  validates :name, presence: true
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{self.city.name}, #{self.name}"
  end

end
