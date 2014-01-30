def hello
	"Hello!"
end

def greet(someone)
	"Hello, #{someone}!"	
end

=begin
========================================
$ rake
the hello function
  says hello

the greet function  
  says hello to someone
  says hello to someone else

Finished in 0.00081 seconds
3 examples, 0 failures	
========================================	
=end