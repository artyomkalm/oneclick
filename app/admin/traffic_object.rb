ActiveAdmin.register TrafficObject do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>190
end
