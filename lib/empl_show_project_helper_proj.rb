def empl_show_project_helper_proj(prompt,employee,project)
  tasks = employee.tasks.select { |task| task.project_id == project.id }.uniq.sort_by do |task|
    if task.due_date
      yyyy,mm,dd = task.due_date.split(" ")[0].split("-").map { |x| x.to_i }
      Date.new(yyyy,mm,dd).to_time.to_i
    else
      0
    end
  end

  construct_tasks_output_string(tasks)
end
