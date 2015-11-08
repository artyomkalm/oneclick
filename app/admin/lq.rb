ActiveAdmin.register Lq do
  permit_params :name, :city_id, :longitude, :latitude
  menu :parent => 'Адреса', :priority=>30

end
