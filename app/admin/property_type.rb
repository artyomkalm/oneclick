ActiveAdmin.register PropertyType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>110
end
