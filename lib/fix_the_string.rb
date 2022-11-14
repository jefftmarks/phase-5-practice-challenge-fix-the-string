require 'pry'

# expect(fix_the_string('cCcOdDdInGGgisSSfUUun')).to eq('cOdInGiSfUn')
# expect(fix_the_string('efFEFiiIxyeEYeZdDzd')).to eq('Fixed')

def isOppositeCase(char1, char2)
	if char1 != char2 && (char1.upcase == char2 || char2.upcase == char1)
		return true
	end
	return false
end

def fix_the_string(str)
	stack = []
	queue = str.split("")
	while queue.length > 0
		char = queue.shift
		if isOppositeCase(char, stack[stack.length - 1] || "")
			stack.pop
		else
			stack.push(char)
		end
	end

	stack.join()
end

=begin
Initialize empty stack array
Shift first letter from string
If last character in stack is same letter and opposite case:
	Remove last character from stack
Else, add it to end of stack
=end
