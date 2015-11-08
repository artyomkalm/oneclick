ActiveAdmin.register InfrastructureObject do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>90
end
