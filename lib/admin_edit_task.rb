def admin_edit_task(prompt, task)
  employee_list = Employee.all
  sel_desc = -1
  sel_employee = -2
  sel_date = -3
  sel_complete = -4
  sel_delete = -5
  sel_return = -6
  sel_yes = -7
  sel_no = -8

  while true
    puts "\e[H\e[2J"

    employee_name = ""
    if task.employee
      employee_name = (task.employee.first_name || "") + " " + (task.employee.last_name || "")
    end

    selection = prompt.select("Choose attribute you wish to edit:") do |menu|
      menu.choice "Description: #{task.description}", sel_desc
      menu.choice "Employee assigned: #{employee_name}", sel_employee
      menu.choice "Due date: #{task.due_date}", sel_date
      menu.choice "Completed: #{task.completed}", sel_complete
      menu.choice "Delete task", sel_delete
      menu.choice "Return", sel_return
    end

    case selection
    when sel_return
      break
    when sel_desc
      puts "\e[H\e[2J"
      new_desc = prompt.ask("Please enter the new description.")
      task.update(description: new_desc)
      puts "The description has been changed to #{new_desc}"
      sleep(2)
    when sel_employee
      puts "\e[H\e[2J"
      new_employee = prompt.select("Please select employee you would like to assign to this task.") do |menu|
        employee_list.each do |employee|
          menu.choice "#{employee.first_name} #{employee.last_name}", employee
        end
      end
      task.update(employee_id: new_employee.id)
      puts "#{new_employee.first_name} #{new_employee.last_name} has been assigned to this task."
      sleep(2)
    when sel_date
      puts "\e[H\e[2J"
      new_date = prompt.ask("Please enter new due date YYYY-MM-MM.")
      task.update(due_date: new_date)
      puts "The due date has been changed to #{new_date}"
      sleep(2)
    when sel_complete
      puts "\e[H\e[2J"
      selection = prompt.select("Would you like to mark this task complete?") do |menu|
        menu.choice "Yes", sel_yes
        menu.choice "No", sel_no
      end
      case selection
      when sel_yes
        task.update(completed: 1)
        puts "You've marked this task as complete."
        sleep(2)
      end
    when sel_delete
      task.delete
      puts "You've deleted this task."
      sleep(2)
      break
    end
  end
end
