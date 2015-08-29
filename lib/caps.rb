def caps(str)
  result = ""
  index = 0
  str.each_char {|c|
    index+=1 unless c == '.'
    result << (index % 3 == 0 ? c.capitalize : c.downcase)
  }
  return result
end
