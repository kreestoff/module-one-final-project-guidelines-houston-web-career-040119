def admin_add_update_employees(prompt)
  sel_new_employee = -1
  sel_edit_employee = -2
  sel_return = -3

  while true
    puts "\e[H\e[2J"
    employee_list = Employee.all
    selection = prompt.select("Choose Employee to Edit, Add employee or Return.",per_page:15) do |menu|
      employee_list.each do |employee|
        full_name = (employee.first_name || "") + " " + (employee.last_name || "")
        disp_full_name = text_truncate(full_name,40,true)
        disp_specialty = ""
        if employee.specialty
          disp_specialty = text_truncate(employee.specialty.name || "",15,true)
        end
        menu.choice "Name: #{disp_full_name} Specialty ID: #{disp_specialty}", employee.id 
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
