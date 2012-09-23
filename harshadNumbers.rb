#problem 387

require 'mathn'

class String

	def take n

		s = self.size
		cuts = s - n
		str = self
				
		while cuts != 0 do
			str[s-1] = ""
			s -= 1
			cuts -= 1					
		end

		return str

	end


end

class Integer

	def sumD
		self.to_s.split("").inject(0) do |sum,x|
			sum += x.to_i
		end
	end

	
	def isHarshad?

		if(self % (self.sumD) == 0)
			return true
		end
		false
	
	end

	def rtHarshad?

		num = self

		harshad = true

		while harshad and num != 0

			if(!num.isHarshad?)
				harshad = false
			end
			num = num.truncate
		end

		harshad
	end

	def truncate
		s = self.to_s
		
		return s.take(s.size-1).to_i

	end

	def stHarshad?

		if self.isHarshad?
			if (self/self.sumD).prime?
				return true
			end
		end

		false

	end

	def rtHarshadPrime? 

		if(self.prime? && self.truncate.rtHarshad?)
			return true
		end
		false
	end

end



acc = 0

(0..100).each do |x|
	acc += x if x.rtHarshadPrime?
end

p acc

acc = 0

(0..100).each do |x|
	acc += x if x.prime?
end

p acc