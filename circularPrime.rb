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
		tmp = rotations = self.to_s.length

		a = self

		while a.isPrime? and rotations > 0 do						
			a = a.rotate			
			rotations -= 1
		end

		if rotations == 0
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


arr = generatePrime(1000000)

p arr

