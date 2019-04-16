def admin_produce_report(prompt)
  puts "\e[H\e[2J"
  pager = TTY::Pager.new

  page_str = ""

  cd_reset = "\e[0m"

  page_str += "\n" + cd_reset + "Date: " + Date.today.to_s
  page_str += "\n" + cd_reset + "Completed tasks show in gray. Overdue tasks show in red.\n\n"


  Project.all.each do |project|
    page_str += "\n" + cd_reset + "Project: #{project.name}\n\n"
    page_str += admin_produce_report_helper_proj(prompt,project)
    page_str += cd_reset + "**********************************************************************\n"
  end
  
  pager.page(page_str)
end
