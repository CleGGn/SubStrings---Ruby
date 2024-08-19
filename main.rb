class Test

  def substrings(plain_text, dictionary)
    return_hash = Hash.new(0)
    text_array = plain_text.downcase.split
    new_array = text_array.sort.map {|word| word.downcase.gsub(/[^a-zA-Z0-9\-]/,"")}
    # Diviser la chaîne en mots et compter les occurrences dans l'array

    new_array.each do |word|
      return_hash[word] = new_array.count(word) if dictionary.include?(word)
    end
    return_hash
  end 
end 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test = Test.new
puts test.substrings("Howdy partner, sit down! partner How's it it it going?", dictionary)
