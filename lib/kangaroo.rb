def kangaroo(x1, v1, x2, v2)
	return 'YES' if (v1 > v2 and (x2-x1)%(v1-v2) == 0)
	'NO'
end