def empl_show_project_helper_proj(prompt,employee,project)
  tasks = employee.tasks.where(project_id: project.id).uniq.sort_by do |task|
    due_date = nil
    begin
      if task.due_date
        due_date = Date.strptime(task.due_date,"%Y-%m-%d").to_s
      end
    rescue ArgumentError
    end

    if due_date
      yyyy,mm,dd = due_date.split(" ")[0].split("-").map { |x| x.to_i }
      Date.new(yyyy,mm,dd).to_time.to_i
    else
      0
    end
  end

  construct_tasks_output_string(tasks)
end
