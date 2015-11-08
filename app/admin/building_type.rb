ActiveAdmin.register BuildingType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>20
end
