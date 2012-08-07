#problem 15

#reduce - recursion --> reduce(caso paragem,simbolo) --> tipo foldr
class Integer 
	def factorial
		(1..self).reduce(1,:*)
	end
end

rows = cols = 20

res = (rows+cols).factorial / (rows.factorial * cols.factorial)

print res
