#problem 35


class Integer 

	def rotate

		tmp = self.to_s

		arr = Array.new

		tmp.split("").each do |x|
			arr << x.to_i	
		end

		return arr.push(arr.shift).join.to_i

	end


	def isPrime? 

		(2..(Math.sqrt(self))).each do |x|
			if self % x == 0
				return false
			end			
		end

		return true
	end

	def isCircular?
		tmp = rotations = self.to_s.length-1

		a = self

		while a.isPrime? and rotations > 0 do						
			a = a.rotate			
			rotations -= 1
		end

		if rotations == 0 and a.isP
			return true
		else
			return false
		end

	end

end

def generatePrime(limit)

	arr = Array.new

	arr << 2

	(3..limit).step(2) do |x|
		arr << x if x.isPrime?
	end

	return arr

end

#tmp code to generate primes
=begin
arr = generatePrime(1_000_000)

fout = File.new("primes","w")

i = arr.size - 1
while i >= 0 do 
	fout.write(arr.shift)
	fout.write(",") unless arr.size == 0
	i-=1 
end
=end

fin = File.open("primes")

str = String.new

fin.each do |x|
	str << x
end
arr = str.split(",").map do |x|
	x.to_i
end


arr.reject { |x|
	not x.isCircular?
}

p arr
p arr.size

#result 55



