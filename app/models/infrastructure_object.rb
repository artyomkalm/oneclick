class InfrastructureObject < ActiveRecord::Base
  has_and_belongs_to_many :appartments,
                          :class_name => 'Appartment',
                          :join_table => 'appartment_infrastructure_objects',
                          :foreign_key => 'infrastructure_object_id',
                          :association_foreign_key => 'appartment_id'

  validates :name, presence: true
end
