require_relative '../config/environment'

prompt = TTY::Prompt.new

test1 = ActiveRecord::Base.connection.data_source_exists? 'employees'
test2 = ActiveRecord::Base.connection.data_source_exists? 'tasks'
test3 = ActiveRecord::Base.connection.data_source_exists? 'projects'
test4 = ActiveRecord::Base.connection.data_source_exists? 'specialties'

if !(test1 && test2 && test3 && test4)
  exit_program(prompt,"Data source(s) not found. Did you run rake db:migrate?")
end

choose_acct_type(prompt)

