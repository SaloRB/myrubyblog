ActiveAdmin.register Message do
	permit_params :name, :email, :body
end
