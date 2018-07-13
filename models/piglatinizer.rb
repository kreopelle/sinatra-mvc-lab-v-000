class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

    def beginning_sound
      text_array = @text.split(" ")
      text_array.collect do |word|
        first_letter = word[0]
        if first_letter.match(/[aeiou]/)
          word << "ay"
        else
          if word[1].match(/[aeiou]/)
            severed_word = word.slice(1,word.length)
            severed_word << first_letter
            severed_word << "ay"
          else

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
