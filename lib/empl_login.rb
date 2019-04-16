def empl_login(prompt)
  puts "\e[H\e[2J"
  employee = nil
  3.times do
    username = prompt.ask('Enter username: ')
    passwd = prompt.mask('Enter password: ')
    employee = Employee.all.find_by(username:username, password:passwd)
    if employee != nil
      break
    end
  end

  if employee == nil
    exit_program(prompt)
  end

  empl_projects(prompt,employee) # TODO: implement
end
