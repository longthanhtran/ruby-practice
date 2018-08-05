def countApplesAndOranges(s, t, a, b, apples, oranges)
	n_a = apples.reduce(0) {|tt, at| (a+at >= s and a+at <=t) ? tt+1 : tt }
  n_o = oranges.reduce(0) {|tt, ot| (b+ot <= t and b+ot>= s) ? tt+1 : tt }
  return [n_a, n_o]
end