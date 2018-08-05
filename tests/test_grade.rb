require 'minitest/autorun'
require './lib/grade'

class GradeTest < MiniTest::Test

	def test_with_four_ele_array
		arr = [73, 67, 38, 33]

		assert_equal [75, 67, 40, 33], gradingStudents(arr)
	end

	def test_round_with_73

		assert_equal 75, round(73)
	end

end