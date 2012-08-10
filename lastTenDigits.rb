#problem 48

class String

	def drop(count)
		
		str = String.new
		arr = self.split("")
		i = - count

		while i < 0 do
			str << arr[i]			
			i+=1
		end

		str
	end

end

sum = 0

(1..1000).each do |x|
	sum += x**x
end

p sum.to_s.drop(10)

p 2**7830457 % 10**10