class Dictionary
	#initialize entries empty initially
	attr_accessor :entries
	def initialize
		@entries = {}	
	end

	def add(entry)
		#check if the list has only one string, which represents word only withouth meaning
		if entry.is_a?(String)
			@entries[entry] = nil
		else
			entry.each do |word, meaning|
				@entries[word] = meaning
			end
		end
		
	end

	def keywords
		@entries.keys.sort
	end

	def include?(entry)
		if @entries.keys.include?(entry)
			true
		else
			false
		end
	end

	def find(entry)
		@entries.each do |word, meaning|
			
			if @entries.keys.include?(entry)
				entry[word] = meaning
			else
				return entry = {}
			end
			
		end	

	end

	

	def printable
		entry = ""
		@entries.sort.each do |word, meaning|
			entry += "[#{word}] \"#{meaning}\"\n"
		end
		entry.chomp	
	end
end


=begin
==================================================
		$ rake 
		Dictionary
		  is empty when created
		  can add whole entries with keyword and definition
		  add keywords (without definition)
		  can check whether a given keyword exists
		  doesn't cheat when checking whether a given keyword exists
		  doesn't include a prefix that wasn't added as a word in and of itself
		  doesn't find a word in empty dictionary
		  finds nothing if the prefix matches nothing
		  finds an entry
		  lists keywords alphabetically
		  can produce printable output like so: [keyword] "definition"

		Finished in 0.00447 seconds
		11 examples, 0 failures
==================================================
=end