class Appartment < ActiveRecord::Base
  belongs_to :city
  belongs_to :street
  belongs_to :user
  belongs_to :lq
  belongs_to :house

  validates :code_number, presence: true

end
