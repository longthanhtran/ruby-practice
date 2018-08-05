require 'minitest/autorun'
require './lib/round'

class RoundTest < Minitest::Test
	def test_if_round_return_array
		assert_equal 72, round(72)
	end

	def test_round_returns_if_behind_3
		assert_equal 75, round(73)
	end

	def test_round_returns_if_less_than_times_10
		assert_equal 67, round(67)
	end

	def test_round_with_edge_case
		assert_equal 70, round(68)
	end

	def test_round_with_38_case
		assert_equal 40, round(38)
	end

	def test_round_with_73_case
		assert_equal 75, round(73)
	end

end