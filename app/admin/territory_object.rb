ActiveAdmin.register TerritoryObject do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>180
end
