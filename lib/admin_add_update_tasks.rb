def admin_add_update_tasks(prompt, project)
  sel_new_task = -1
  sel_return = -2

  while true
    puts "\e[H\e[2J"
    puts "Project: #{project.name}"
    task_list = Task.where(project_id:project.id)
    selection = prompt.select("Select Task to Edit, Add task or Return.",per_page:15) do |menu|
      task_list.each do |task|
        disp_desc = text_truncate(task.description || "", 39, true)
        full_name = ""
        if task.employee
          full_name = (task.employee.first_name || "") + " " + (task.employee.last_name || "")
        end
        disp_name = text_truncate(full_name, 14, true)
        menu.choice "Description: #{disp_desc} Employee: #{disp_name}", task.id
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
