def admin_main_menu(prompt)
  sel_special, sel_empl, sel_proj, sel_report, sel_exit = 1,2,3,4,5

  puts "\e[H\e[2J"
  selection = prompt.select("Choose option or Exit:") do |menu|
    menu.choice 'Add/Update Specialties', sel_special
    menu.choice 'Add/Update Employees', sel_empl
    menu.choice 'Add/Update Projects', sel_proj
    menu.choice 'Produce Report', sel_report
    menu.choice 'Exit', sel_exit
  end

  case selection
  when sel_special
    admin_add_update_specialties # TODO: Implement
  when sel_empl
    admin_add_update_employees # TODO: Implement
  when sel_proj
    admin_add_update_projects # TODO: Implement
  when sel_report
    admin_produce_report # TODO: Implement
  when sel_exit
    exit_program(prompt)
  end
end
