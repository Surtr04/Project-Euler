#problem 52

arr2 = Array.new
arr3 = Array.new
arr4 = Array.new
arr5 = Array.new
arr6 = Array.new

num = 0

(100000..200000).each do |x|

	arr2 = (2*x).to_s.split("").sort
	arr3 = (3*x).to_s.split("").sort
	arr4 = (4*x).to_s.split("").sort
	arr5 = (5*x).to_s.split("").sort
	arr6 = (6*x).to_s.split("").sort

	num = x

	break if arr2.eql? arr3 and arr3.eql? arr4 and arr4.eql? arr5 and arr5.eql? arr6

end

p num