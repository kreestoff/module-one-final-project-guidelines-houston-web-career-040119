def admin_add_update_tasks(prompt, project)
  sel_new_task = -1
  sel_return = -2

  while true
    puts "\e[H\e[2J"
    puts "Project: #{project.name}"
    task_list = Task.where(project_id:project.id)
    selection = prompt.select("Select Task to Edit, Add task or Return.") do |menu|
      task_list.each do |task|
        menu.choice "ID: #{task.id} Description: #{task.description} Employee ID: #{task.employee_id} Completed: #{task.completed} Due Date: #{task.due_date}", task.id
      end
      menu.choice "Create new task for #{project.name} project.", sel_new_task
      menu.choice "Return", sel_return
    end

    case selection
    when sel_return
      break
    when sel_new_task
      admin_new_task(prompt, project)
    else
      admin_edit_task(prompt, Task.find(selection))
  end
end


end
