class Appartment < ActiveRecord::Base
  belongs_to :city
  belongs_to :street
  belongs_to :user
  belongs_to :lq
  belongs_to :house
  belongs_to :city_region
  belongs_to :building_class
  belongs_to :building_type
  belongs_to :construction_phase
  belongs_to :deal_type
  belongs_to :electric_type
  belongs_to :garbage_type
  belongs_to :gas_type
  belongs_to :heating_type
  belongs_to :property_type
  belongs_to :repair_type
  belongs_to :room_type
  belongs_to :sewage_type
  belongs_to :traffic_object
  belongs_to :water_type
  belongs_to :windows_type
  belongs_to :building_state


  has_and_belongs_to_many :goods_types,
                          :class_name => 'GoodsType',
                          :join_table => 'appartment_goods_types',
                          :foreign_key => 'appartment_id',
                          :association_foreign_key => 'goods_type_id'  
  has_and_belongs_to_many :infrastructure_objects,
                          :class_name => 'InfrastructureObject',
                          :join_table => 'appartment_infrastructure_objects',
                          :foreign_key => 'appartment_id',
                          :association_foreign_key => 'infrastructure_object_id'
  has_and_belongs_to_many :parkings,
                          :class_name => 'Parking',
                          :join_table => 'appartment_parkings',
                          :foreign_key => 'appartment_id',
                          :association_foreign_key => 'parking_id'
  has_and_belongs_to_many :security_types,
                          :class_name => 'SecurityType',
                          :join_table => 'appartment_security_types',
                          :foreign_key => 'appartment_id',
                          :association_foreign_key => 'security_type_id'
  has_and_belongs_to_many :territory_objects,
                          :class_name => 'TerritoryObject',
                          :join_table => 'appartment_territory_objects',
                          :foreign_key => 'appartment_id',
                          :association_foreign_key => 'territory_object_id'


end
