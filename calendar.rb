#problem 19

require 'date'

beginDate = Date.new(1901,1,1)
endDate = Date.new(2000,12,31)

sundays = 0

while not beginDate === endDate 
	
	mondays +=1 if beginDate.wday == 0 and beginDate.day == 1

	beginDate = beginDate.next
	
end

p sundays