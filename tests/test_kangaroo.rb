require 'minitest/autorun'
require './lib/kangaroo'

class TestKangaroo < Minitest::Test

	def test_if_kangaroo_runs
		assert kangaroo(@x1, @v1, @x2, @v2) == 'YES'
	end

	def test_both_kangaroos_meet_at_some_point
		assert_equal 'YES', kangaroo(0, 3, 4, 2)
	end

	def test_both_kangaroos_cannot_meet_at_some_point
		assert_equal 'NO', kangaroo(0, 2, 5, 3)
	end

	def test_with_fail_from_hackerrank
		assert_equal 'NO', kangaroo(21, 6, 47, 3)
	end

	def test_another_tricky_result_from_hackerrank
		assert_equal 'YES', kangaroo(14, 4, 98, 2)
	end

	def test_another_big_result_from_hackerrank
		assert_equal 'YES', kangaroo(1571, 4240, 9023, 4234)
	end

	def test_another_strange_result_from_hackerrank
		assert_equal 'NO', kangaroo(43, 2, 70, 2)
	end

end