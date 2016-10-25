require 'test_helper'
require 'test/unit'

class SessionsControllerTest < ActionController::TestCase
  def setup
 	@sessione1 = Session.create()
 	@sessione2 = Session.create()	
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "session should have id" do
  	assert_not_nil(@sessione1.id, "Session has no id")
  end

  test "sessions should have different id" do
  	assert_same(@sessione2.id, @sessione2.id, "Session2 has different id")
  	assert_not_same(@sessione1.id, @sessione2.id, "Sessione 1 & 2 has same id")
  end

  
end
