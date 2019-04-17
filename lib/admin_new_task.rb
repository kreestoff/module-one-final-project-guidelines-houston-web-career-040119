def admin_new_task(prompt, project)
  employee_list = Employee.all

  puts "\e[H\e[2J"
  puts "Project: #{project.name}"
  desc = prompt.ask("Please enter a description of the task.")
  due = prompt.ask("Please enter the due date of the task YYYY-MM-DD.")
  employee = prompt.select("Please select the employee to assign to this task.") do |menu|
    employee_list.each do |employee|
      menu.choice "#{employee.first_name} #{employee.last_name} Specialty: #{employee.specialty_id}", employee.id
    end
  end

  Task.create(project_id: project.id, description: desc, employee_id: employee, completed: 0, due_date: due)
  puts "You've added a new task to the #{project.name} project."
  sleep(2)
end
