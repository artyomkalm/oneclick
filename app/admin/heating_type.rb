ActiveAdmin.register HeatingType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>80
end
