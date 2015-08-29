def caps(str, offset=0, every=3)
  return nil if str.nil?
  result = ""
  index = offset
  str.each_char {|c|
    index+=1 unless c == '.'
    result << (index % every == 0 ? c.capitalize : c.downcase)
  }
  return result
end
