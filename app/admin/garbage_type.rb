ActiveAdmin.register GarbageType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>60
end
