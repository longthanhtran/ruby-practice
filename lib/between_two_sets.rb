def getTotalX(a, b)
	first_b = b.sort.first
	tmp, count = [], 0
	1.upto(first_b) {|i|
		tmp.push i if a.all? {|j| i%j ==0}
	}
	tmp.each {|t|
		count+=1 if b.all? {|k| k%t==0 }
	}
	count
end
