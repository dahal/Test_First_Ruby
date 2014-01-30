class Temperature
	#initializing celsius and fahrenheit
	def initialize(hash)
		@celsius = hash[:c]
		@fahrenheit = hash[:f]

		#conversion
		# (°F  -  32)  x  5/9 = °C
		# (°C  x  9/5) + 32 = °F
		@celsius = (@fahrenheit - 32) * (5.0/9.0) unless @fahrenheit.nil?
		@fahrenheit = (@celsius * (9.0/5.0)) + 32 unless @celsius.nil?

	end

	def in_fahrenheit
		@fahrenheit
	end

	def in_celsius
		@celsius
	end

	#for Factory method

	def self.from_fahrenheit(temp)
		Temperature.new(:f => temp)
	end

	def self.from_celsius(temp)
		Temperature.new(:c => temp)	
	end
	
end



 # test-driving bonus:

 #this is subclass of Temperature, so basically the value its going to use are passed onto main Temerature class.
class Celsius < Temperature

  def initialize(temp)
    @celsius = temp
    @fahrenheit = (@celsius * 9.0 / 5.0) + 32 unless @celsius.nil? 
  end

end

class Fahrenheit < Temperature
  
  def initialize(temp)
    @fahrenheit = temp
    @celsius = (@fahrenheit - 32) * 5.0 / 9.0 unless @fahrenheit.nil?
  end

end


=begin

===========================================
$ rake
Temperature
  can be constructed with an options hash
    in degrees fahrenheit
      at 50 degrees
      and correctly convert to celsius
        at freezing
        at boiling
        at body temperature
        at an arbitrary temperature
    in degrees celsius
      at 50 degrees
      and correctly convert to fahrenheit
        at freezing
        at boiling
        at body temperature
  can be constructed via factory methods
    in degrees celsius
    in degrees fahrenheit
  Temperature subclasses
    Celsius subclass
      is constructed in degrees celsius
      is a Temperature subclass
    Fahrenheit subclass
      is constructed in degrees fahrenheit
      is a Temperature subclass

Finished in 0.02424 seconds
15 examples, 0 failures	
=========================================
	
=end
