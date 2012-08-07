#problem 13

 f = File.open("50digit.txt")

number = String.new

 f.each do |line|
 	number << line
 end

number = number.split("\n").join


sum = 0
arr = Array.new

(0..(number.length-50)).step(50) do |x|

	sum += number[x,50].to_i

end

p sum.to_s[0,10]