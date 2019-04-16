def empl_show_project_helper_proj_empl(prompt,employee,project)
  page_str = "\nOther employees on this project\n"
  page_str +=   "-------------------------\n"
  project.employees.each do |other_employee|
    if other_employee != employee
      page_str += other_employee.first_name + " " + other_employee.last_name + "\n"
    end
  end
  page_str
end
