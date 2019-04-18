def empl_projects(prompt,employee)
  sel_exit = -1

  while true
    puts "\e[H\e[2J"
    project_list = employee.projects.uniq
    selection = prompt.select("Choose project or exit",per_page:15) do |menu|
      project_list.each do |proj|
        menu.choice proj.name, proj.id
      end
      menu.choice "Exit", sel_exit
    end

    case selection
    when sel_exit
      exit_program(prompt)
    else
      empl_show_project(prompt,employee,Project.find(selection))
    end
  end
end
