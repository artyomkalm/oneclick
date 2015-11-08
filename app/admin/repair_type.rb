ActiveAdmin.register RepairType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>120  
end
