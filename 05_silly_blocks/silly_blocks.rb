def reverser
	#yield is the string returned, we first split and reverse individually and join them.
	words = yield.split
	words.collect! do |word|
		word.reverse
	end
	words.join(" ")
end

def adder(n=1)
	yield + n
end

def repeater(n=1)
	#we repeat yield (returned value) n times, default being 1.
	n.times do
		yield
	end
end

=begin

======================================================================

some silly block functions
  reverser
    reverses the string returned by the default block
    reverses each word in the string returned by the default block
  adder
    adds one to the value returned by the default block
    adds 3 to the value returned by the default block
  repeater
    executes the default block
    executes the default block 3 times
    executes the default block 10 times

Finished in 0.003 seconds
7 examples, 0 failures



======================================================================
=end