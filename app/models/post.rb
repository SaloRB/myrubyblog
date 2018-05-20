class Post < ApplicationRecord
	# attr_accessible :tile, :body, :category_id, :author_id
	belongs_to :category
end
