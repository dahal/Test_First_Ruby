class Book
	#Even better, instead of defining method we can use " attr_accessor", I remeber using this while working on rails's model.
	# Thanks to : http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby
	attr_accessor :title

	def title= book_title #to avoid confusion
		@title = book_title.capitalize! #capitalizes first letter of first word

		#after this is preety much same as what we did on simon_says.rb
		ignore_words = %w(a an in and the of for)
		words = book_title.split(" ")
		words.map! do |word|
			if ignore_words.include?(word)
				word
			else
				word.capitalize
			end
			
		end
		@title = words.join(" ")
	end

end

=begin
=======================================================================
$ rake
Book
  title
    should capitalize the first letter
    should capitalize every word
    should capitalize every word except...
      conjunctions
      prepositions
      articles
        the
        a
        an
    should always capitalize...
      I
      the first word

Finished in 0.00195 seconds	
=======================================================================
	
=end