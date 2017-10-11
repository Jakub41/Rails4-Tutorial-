ActiveAdmin.register Post do
  menu label: 'Blog Posts'
  permit_params :title, :category_id, :body
end
