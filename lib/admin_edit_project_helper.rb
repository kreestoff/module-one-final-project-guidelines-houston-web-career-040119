def admin_edit_project_helper(prompt, project)
  sel_name = -1
  sel_start = -2
  sel_end = -3
  sel_tasks = -4
  sel_return = -5

  puts "\e[H\e[2J"
  selection = prompt.select("Choose attribute you wish to edit:") do |menu|
    menu.choice "Edit Project Name: #{project.name}", sel_name
    menu.choice "Edit Start Date YYYY-MM-DD: #{project.start_date}", sel_start
    menu.choice "Edit End Date YYYY-MM-DD: #{project.end_date}", sel_end
    menu.choice "Create or Edit Tasks", sel_tasks
    menu.choice "Return", sel_return
  end





end
