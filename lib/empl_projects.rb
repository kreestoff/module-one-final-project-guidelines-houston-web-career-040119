def empl_projects(prompt,employee)
  project_list = {1=>"Project 1",2=>"Project 2",3=>"Project 3"} # TODO: implement ActiveRecord lookup keyed by id (PK)
  sel_exit = -1

  puts "\e[H\e[2J"
  selection = prompt.select("Choose project or exit") do |menu|
    project_list.each do |id,proj|
      menu.choice proj, id
    end
    menu.choice "Exit", sel_exit
  end

  case selection
  when sel_exit
    exit_program(prompt)
  else
    empl_show_project(prompt,employee,selection) # TODO: implement
  end
end
