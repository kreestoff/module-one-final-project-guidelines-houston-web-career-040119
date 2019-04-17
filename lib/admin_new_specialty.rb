def admin_new_specialty(prompt)
  puts "\e[H\e[2J"
  new_specialty_name = prompt.ask("What is the name of the new specialty?")
  Specialty.create(name: new_specialty_name)
  puts "You've added the #{new_specialty_name} specialty."
  sleep(2)
end
