require 'test_helper'
require 'test/unit'

class PicturesControllerTest < ActionController::TestCase
  def setup
 	@picture1 = Picture.create()
 	@picture2 = Picture.create()	
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "Picture should have id" do
  	assert_not_nil(@picture1.id, "Picture has no id")
  end

  # test "Pictures should be deleted" do
  #   @picture1.destroy
  #   assert_response :success
  #   assert_nil(@picture1, "Picture is still here")
  # end

  test "All pictures can be deleted at once" do
    assert_not_same(Picture.count, 0, "Picture has no element")
    Picture.delete_all
    assert_same(Picture.count, 0, "Picture has more than one element")
  end

end
