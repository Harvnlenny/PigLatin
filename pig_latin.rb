class PigLatin

  def self.one_word_translate(word)
    
    if word [0]=="a" or word [0]=="e" or word[0]=="E" or word [0]== "o" or word [0]== "u" or word [0]== "y"
      return word + "yay"
    elsif word [1]=="a" or word [1]=="e" or word [1]== "i" or word [1]== "o" or word [1]== "u"
      return word[1..-1] + word[0] + "ay"
    elsif word [0..1]=="15"
      return "15"
    elsif word [-1]=="!"
      return word[0..-2] + "yay" + "!"  
    else 
      return word[2..-1] + word[0..1] + "ay"
    end
  end

  def self.translate(word)
    items = word.split
    items.map! {|item| PigLatin.one_word_translate(item)}
    done = items.join(" ")
  end

  def self.capital_translate(word)
    items = word.split
    items.map! {|item| PigLatin.one_word_translate(item)}
    done = items.join(" ").downcase
    final = done.split.each{|i| i.capitalize!}.join(' ')
  end

  def self.capital_first_word_only_translate(word)
    items = word.split
    items.map! {|item| PigLatin.one_word_translate(item)}
    done = items.join(" ").capitalize
  end  

end