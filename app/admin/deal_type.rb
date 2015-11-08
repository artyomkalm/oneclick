ActiveAdmin.register DealType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>40
end
