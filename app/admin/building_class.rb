ActiveAdmin.register BuildingClass do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>10
end
