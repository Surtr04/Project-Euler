def factorial (n) 
	
	if n==0
		return 1
	else
		return n * factorial(n-1)
	end
end



def combinations (n,r) 
	return factorial(n)/(factorial(r)*factorial(n-r))
end


n = 23
count = 0

while n <= 100

	r = 0

	while r <= n
		if combinations(n,r) > 1000000
			count+=1		
		end
		r+=1
	end

	n+=1

end 

print count