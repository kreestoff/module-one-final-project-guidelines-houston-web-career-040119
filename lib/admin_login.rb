def admin_login(prompt)
  admin_passwd = "password"

  puts "\e[H\e[2J"
  passwd = prompt.mask('Enter administrator password (hint: password)')
  case passwd
  when admin_passwd
    admin_main_menu(prompt)
  else
    exit_program(prompt)
  end
end
