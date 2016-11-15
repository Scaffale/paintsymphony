require 'test_helper'
require 'test/unit'

class SessionsControllerTest < ActionController::TestCase

	# test "session should have a phase" do
	# 	assert_not_nil(@sessione1.phases.count, "Sessione1 has no phase")
	# end

	test "check YML pictures" do
		assert_equal(2, Picture.count)
	end

	test "check YML music" do
		assert_equal(2, Music.count)
	end

	# test "create_Phases should create N elements" do
	# 	pic = pictures(:number_one)
	# 	assert_not_nil(pic, "Problem with YML file")
	# 	@sessione1.create_Phases
	# 	debugger
	# 	assert_same(Picture.count + Music.count, @sessione1.phases.count)
	# 	assert_same(4, @sessione1.create_Phases.phases.count)
	# end

	test "session should have finalphase" do
		assert_equal(Session.create().finalphases.count, Music.count)
	end

	test "finalphase should have a music" do
		assert_not_nil(Session.create().finalphases.first.music)
	end
end