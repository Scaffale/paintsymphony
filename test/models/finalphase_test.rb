require 'test_helper'

class FinalphaseTest < ActiveSupport::TestCase
  test "finalphase should have all pictures" do
    @finalphase1 = Finalphase.create()
    assert_equal(@finalphase1.pictures.count, Pictures.all.count)
  end
end
