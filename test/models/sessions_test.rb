require 'test_helper'
require 'test/unit'

class SessionsControllerTest < ActionController::TestCase

	test "session should have a phase" do
		assert_not_nil(@sessione1.phases, "Sessione1 has no phase")
	end

	test "check YML pictures" do
		assert_equal(2, Picture.count)
	end

	test "check YML music" do
		assert_equal(2, Music.count)
	end

	test "create_Phases should create N elements" do
		pic = pictures(:number_one)
		assert_not_nil(pic, "Problem with YML file")
		assert_same(Picture.count + Music.count, @sessione1.create_Phases.count)
		assert_same(4, @sessione1.create_Phases.count)
	end

end