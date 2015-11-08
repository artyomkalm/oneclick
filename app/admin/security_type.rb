ActiveAdmin.register SecurityType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>140  
end
