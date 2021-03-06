ActiveAdmin.register Post do

	menu label: "Blog Posts", priority: 2
	permit_params :category_id, :title, :body, :admin_user_id
	index do
		selectable_column
		column :id
		column :title
		column "Author",:admin_user
		column :category
		column :created_at
		actions
	end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
