def admin_edit_employee_helper(prompt, employee)
  sel_fname = -1
  sel_lname = -2
  sel_username = -3
  sel_password = -4
  sel_specid = -5
  sel_return = -6

  while true
    puts "\e[H\e[2J"
    specialty_list = Specialty.all
    selection = prompt.select("Choose attribute you wish to edit:") do |menu|
      menu.choice "Edit First Name: #{employee.first_name}", sel_fname
      menu.choice "Edit Last Name: #{employee.last_name}", sel_lname
      menu.choice "Edit Username: #{employee.username}", sel_username
      menu.choice "Edit Password: #{employee.password}", sel_password
      menu.choice "Edit Specialty: #{employee.specialty.name}", sel_specid
      menu.choice "Return", sel_return
    end

    case selection
    when sel_return
      break
    when sel_fname
      puts "\e[H\e[2J"
      new_fname = prompt.ask("Please enter new first name.")
      employee.update(first_name: new_fname)
      puts "First name has been updated to #{new_fname}."
      sleep(2)
    when sel_lname
      puts "\e[H\e[2J"
      new_lname = prompt.ask("Please enter new last name.")
      employee.update(last_name: new_lname)
      puts "Last name has been updated to #{new_lname}."
      sleep(2)
    when sel_username
      puts "\e[H\e[2J"
      new_username = prompt.ask("Please enter new username.")
      if !Employee.find_by(username: new_username)
        employee.update(username: new_username)
        puts "Username has been updated to #{new_username}."
        sleep(2)
      else puts "Username is already taken. Try another username."
        sleep(2)
      end
    when sel_password
      puts "\e[H\e[2J"
      new_password = prompt.mask("Please enter new password.")
      employee.update(password: new_password)
      puts "Password has been updated."
      sleep(2)
    when sel_specid
      puts "\e[H\e[2J"
      new_specialty = prompt.select("Select employee's new specialty.") do |menu|
        specialty_list.each do |specialty|
          menu.choice "#{specialty.name}", specialty.id
        end
      end
      employee.update(specialty_id: new_specialty)
      puts "Specialty has been updated to #{employee.specialty.name}."
      sleep(2)
    end
  end
end
