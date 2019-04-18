def admin_edit_employee(prompt, employee)
  sel_edit = -1
  sel_delete = -2
  sel_return = -3

  puts "\e[H\e[2J"
  selection = prompt.select("Would you like to Edit or Delete record for #{employee.first_name} #{employee.last_name}?") do |menu|
    menu.choice "Edit", sel_edit
    menu.choice "Delete", sel_delete
    menu.choice "Return", sel_return
  end

  case selection
  when sel_return
    break
  when sel_edit
    admin_edit_employee_helper(prompt, employee)
  when sel_delete
    if !prompt.no?("Are you sure you want to delete record for #{employee.first_name} #{employee.last_name}?")
      employee.delete
      Task.where(employee_id: employee.id).each do |task|
        task.update(employee_id:nil)
      end
      puts "You've deleted #{employee.first_name} #{employee.last_name}."
      sleep(2)
    end
  end

end
