ActiveAdmin.register WindowsType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>250
end
