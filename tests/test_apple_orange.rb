require 'minitest/autorun'
require './lib/apple_orange'

class TestAppleOrange < Minitest::Test
	def setup
		@s, @t = 7, 11
		@a, @b = 5, 15
		@apples  = [-2, 2, 1]
		@oranges = [5, -6]
	end

	def test_count_apples_and_oranges_takes_params
		assert (countApplesAndOranges(@s, @t, @a, @b, @apples, @oranges).is_a? Array) == true
	end

	def test_count_apples_and_oranges_returns_correct_values
		apple_amount = 1
		orange_amount = 1

		assert_equal "#{apple_amount}\n#{orange_amount}", 
			countApplesAndOranges(@s, @t, @a, @b, @apples, @oranges).join("\n")
	end

	def get_input03
		f = File.open("tests/input03.txt")
		home = f.readline.split
		tree = f.readline.split
		veg = f.readline.split
		apples = f.readline
		oranges = f.readline
		f.close

		[home, tree, veg, apples, oranges]
	end

	def test_with_huge_data
		apple = 18409
		orange = 19582

		data = get_input03
		s = data[0][0].to_i
		t = data[0][1].to_i
		a = data[1][0].to_i
		b = data[1][1].to_i


		ap = data[3].split.map{|i| i.to_i}
		op = data[4].split.map{|i| i.to_i}


		assert_equal "#{apple}\n#{orange}", 
			countApplesAndOranges(s, t, a, b, ap, op).join("\n")

	end
end