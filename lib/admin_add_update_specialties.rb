def admin_add_update_specialties(prompt)
  specialty_list = Specialty.all
  admin_new_specialty = 1
  admin_edit_specialty = 2

  while true
    puts "\e[H\e[2J"
    selection = prompt.select("Choose Specialty to Edit, Add Specialty or Return") do |menu|
      specialty_list.each do |specialty|
        menu.choice specialty.name.capitalize, specialty.id
      end
      menu.choice "Add a New Specialty", admin_new_specialty
      menu.choice "Return"
    end

    case selection
    when admin_new_specialty
      admin_new_specialty(prompt)
    else
      admin_edit_specialty(prompt, Specialty.find(selection))
    end
  end
end
