#problem 27


class Integer 

	def prime?

		(2..self).each do |x| 
			(2..Math.sqrt(self)).each do |y|
				if y * x == self
					return false
				end
			end
		end

		return true

	end
end


=begin
fout = File.new("primes_1000.txt","w")
str = String.new

(1..1000).each do |x|
	if x.prime? 
		str << (x.to_s + ",")
	end
end
fout.write str.slice(0..str.length-2)
=end

fin = File.open("primes_1000.txt","rb").read
primes = File.open("primes.txt","rb").read

primes = primes.split(",").map do |x|
	x.to_i
end

fin = fin.split(",").map do |x|
	x.to_i
end

max = 0
product = 0

(-1000..1000).each do |a|
	p a
	fin.each do |b|

	i = 0

	i+=1 until !(primes.include? ((i**2) + (a*i) + b))

	max = i and product = a * b if i > max

	end
end


p max 
p product



	

