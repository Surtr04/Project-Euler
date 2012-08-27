#problem 31


def count (s,m,n)

	if n == 0
		return 1
	end

	if n < 0
		return 0
	end

	if m <= 0 && n >= 1
		return 0
	end

	count(s,m-1,n) + count(s,m,n-(s[m-1]))

end

coins = [1,2,5,10,20,50,100,200]

p count(coins,8,200)