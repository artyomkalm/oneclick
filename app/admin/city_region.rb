ActiveAdmin.register CityRegion do

  permit_params :name, :description, :city_id
  menu :parent => 'Адреса', :priority=>60


end
