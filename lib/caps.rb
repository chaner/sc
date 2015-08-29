def caps(str, every=3)
  result = ""
  index = 0
  str.each_char {|c|
    index+=1 unless c == '.'
    result << (index % every == 0 ? c.capitalize : c.downcase)
  }
  return result
end
