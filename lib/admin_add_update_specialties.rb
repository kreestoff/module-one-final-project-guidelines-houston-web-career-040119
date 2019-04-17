def admin_add_update_specialties(prompt)
  specialty_list = Specialty.all
  sel_new_specialty = -1
  sel_edit_specialty = -2
  sel_return  = -3

  #while true
    puts "\e[H\e[2J"
    selection = prompt.select("Choose Specialty to Edit, Add Specialty or Return.") do |menu|
      specialty_list.each do |specialty|
        menu.choice "ID: #{specialty.id} Name: #{specialty.name}", specialty.id
      end
      menu.choice "Add a New Specialty", sel_new_specialty
      menu.choice "Return", sel_return
    end

    case selection
    when sel_return
    when sel_new_specialty
      admin_new_specialty(prompt)
      #admin_main_menu(prompt)
    else
      admin_edit_specialty(prompt, Specialty.find(selection))
    end
#  end
end
