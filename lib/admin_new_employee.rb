def admin_new_employee(prompt)
  #all_usernames = Employee.all.map {|e| e.username}

  puts "\e[H\e[2J"
  first_name = prompt.ask("Enter new employee's first name.")
  last_name = prompt.ask("Enter new employee's last name.")
  username = prompt.ask("Enter new employee's username.")
  password = prompt.mask("Enter new employee's password")
  specialty_id = prompt.ask("Enter new employee's specialty ID")
  if !Employee.find_by(username: username)
    Employee.create(first_name: first_name, last_name: last_name, username: username, password: password, specialty_id: specialty_id)
    puts "You've added #{first_name} #{last_name}."
    sleep(2)
  else puts "Username is already taken. Try another username."
    sleep(2)
  end
end
