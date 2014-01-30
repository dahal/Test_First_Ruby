#When string is passed, it should return the same string
def echo(str)
	str
end

def shout(str)
	#When string is passed, it should return the same capitalized strings.
	str.upcase
end

def repeat(str, n=2)
	#Here we will repeat 2 times and collect & join them by space.
	n.times.collect {str}.join(' ')
	#puts repeat("hello")  => will give us "hello hello"
	#test requires me to pass an integer and repeat, but it failed the test for 2, so we assign default value to be 2
end

def start_of_word(str, n=0)
	str[0..n-1] #first letter should be on 0 place,so when ("hello", 1) is passed it should trigger 0's place.
end

def first_word(str)
	#first split the string
	array = str.split(' ')
	#return the first word, which is in place of 0
	return array[0]
end

def titleize(str)
	#capitalize the first letter of the string
	#str.titleize #=> this is only going to capitalize one word
	#str.split.map(&:capitalize).join(' ') => this is good for titlecase, not in the case of little words.
	little_words = ['over', 'and', 'the']
	str.capitalize! #Capitalizes first letter even if its one of those little_words
	str.split.map { |word|
		if little_words.include?(word)
			word
			
		else
			word.capitalize
		end
	}.join(" ")
end


=begin
============================================================
$ rake

Simon says
  echo
    should echo hello
    should echo bye
  shout
    should shout hello
    should shout multiple words
  repeat
    should repeat
    should repeat a number of times
  start_of_word
    returns the first letter
    returns the first two letters
    returns the first several letters
  first_word
    tells us the first word of 'Hello World' is 'Hello'
    tells us the first word of 'oh dear' is 'oh'
  titleize
    capitalizes a word
    capitalizes every word (aka title case)
    doesn't capitalize 'little words' in a title
    does capitalize 'little words' at the start of a title

Finished in 0.00295 seconds
15 examples, 0 failures

============================================================
=end