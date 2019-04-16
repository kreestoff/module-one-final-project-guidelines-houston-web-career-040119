def empl_show_project(prompt,employee,project)
  tasks = employee.tasks.select { |task| task.project_id == project.id }

  puts "\e[H\e[2J"
  pager = TTY::Pager.new

  cd_red = "\e[1;31m" 
  cd_reset = "\e[0m"
  cd_gray = "\e[38;5;244m"

  page_str =  "Due date  " + " " + "Description\n"
  page_str += "--------  " + " " + "-----------\n"
  tasks.each do |task|
    if task.completed
      page_str += cd_gray
    elsif task.due_date
      yyyy,mm,dd = task.due_date.split(" ")[0].split("-").map { |x| x.to_i }
      if Date.new(yyyy,mm,dd) < Date.today
        page_str += cd_red
      end
    end
    page_str += (task.due_date || "          ").slice(0,10) + " " + task.description.slice(0,50) + "..." + cd_reset + "\n"
  end

  page_str += "\nEmployees on this project\n"
  page_str +=   "-------------------------\n"

  
  pager.page(page_str)
end
