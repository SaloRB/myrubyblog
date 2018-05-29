ActiveAdmin.register Message do
	permit_params :name, :email, :body
	index do
		selectable_column
		id_column
		column :name
		column :email
		column "Message", :body
		column :created_at
		actions
	end
end
