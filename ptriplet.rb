
def isPTriplet (i,j,w) 
	if(i < j && j < w)
		if( (i**2 + j**2) == w**2)
			return true
		end
	end

	return false
end

def euclidFormula(m,n) 

	a = Array.new

	a << m**2 - n**2
	a << 2*m*n
	a << m**2 + n**2

	return a
end


m = 1
n = 0

i = j = w = 0


while m < 100
	while m > n
		a = euclidFormula(m,n)
		
		if((a[0] + a[1] + a[2]) == 1000)
			print a[0] 
			print "\n"
			print a[1]
			print "\n" 
			print a[2]
			print "\n"
		end
		n+=1
	end
	m+=1
	n=0
end