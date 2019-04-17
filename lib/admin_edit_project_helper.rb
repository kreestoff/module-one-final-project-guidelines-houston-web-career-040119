def admin_edit_project_helper(prompt, project)
  sel_name = -1
  sel_start = -2
  sel_end = -3
  sel_tasks = -4
  sel_return = -5

  puts "\e[H\e[2J"
  selection = prompt.select("Choose attribute of #{project.name} you wish to edit:") do |menu|
    menu.choice "Edit Project Name: #{project.name}", sel_name
    menu.choice "Edit Start Date: #{project.start_date}", sel_start
    menu.choice "Edit End Date: #{project.end_date}", sel_end
    menu.choice "Create or Edit Tasks", sel_tasks
    menu.choice "Return", sel_return
  end

  case selection
  when sel_return
  when sel_name
    puts "\e[H\e[2J"
    new_name = prompt.ask("Please enter a new project name.")
    if !Project.find_by(name: new_name)
      project.update(name: new_name)
      puts "Project name has been updated to #{new_name}."
      sleep(2)
    else puts "This Project name is already taken. Try another name."
      sleep(2)
    end
  when sel_start
    puts "\e[H\e[2J"
    new_start = prompt.ask("Please enter new start date YYYY-MM-DD.")
    project.update(start_date: new_start)
    puts "Start date is now #{new_start}."
    sleep(2)
  when sel_end
    puts "\e[H\e[2J"
    new_end = prompt.ask("Please enter new end date YYYY-MM-DD.")
    project.update(end_date: new_end)
    puts "End date is now #{new_end}."
    sleep(2)
  when sel_tasks
    admin_add_update_tasks(prompt, project)
  end
end
