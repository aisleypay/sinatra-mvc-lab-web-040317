class PigLatinizer
  attr_accessor :words

  def is_vowel?(letter)
    vowels = %w(a e i o u)
    vowels.include?(letter.downcase)
  end

  def piglatinize(word)
    word.split("").each_with_index do |letter, idx|

      if is_vowel?(letter) && idx == 0
        return word + "way"
      elsif is_vowel?(letter) && word.index(letter) != 0
        first_part = word.slice(0...idx)
        second_part = word.slice(idx..-1)
        return second_part + first_part + "ay"
      else
        next
      end

    end
  end

  def to_pig_latin(words)
    words.split(" ").map { |word| piglatinize(word) }.join(" ")
  end
end
