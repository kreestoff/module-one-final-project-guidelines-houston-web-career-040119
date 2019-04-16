def empl_show_project_helper_proj_empl(prompt,employee,project)
  cd_reset = "\e[0m"
  page_str = cd_reset + "Other employees on this project\n"
  page_str +=   cd_reset + "-------------------------\n"
  project.employees.each do |other_employee|
    if other_employee != employee
      page_str += cd_reset + other_employee.first_name + " " + other_employee.last_name + "\n"
    end
  end
  page_str
end
