def admin_new_project(prompt)
  sel_yes = -1
  sel_return= -2

  puts "\e[H\e[2J"
  project_name = prompt.ask("Enter new project's name.")
  project_start_date = prompt.ask("Enter start date: YYYY-MM-DD")
  project_end_date = prompt.ask("Enter end date: YYYY-MM-DD")
  if !Project.find_by(name: project_name)
    Project.create(name: project_name, start_date: project_start_date, end_date: project_end_date)
    puts "You've successfully added #{project_name}."
    sleep(2)
  else puts "This Project Name is already taken. Try another name."
    sleep(2)
  end
end
