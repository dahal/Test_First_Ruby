def add(a, b)
	(a + b)
end

def subtract(a, b)
	(a - b)
end

def sum(array)
	#initialize sum
	sum = 0
	#add each numbers in array
	array.each do |num| #num => numbers in array
		sum += num		
	end
	#return sum
	sum
end

def multiply(array)
	#initialize multiply
	multiply = 1
	#multiply each numbers in array
	array.each do |num| #num=> numbers in array
		multiply *= num
	end
	#return multiplied value
	multiply
end

def power(a, b)
	(a**b)
end

def factorial(n)
	#Initialize the result
	factorial = 1
	#This is a easiest way I found on ruby-doc.org
	# (http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-reduce)
	while n > 1
		# n! = n(n-1)
		factorial *= n
		n -= 1
	end	
	factorial
end

=begin
======================================================
$ rake

add
  adds 0 and 0
  adds 2 and 2
  adds positive numbers

subtract
  subtracts numbers

sum
  computes the sum of an empty array
  computes the sum of an array of one number
  computes the sum of an array of two numbers
  computes the sum of an array of many numbers

multiply
  multiplies two numbers
  multiplies several numbers

power
  raises one number to the power of another number
  3 to the power of 3

factorial
  computes the factorial of 0
  computes the factorial of 1
  computes the factorial of 2
  computes the factorial of 5
  computes the factorial of 10

Finished in 0.0212 seconds
17 examples, 0 failures
======================================================

=end