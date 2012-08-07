
def chain (seed) 

	arr = Array.new

	arr << seed

	while seed > 1
		
		if(seed.odd?)
			seed = (3*seed) + 1
			arr << seed		
		else
			seed = (seed/2)
			arr << seed
		end
	end
	arr
end

arr = Array.new
max = 0
num = 0

(1..1000000).each do |x|
	arr = chain(x)

	if arr.length > max
		max = arr.length
		num = x
	end

end

p num
p max