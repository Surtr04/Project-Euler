#problem 12

require 'mathn'

TriFactor = Struct.new(:val,:divs)


class Integer
  def divisor_count
    sum = 1

    # prime_division return two dimensional array.

    # for 48, [3,1], [2,4] is the result

    self.prime_division.each do |x|
      sum *= (x[1] + 1)
    end

    sum
  end
end

# Define the counter and first triangle number
i, triangle_number = 1, 1

while(triangle_number.divisor_count <= 500)
  i += 1
  triangle_number += i
end 

puts triangle_number

=begin

def genTriangleNum(ord) 

	sum = 0

	(1..ord).each do |x|
		sum += x
	end

	return TriFactor.new(sum,divisors(sum))
end

def divisors (num)

	arr = Array.new

	num.downto(1) do |x|
		
		a = num.quo(x)

		arr << a if /[1-9]+\.0$/.match(a.to_s)
		
	end	
	return arr
end


s = TriFactor.new
i = 1

s = genTriangleNum(i)

while s.divs.length < 500 do
	i+=1	
	p s
	s = genTriangleNum i
end

p s
=end