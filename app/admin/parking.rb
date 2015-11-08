ActiveAdmin.register Parking do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>100
end
