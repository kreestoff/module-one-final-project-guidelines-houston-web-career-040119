def empl_show_project(prompt,employee,project)
  puts "\e[H\e[2J"
  pager = TTY::Pager.new

  page_str = ""

  cd_reset = "\e[0m"

  page_str += "\n" + cd_reset + "Completed tasks show in gray. Overdue tasks show in red.\n\n"

  page_str += empl_show_project_helper_proj(prompt,employee,project)
  page_str += empl_show_project_helper_proj_empl(prompt,employee,project)
  page_str += empl_show_project_helper_spec_empl(prompt,employee,project)
  
  pager.page(page_str)
end
