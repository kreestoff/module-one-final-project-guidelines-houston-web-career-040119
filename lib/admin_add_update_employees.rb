def admin_add_update_employees(prompt)
  sel_new_employee = -1
  sel_edit_employee = -2
  sel_return = -3

  while true
    puts "\e[H\e[2J"
    employee_list = Employee.all
    selection = prompt.select("Choose Employee to Edit, Add employee or Return.") do |menu|
      employee_list.each do |employee|
        menu.choice "ID: #{employee.id} Name: #{employee.first_name} #{employee.last_name} Specialty ID: #{employee.specialty_id}", employee.id 
      end
      menu.choice "Add a New Employee", sel_new_employee
      menu.choice "Return", sel_return
    end

    case selection
    when sel_return
      break
    when sel_new_employee
      admin_new_employee(prompt)
    else
      admin_edit_employee(prompt, Employee.find(selection))
    end
  end

end
