def construct_tasks_output_string(tasks,employee=nil,show_employee=false)
  cd_red = "\e[1;31m" 
  cd_reset = "\e[0m"
  cd_gray = "\e[38;5;244m"

  page_str =  cd_reset + "Due date  " + " " + "Description\n"
  page_str += cd_reset + "--------  " + " " + "-----------\n"

  tasks.each do |task|
    cd_task = cd_reset

    if task.completed
      cd_task = cd_gray
    elsif task.due_date
      yyyy,mm,dd = task.due_date.split(" ")[0].split("-").map { |x| x.to_i }
      if Date.new(yyyy,mm,dd) < Date.today
        cd_task = cd_red
      end
    end

    lines = [""]
    if task.description
      lines = split_text(task.description,50)
    end

    if show_employee
      lines.unshift("#{employee.first_name} #{employee.last_name}")
    end

    page_str += cd_task + (task.due_date || "          ").slice(0,10) + " " + lines[0] + "\n"
    lines.slice(1,lines.length-1).each do |line|
      page_str += cd_task + "          " + " " + line + "\n"
    end
    page_str += cd_reset + "\n"
  end
  page_str
end
