class PigLatin

  def self.translate(word)
    if word [0]=="a" or word [0]=="e" or word [0]== "i" or word [0]== "o" or word [0]== "u" or word [0]== "y"
      return word + "yay"
    elsif word [1]=="a" or word [1]=="e" or word [1]== "i" or word [1]== "o" or word [1]== "u"
      return word[1..-1] + word[0] + "ay"
    else 
      return word[2..-1] + word[0..1] + "ay"
    end
  end
end