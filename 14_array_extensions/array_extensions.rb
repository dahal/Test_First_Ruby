class Array
	def sum
		sum = 0
		if self.empty?
			sum = 0
		else
			sum = self.inject(:+)
		end
	end

	def square
		#empty if nothing
		if self.empty?
			[]
			
		else
			#square each numbers in array
			self.map! do |x|
				x ** 2
			end
		end
	end

	def square!
		#preety much same as above
		self.map! do |x|
			x ** 2
		end
	end
end

=begin
=============================================

		$ rake
		Array
		  sum
		    has a sum method
		    should be 0 for an empty array
		    should add all of the elements
		  square
		    does nothing to an empty array
		    returns a new array containing the squares of each element
		  square!
		    squares each element of the original array

		Finished in 0.00369 seconds
		6 examples, 0 failures

=============================================	
=end