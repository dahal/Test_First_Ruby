def ftoc(fahrenheit)
	#(°F  -  32)  x  5/9 = °C
	(fahrenheit-32)*(5.0/9.0)
end

def ctof(celsius)
	#°C  x  9/5 + 32 = °F
	(celsius*(9.0/5.0) + 32)	
end

=begin
============================
$ rake	
Finished in 0.02886 seconds
8 examples, 0 failures
============================	
=end