class PigLatinizer

    def piglatinize(words)
      words_array = words.split(" ")
      words_array.collect do |word|
        first_letter = word[0]
        if first_letter.match(/[aeiou]/)
          word << "way"
        else
          if word[1].match(/[aeiou]/)
            word = word.slice(1,word.length) + first_letter + "ay"
          else
            word = word.slice(2,word.length) + word[0..1] + "ay"
          end
        end
      end
    end

end

#   single consonant --> all letters before inital vowel placed at the end of the word, then ay is added
#   pig = 'igpay'
#   happy = 'appyhay'

#   more than one consonant at beginning: both consonants added to end, with ay
#   "smile" = "ilesmay"
#   "string" = "ingstray"

#   begins with vowel -- add "ay"

# "eat" = "eatway" or "eatay"
# "omelet" = "omeletway" or "omeletay"
