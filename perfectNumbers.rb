#problem 23


=begin
	
A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 
1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, 
it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis 
even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

=end

class Integer 

	def divisors
		
		arr = Array.new

		(1..self).each do |x|
			arr << x if self % x == 0
		end

		arr.pop
		arr

	end

	def isAbundant?

		return true if self.divisors.reduce(0,:+) > self

		false

	end

end

arr = Array.new
sum = 0

(13..20200).each do |x|
	sum += x if not x.isAbundant?
end

p sum



def sum_proper_divisors n  
  sum = 1  
  (2..Math.sqrt(n)).each do |i|  
    if n % i == 0  
      result = n / i  
      sum += result unless result == i  
      sum += i  
    end  
  end  
  sum  
end  
  
def next_abundant repo  
  i = repo.last + 1  
  while( sum_proper_divisors(i) <= i)  
    i += 1  
  end  
  i  
end  
  
max   = 20_200  
repo  = [12]  
sums  = {24 => nil}  
total = 0  
  
while repo.last < max do  
  repo << next_abundant(repo)  
  repo.each do |i|  
    sum = repo.last + i  
    if sum > max  
      break  
    end  
    sums.store sum, nil  
  end  
end  
  
max.times do |i|  
  total += i unless sums.include? i  
end  
  
puts total  

