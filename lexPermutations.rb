#problem 24


class Array

	def swap(a,b)
		self[a], self[b] = self[b], self[a]
	end
	self
end

#to be finished
def permutations(arr)

	n = arr.length
	res = Array.new(2*n,Array.new(n))
	
	(0..(2*n)-1).each do |x|		
		(0..(n-1)).each do |y|
			res[x][y] = arr[y]
		end		
	end



	res
end

=begin
arr = permutations([1,2,3])
p arr

p [1,2,3].permutation.to_a
=end

a = [0,1,2,3,4,5,6,7,8,9].permutation.to_a

p a[999_999]