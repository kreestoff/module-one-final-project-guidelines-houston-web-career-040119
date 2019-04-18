def admin_produce_report_helper_proj(prompt,project)
  tasks = project.tasks.uniq.sort_by do |task|
    due_date = nil
    begin
      if task.due_date
        due_date = Date.strptime(task.due_date,"%Y-%m-%d")
      end
    rescue ArgumentError
    end

    if due_date
      due_date.to_time.to_i
    else
      0
    end
  end

  construct_tasks_output_string(tasks,true)  
end
 