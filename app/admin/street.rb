ActiveAdmin.register Street do
  permit_params :name, :description
  menu :parent => 'Адреса', :priority=>20

end
