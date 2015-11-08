ActiveAdmin.register BuildingState do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>260
end
