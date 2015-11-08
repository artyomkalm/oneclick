class AddParamsToAppartment < ActiveRecord::Migration
  def change
    add_column :appartments, :city_region_id, :integer
    add_column :appartments, :building_class_id, :integer
    add_column :appartments, :building_type_id, :integer
    add_column :appartments, :construction_phase_id, :integer
    add_column :appartments, :deal_type_id, :integer
    add_column :appartments, :electric_type_id, :integer
    add_column :appartments, :garbage_type_id, :integer
    add_column :appartments, :gas_type_id, :integer
    add_column :appartments, :heating_type_id, :integer
    add_column :appartments, :property_type_id, :integer
    add_column :appartments, :repair_type_id, :integer
    add_column :appartments, :room_type_id, :integer
    add_column :appartments, :sewage_type_id, :integer
    add_column :appartments, :traffic_object_id, :integer
    add_column :appartments, :water_type_id, :integer

    add_column :appartments, :traffic_object_distance, :integer
    add_column :appartments, :lq_name, :string
    add_column :appartments, :is_new, :boolean
    add_column :appartments, :builder, :string
    add_column :appartments, :finish_date_quartal, :string
    add_column :appartments, :finish_date_year, :integer
    add_column :appartments, :finished_at, :datetime
    add_column :appartments, :is_second, :boolean
    add_column :appartments, :build_at, :datetime
    add_column :appartments, :is_flat, :boolean
    add_column :appartments, :is_flatpart, :boolean
    add_column :appartments, :is_studio, :boolean
    add_column :appartments, :is_freeplan, :boolean
    add_column :appartments, :is_smallfamily, :boolean
    add_column :appartments, :room_count, :integer
    add_column :appartments, :square, :integer
    add_column :appartments, :living_area, :integer
    add_column :appartments, :kitchen_area, :integer
    add_column :appartments, :room_area, :string
    add_column :appartments, :loggia, :integer
    add_column :appartments, :loggia_area, :integer
    add_column :appartments, :loggia_window, :boolean
    add_column :appartments, :balcony, :integer
    add_column :appartments, :balcony_area, :integer
    add_column :appartments, :balcony_window, :boolean
    add_column :appartments, :pantry, :integer
    add_column :appartments, :pantry_area, :integer
    add_column :appartments, :sauna, :integer
    add_column :appartments, :pool, :integer
    add_column :appartments, :pool_area, :integer
    add_column :appartments, :wc_fused, :integer
    add_column :appartments, :separate_bathroom, :integer
    add_column :appartments, :architectural_style, :string
    add_column :appartments, :elevator, :integer
    add_column :appartments, :service_elevator, :integer
    add_column :appartments, :parking_include, :boolean
    add_column :appartments, :is_fenced, :boolean
    add_column :appartments, :price, :integer
    add_column :appartments, :is_doc_ready, :boolean
    add_column :appartments, :allow_bargaining, :boolean
    add_column :appartments, :allow_brokers, :boolean
    add_column :appartments, :allow_mortgage, :boolean

    create_table :appartment_infrastructure_objects, id: false do |t|
      t.belongs_to :appartment
      t.belongs_to :infrastructure_object
    end
    add_index :appartment_infrastructure_objects, :appartment_id, name: "appartment_id"
    add_index :appartment_infrastructure_objects, :infrastructure_object_id, name: "infrastructure_object_id"

    create_table :appartment_parkings, id: false do |t|
      t.belongs_to :appartment, index: true
      t.belongs_to :parking, index: true
    end

    create_table :appartment_security_types, id: false do |t|
      t.belongs_to :appartment, index: true
      t.belongs_to :security_type, index: true
    end

    create_table :appartment_territory_objects, id: false do |t|
      t.belongs_to :appartment, index: true
      t.belongs_to :territory_object, index: true
    end


  end
end
