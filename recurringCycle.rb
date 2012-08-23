#problem 26

#numbers = Hash.new
# primes = File.open("primes.txt","rb").read

# primes = primes.split(",").map do |x|
#  	x.to_i
# end

#calculate all fractions up to 1000 whose denomitor is prime and remove decimal part
# (1..1000).each do |x|
# 	if primes.include? x
# 		num = (1.quo(x).to_f).to_s
# 		num[0] = ""
# 		num[0] = ""
# 		numbers[x] = num
# 	end
# end

#reject numbers without cycles
# numbers.reject! do |key,val|
# 	val.length < 15
# end

#reject numbers with 1 digit cycles
# numbers.reject! do |key,val|
# 	num = val[0]
# 	/^#{num}+$/.match(val.to_s)
# end


# numbers.each do |key,val|
# 	num = val[0]
# 	puts key.to_s + " , " + val
# end


# numbers.each do |key,val|
# 	num = val.slice(0..(key-2))
# 	puts key.to_s
# 	p val.split(/(#{num})/)
# end


#fermatt's little theorem
def rcLength(n)
	#check coprimes
  	return 0 if n % 2 == 0 or n % 5 == 0
 
	i = 1
	until ((10**i) % n) == 1
		i += 1
	end
	
	return i

end

max = 0
num = 0
period = 0

(2..1000).each do |x|
	period = rcLength x
	max = period and num = x if period > max
end

p num.to_s + " " + max.to_s