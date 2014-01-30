def translate(string)
	#we should translate each word on the string, so lets split it
	words = string.split
	words.map! do |word|

		if vowel?(word[0])
			word + "ay"

		elsif vowel?(word[1])
			if word[0..1].include?"qu"
				word.delete(word[0..1]) + word[0..1] + "ay"
			else
				word.delete(word[0]) + word[0] + "ay"
			end

		elsif vowel?(word[2])
			if word[1..2].include?"qu"
				word.delete(word[0..2]) + word[0..2] + "ay"
			else
				word.delete(word[0..1]) + word[0..1] + "ay"
			end	

		else vowel?(word[3])
			word.delete(word[0..2]) + word[0..2] + "ay"
			
		end
		
	end
	words.join(" ")	
end

#First we will define what vowel is?
def vowel?(letter)
	"aeiou".include?(letter)
end

=begin
============================================================
$ rake

translate
  translates a word beginning with a vowel
  translates a word beginning with a consonant
  translates a word beginning with two consonants
  translates two words
  translates a word beginning with three consonants
  counts 'sch' as a single phoneme
  counts 'qu' as a single phoneme
  counts 'qu' as a consonant even when it's preceded by a consonant
  translates many words

Finished in 0.00219 seconds
9 examples, 0 failures
============================================================
=end

