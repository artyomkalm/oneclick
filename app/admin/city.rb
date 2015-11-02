ActiveAdmin.register City do
  permit_params :name, :latitude, :longitude
  menu :parent => 'Адреса', :priority=>10

end
