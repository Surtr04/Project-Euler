#problem 30

class Integer

	def isFifthPowerSum?
		arr = self.to_s.split("")
		sum = 0

		arr.each do |x|
			sum += x.to_i ** 5
		end

		return true if sum == self

		false

	end

end

arr = Array.new

(4000..200_000).each do |x|
	arr << x if x.isFifthPowerSum?
end

p arr.reduce(0,:+)