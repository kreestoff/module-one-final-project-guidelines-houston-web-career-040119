def empl_show_project_helper_spec_empl(prompt,employee,project)
  cd_reset = "\e[0m"
  page_str = "\n" + cd_reset + "Other employees with your specialty\n"
  page_str +=  cd_reset + "-----------------------------------\n"\
  Employee.where(specialty_id: employee.specialty_id).each do |other_employee|
    if other_employee != employee
      page_str += cd_reset + other_employee.first_name + " " + other_employee.last_name + "\n"
    end
  end
  page_str
end
