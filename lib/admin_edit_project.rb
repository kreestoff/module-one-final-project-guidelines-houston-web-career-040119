def admin_edit_project(prompt, project)
  sel_edit = -1
  sel_delete = -2
  sel_return = -3

  puts "\e[H\e[2J"
  selection = prompt.select("Would you like to Edit or Delete #{project.name}?") do |menu|
    menu.choice "Edit", sel_edit
    menu.choice "Delete", sel_delete
    menu.choice "Return", sel_return
  end

  case selection
  when sel_return
  when sel_edit
    admin_edit_project_helper(prompt, project)
  when sel_delete
    Task.where(project_id: project.id).each do |task|
      task.delete
    end
    project.delete
    puts "You've deleted #{project.name} and all associated tasks."
    sleep(2)
  end
end
