require 'minitest/autorun'
require './lib/between_two_sets'

class TestBetweenSets < Minitest::Test

	def test_get_total_receive_two_args
		assert getTotalX([2, 6], [24, 36]) == 2
	end

	def test_simple_2_and_3_arrays
		a = [2, 4]
		b = [16, 32, 96]
		
		assert_equal 3, getTotalX(a, b)
	end

end