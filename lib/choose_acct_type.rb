def choose_acct_type(prompt)
  sel_admin, sel_empl, sel_exit = 1,2,3

  puts "\e[H\e[2J"
  selection = prompt.select("Choose your account type or Exit:") do |menu|
    menu.choice 'Administrator', sel_admin
    menu.choice 'Employee', sel_empl
    menu.choice 'Exit', sel_exit
  end

  case selection
  when sel_admin
    admin_login(prompt)  # TODO: implement
  when sel_empl
    empl_login(prompt) # TODO: implement
  when sel_exit
    exit_program(prompt) # TODO: implement
  end
end
