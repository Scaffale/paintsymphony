require 'test_helper'

class FinalphaseTest < ActiveSupport::TestCase
  test "finalphase should have all pictures" do
    @finalphase1 = Finalphase.create()
    debugger
    assert_equal(@finalphase1.pictures.all.count, Picture.all.count)
  end
end
