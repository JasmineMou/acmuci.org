ActiveAdmin.register Post do
  permit_params :title, :content, :category, :admin_user

end
