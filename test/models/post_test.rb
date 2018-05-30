require 'test_helper'

class PostTest < ActiveSupport::TestCase
	# test "If title is there" do
	# 	post = Post.new(:title => "")
	# 	assert post.valid?
	# end

	test "If body is long enough" do
		post = Post.new
		post.category_id = 1
		post.admin_user_id = 1
		assert post.save
	end
end
