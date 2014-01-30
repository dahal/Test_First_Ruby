class RPNCalculator
	attr_accessor :calculator

	def initialize()
		#initialize calculator
		@calculator	= [0]
	end

	def push(n) #where n is number entered
		calculator.push(n)
	end

	def value
		calculator.last #the final answer in the calculator is its value	
	end

	def plus
		if @calculator.size > 1
			@calculator << @calculator.pop + @calculator.pop
		else
			raise "calculator is empty"
		end
		
	end

	def minus
		if @calculator.size > 1
			num_one = @calculator.pop
			num_two = @calculator.pop
			@calculator << num_two - num_one
		else
			raise "calculator is empty"
		end
		
	end

	def divide
		if @calculator.size > 1
			num_one = @calculator.pop.to_f
			num_two = @calculator.pop.to_f
			return @calculator << (num_two / num_one)
			
		else
			raise "calculator is empty"
		end
		
	end

	
	def times
		if @calculator.size > 1
			num_one = @calculator.pop.to_f
			num_two = @calculator.pop.to_f
			return @calculator << (num_two * num_one)
			
		else
			raise "calculator is empty"
		end
	end

	def tokens(weirdo)
		weirdo.split.map do |x|
			if (x == "+" || x == "-" || x == "*" || x == "/")
				x.to_sym	
			else
				x.to_f
			end
		end
	end

	def evaluate(weirdo)
		tokens(weirdo).each do |x|
			if x == :+
				self.plus
			elsif x == :-
				self.minus
			elsif x == :*
				self.times
			elsif x == :/
				self.divide	
			else
				push x
			end	
		end
		self.value
	end
	
end


=begin

================================================================	
		$ rake
		RPNCalculator
		  adds two numbers
		  adds three numbers
		  subtracts the second number from the first number
		  adds and subtracts
		  multiplies and divides
		  resolves operator precedence unambiguously
		  fails informatively when there's not enough values stacked away
		  tokenizes a string
		  evaluates a string

		Finished in 0.0025 seconds
		9 examples, 0 failures
================================================================
	
=end