def admin_add_update_employees(prompt)
  employee_list = Employee.all
  admin_new_employee = -1
  admin_edit_employee = -2
  sel_return = -3

  puts "\e[H\e[2J"
  selection = prompt.select("Choose Employee to Edit, Add employee or Return.") do |menu|
    employee_list.each do |employee|
      menu.choice employee
    end
    menu.choice "Add a New Employee", admin_new_specialty
    menu.choice "Return", sel_return
  end

  case selection
  when sel_return
  when admin_new_employee
    admin_new_employee(prompt)
  else
    admin_edit_employee(prompt, Employee.find(selection))
  end

end
