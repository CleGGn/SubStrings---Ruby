class Test

  def substrings(plain_text, dictionary)
    text_array = plain_text.downcase.split
    new_array = text_array.map {|word| word.downcase.gsub(/[^a-zA-Z0-9\-]/,"")}
    puts dictionary.intersection(new_array) 
    # new_array = text_array.intersection(dictionary)
    # puts new_array
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test = Test.new
test.substrings("Howdy partner, sit down! How's it going?", dictionary)
