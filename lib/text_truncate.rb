def text_truncate(text,len,expand=false)
  # text_truncate("abcdef",10)      # => "abcdef"
  # text_truncate("abcdef",4)       # => "a..."
  # text_truncate("abcdef",10,true) # => "abcdef    "
  if text.length > len
    text.slice(0,len-3) + "..."
  else
    if expand
      text + (" " * (len - text.length))
    else
      text
    end
  end
end
