class SecurityType < ActiveRecord::Base
  has_and_belongs_to_many :appartments,
                          :class_name => 'Appartment',
                          :join_table => 'appartment_security_types',
                          :foreign_key => 'security_type_id',
                          :association_foreign_key => 'appartment_id'

  validates :name, presence: true
end
