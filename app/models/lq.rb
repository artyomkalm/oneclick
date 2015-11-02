class Lq < ActiveRecord::Base

  belongs_to :city
  has_many :houses

  validates :number_code, presence: true

end
