def admin_add_update_employees(prompt)
  employee_list = Employee.all
  sel_new_employee = -1
  sel_edit_employee = -2
  sel_return = -3

  puts "\e[H\e[2J"
  selection = prompt.select("Choose Employee to Edit, Add employee or Return.") do |menu|
    employee_list.each do |employee|
      menu.choice "ID: #{employee.id} Name: #{employee.first_name} #{employee.last_name} Specialty ID: #{employee.specialty_id}", employee.id 
    end
    menu.choice "Add a New Employee", sel_new_employee
    menu.choice "Return", sel_return
  end

  case selection
  when sel_return
  when sel_new_employee
    admin_new_employee(prompt)
  else
    admin_edit_employee(prompt, Employee.find(selection))
  end

end
