def empl_show_project_helper_spec_empl(prompt,employee,project)
  page_str = "\nOther employees with your specialty\n"
  page_str +=   "-----------------------------------\n"
  Employee.all.select { |emp| emp.specialty_id == employee.specialty_id }.each do |other_employee|
    if other_employee != employee
      page_str += other_employee.first_name + " " + other_employee.last_name + "\n"
    end
  end
  page_str
end
