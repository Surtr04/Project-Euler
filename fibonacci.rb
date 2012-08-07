
def fibonacci (n)

	arr = Array.new
	arr[0] = 0
	arr[1] = 1

	(2..n).each do |x|
		arr[x] = arr[x-1] + arr[x-2]
	end
	arr.pop	
end


i = 1
num = 0

while num.to_s.length < 1000

	num = fibonacci(i)
	i+=1

end

p num
p (i-1)

