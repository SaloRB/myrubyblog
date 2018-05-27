ActiveAdmin.register_page "Dashboard" do
    content title: proc{ I18n.t("active_admin.dashboard") } do
        columns do
            column do
                panel "Recent Posts" do
                    table_for Post.order("id desc").limit(20) do
                        # column :id
                        column "Title", :title do |post|
                            link_to post.title, [:admin, post]
                        end
                        column "Author", :admin_user
                        column :category, :sortable => :category
                        column :created_at
                    end
                    strong (link_to "Show All Posts", :admin_posts)
                end
            end

            column do
                panel "Categories" do
                    table_for Category.order("id").limit(20) do
                        # column :id
                        column "Name", :name do |category|
                            link_to category.name, [:admin, category]
                        end
                        column :created_at
                    end
                    strong (link_to "Show All Categories", :admin_categories)
                end
            end
        end
        columns do
            column do
                panel "Messages" do
                    table_for Message.order("id desc").limit(20) do
                        column :name do |message|
                            link_to message.name, [:admin, message]
                        end
                        column :email
                        column "Message", :body
                        column :created_at
                    end
                    strong (link_to "Show All Messages", :admin_messages)
                end
            end
        end
    end # content
end
