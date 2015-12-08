class AddCityRegionIdToLqs < ActiveRecord::Migration
  def change
    add_column :lqs, :city_region_id, :integer
  end
end
