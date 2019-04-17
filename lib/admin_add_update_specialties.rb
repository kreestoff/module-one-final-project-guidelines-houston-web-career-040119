def admin_add_update_specialties(prompt)
  sel_admin_new_specialty = -1
  sel_return = -2

  while true
    puts "\e[H\e[2J"
    specialty_list = Specialty.all
    selection = prompt.select("Choose Specialty to Edit, Add Specialty or Return",per_page:15) do |menu|
      specialty_list.each do |specialty|
        menu.choice (specialty.name || "").capitalize, specialty.id
      end
      menu.choice "Add a New Specialty", sel_admin_new_specialty
      menu.choice "Return", sel_return
    end

    case selection
    when sel_return
      break
    when sel_admin_new_specialty
      admin_new_specialty(prompt)
    else
      admin_edit_specialty(prompt, Specialty.find(selection))
    end
  end
end
