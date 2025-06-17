def substrings(str, dictionary)
  result = Hash.new(0)
  str.downcase!
  
  dictionary.each do |word|
    count = str.scan(word).count
    if count > 0
      result[word] += count
    end
  end
  result
end


puts substrings("below", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
puts substrings("Howdy partner, sit down! How's it going?", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
