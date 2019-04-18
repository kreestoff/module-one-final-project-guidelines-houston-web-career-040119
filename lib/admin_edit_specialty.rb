def admin_edit_specialty(prompt, specialty)
  sel_edit = -1
  sel_delete = -2
  sel_return = -3


  puts "\e[H\e[2J"
  selection = prompt.select("Would you like to Edit or Delete #{specialty.name}?") do |menu|
    menu.choice "Edit", sel_edit
    menu.choice "Delete", sel_delete
    menu.choice "Return", sel_return
  end

  case selection
  when sel_return
  when sel_edit
    puts "\e[H\e[2J"
    updated_name = prompt.ask("What would you like to change #{specialty.name} to?")
    specialty.update(name: updated_name)
    puts "You've updated this specialty's name to #{updated_name}."
    sleep(2)
  when sel_delete
    if !prompt.no?("Are you sure you want to delete the specialty #{specialty.name}?")
      specialty.delete

      Employee.where(specialty_id: specialty.id).each do |employee|
        employee.update(specialty_id:nil)
      end
      puts "You've deleted the #{specialty.name} specialty."
      sleep(2)
    end
  end


end
