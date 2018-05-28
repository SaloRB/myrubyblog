ActiveAdmin.register Message do
	permit_params :name, :email, :body
	index do
		column "ID",:id
		column :name
		column :email
		column "Message", :body
		column :created_at
		actions
	end
end
