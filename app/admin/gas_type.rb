ActiveAdmin.register GasType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>70
end
