ActiveAdmin.register WaterType do
 permit_params :name, :description
 menu :parent => 'Свойства недвижимости', :priority=>150
end
