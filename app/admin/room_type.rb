ActiveAdmin.register RoomType do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>130
end
