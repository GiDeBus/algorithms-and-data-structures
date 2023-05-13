

def valid_anagram(first, second)
  return false if first.length != second.length
  
  look_up = {}
  
  first.each_char do |letter|
    look_up[letter] ? look_up[letter] += 1 : look_up[letter] = 1
  end
  
  second.each_char do |letter|
    if !look_up[letter]
      return false
    else
      look_up[letter] -= 1
    end
  end
  
  return true
end
