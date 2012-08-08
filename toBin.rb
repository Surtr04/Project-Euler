#problem 36

def toBin(num)

	str = String.new

	while num > 0
		if (num%2==0)
			str << "0"
		else
			str << "1"
		end

		num /= 2

	end


	return str.reverse

end


def isPalindrome(num)

	dec = num.to_s
	bin = toBin(num)

	return true if dec == dec.reverse and bin == bin.reverse

	false

end


sum = 0

(1..1_000_000).each do |x| 
	sum += x if isPalindrome(x)
end

p sum
