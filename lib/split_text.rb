def split_text(text,line_length)
  words = text.split(" ")
  lines = [""]
  
  words.each do |word|
    if lines[-1].length + word.length + 1 > line_length
      lines << ""
    end
    lines[-1] << word + " "
  end
  lines
end
