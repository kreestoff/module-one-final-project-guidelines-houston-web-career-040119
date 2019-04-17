def admin_new_employee(prompt)

  puts "\e[H\e[2J"
  first_name = prompt.ask("Enter new employee's first name.")
  last_name = prompt.ask("Enter new employee's last name.")
  username = prompt.ask("Enter new employee's username.")
  password = prompt.mask("Enter new employee's password")
  specialty_id = prompt.ask("Enter new employee's specialty ID")
  Employee.create(first_name: first_name, last_name: last_name, username: username, password: password, specialty_id: specialty_id)
  puts "You've added #{first_name} #{last_name}."
  sleep(2)
end
