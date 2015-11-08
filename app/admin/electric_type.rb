ActiveAdmin.register ElectricType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>50
end
