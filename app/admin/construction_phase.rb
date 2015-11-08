ActiveAdmin.register ConstructionPhase do
  permit_params :name, :description
  menu :parent => 'Свойства недвижимости', :priority=>30
end
