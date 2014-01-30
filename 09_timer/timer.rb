require "time"

class Timer
	attr_accessor :seconds
	#initialize seconds to 0 to pass first test
	def initialize
		@seconds = 0	
	end

	#we will do the time conversion from minutes, hours => seconds and return the time on seconds
	def time_string
		seconds = @seconds % 60
		minutes = (@seconds / 60) % 60
		hours =   @seconds / (60 * 60)
		"#{padded(hours)}" + ":#{padded(minutes)}" + ":#{padded(seconds)}"
	end
	
	#define what padded is and what it does?
	# it basically converts seconds less than 10 for example 7 to "07"
	def padded(num)
		if num < 10
			"0" + num.to_s
		else
			num.to_s
		end
		
	end
end

=begin
============================================
  should initialize to 0 seconds
  time_string
    should display 0 seconds as 00:00:00
    should display 12 seconds as 00:00:12
    should display 66 seconds as 00:01:06
    should display 4000 seconds as 01:06:40
  padded
    pads zero
    pads one
    doesn't pad a two-digit number
============================================	
=end