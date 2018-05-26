require 'test_helper'

class PostTest < ActiveSupport::TestCase
	# test "If title is there" do
	# 	post = Post.new(:title => "")
	# 	assert post.valid?
	# end

	test "If body is long enough" do
		post = Post.new(:title => "Title", :body => "This a valid body")
		assert post.valid?
	end
end
