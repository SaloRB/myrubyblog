class Post < ApplicationRecord
	# attr_accessible :tile, :body, :category_id, :author_id
	belongs_to :category
	belongs_to :admin_user
	has_many :post_comments, :dependent => :destroy
	# validates :title, :presence => true
	validates_length_of :body, :minimum => 10
end
