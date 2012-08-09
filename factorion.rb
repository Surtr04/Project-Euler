#problem 34

class Integer

	def factorial
		if self == 0
			1
		else
			self.downto(1).reduce(1,:*)
		end
	end

	def isFactorion?

		arr = self.to_s.split("")
		sum = 0
		arr.each do |x|
			sum += x.to_i.factorial
		end
		
		if sum == self
			return true
		end

		false
	end

end


#there are only 4 factorions, so the upper bound must be relatively small
sum = 0

(3..50000).each do |x|
	sum += x if x.isFactorion?
end

p sum





