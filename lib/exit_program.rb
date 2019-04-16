def exit_program(prompt=nil,err_msg=nil)
  puts "\e[H\e[2J"
  exit_code = 0

  if err_msg != nil
    puts err_msg
    exit_code = 1
  end

  puts "Goodbye\n\n"
  exit(exit_code)
end

