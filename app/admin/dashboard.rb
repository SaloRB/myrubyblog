ActiveAdmin.register_page "Dashboard" do
    content title: proc{ I18n.t("active_admin.dashboard") } do
        columns do
            column do
                panel "Recent Posts" do
                    table_for Post.order("id desc").limit(5) do
                        column :id
                        column "Post Title", :title do |post|
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
                    table_for Category.order("id desc").limit(5) do
                        column :id
                        column "Category Name", :name do |category|
                            link_to category.name, [:admin, category]
                        end
                        column :created_at
                    end
                    strong (link_to "Show All Categories", :admin_categories)
                end
            end

            # column do
            #     panel "Info" do
            #         para "Welcome to ActiveAdmin."
            #     end
            # end
        end
    end # content
end
