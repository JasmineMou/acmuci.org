ActiveAdmin.register Event do
  permit_params :name, :desc, :datetime 
end