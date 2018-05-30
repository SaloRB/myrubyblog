require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "should not save category without name" do
    category = Category.new
    assert_not category.save, "Saved the category without a name"
  end

  test "should save with correct name" do
  	category = Category.new
  	category.name = "Test Category"
  	assert_not_equal "Test Category1", category.name
  end
end
