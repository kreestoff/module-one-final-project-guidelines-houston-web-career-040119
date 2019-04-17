# Engineers
emp1 = Employee.create(first_name: "Tom", last_name: "Jones", username: "TommyJ", password: "password", specialty_id: 1)
emp2 = Employee.create(first_name: "Susan", last_name: "Jones", username: "JerryJ", password: "password", specialty_id: 1)
emp3 = Employee.create(first_name: "Chuck", last_name: "Baker", username: "Chucky", password: "password", specialty_id: 1)

# Architects
emp4 = Employee.create(first_name: "Sally", last_name: "Smith", username: "Joey", password: "password", specialty_id: 2)
emp5 = Employee.create(first_name: "Trent", last_name: "Thomas", username: "Trent", password: "password", specialty_id: 2)
emp6 = Employee.create(first_name: "Elizabeth", last_name: "Vander", username: "Jay", password: "password", specialty_id: 2)

# Technicians
emp7 = Employee.create(first_name: "Nathan", last_name: "Ryan", username: "NathanR", password: "password", specialty_id: 3)
emp8 = Employee.create(first_name: "Minh", last_name: "Ryan", username: "CoolMinh", password: "password", specialty_id: 3)
emp9 = Employee.create(first_name: "Penelope", last_name: "Smith", username: "PenelopeS", password: "password", specialty_id: 3)

# Painters
emp10 = Employee.create(first_name: "Jonathan", last_name: "Taylor", username: "JonathanT", password: "password", specialty_id: 4)
emp11 = Employee.create(first_name: "Samuel", last_name: "Brown", username: "SamuelB", password: "password", specialty_id: 4)
emp12 = Employee.create(first_name: "Rachel", last_name: "Banes", username: "RachelB", password: "password", specialty_id: 4)

# Builders
emp13 = Employee.create(first_name: "Rachel", last_name: "Miller", username: "RachelM", password: "password", specialty_id: 5)
emp14 = Employee.create(first_name: "Jackie", last_name: "Taylor", username: "JackieT", password: "password", specialty_id: 5)
emp15 = Employee.create(first_name: "Robert", last_name: "Wilson", username: "BobW", password: "password", specialty_id: 5)

# Projects
project1 = Project.create(name: "Bay Bridge")
project2 = Project.create(name: "Golden Gate Bridge")
project3 = Project.create(name: "San Mateo Bridge")
project4 = Project.create(name: "Acme Building")

# Specialties
spec1 = Specialty.create(name: "Engineer")
spec2 = Specialty.create(name: "Architect")
spec3 = Specialty.create(name: "Technician")
spec4 = Specialty.create(name: "Painter")
spec5 = Specialty.create(name: "Builder")

# Tasks for Bay Bridge
task1 = Task.create(project_id: 1, description: "Analyze the structure to detect weaknesses, stability, wind resistance, tolerance of traffic load.", employee_id: 1, due_date: "2019-04-01", completed: 0)
task2 = Task.create(project_id: 1, description: "Paint the bridge.", employee_id: 12, due_date: "2019-04-01", completed: 1)
task3 = Task.create(project_id: 1, description: "Alter bridge according to engineer's recommendations", employee_id: 15, due_date: "2019-05-01", completed: 0)

# Tasks for Golden Gate Bridge
task4 = Task.create(project_id: 2, description: "Find optimal nugget ratio.", employee_id: 2, due_date: "2019-04-01", completed: 1)
task5 = Task.create(project_id: 2, description: "Find optimal joist suspension number.", employee_id: 2, due_date: "2019-05-01", completed: 1)
task6 = Task.create(project_id: 2, description: "Build out with nuggets.", employee_id: 15, due_date: "2019-04-25", completed: 0)
task7 = Task.create(project_id: 2, description: "Incorporate widgets", employee_id: 15, due_date: "2019-04-01", completed: 0)

# Tasks for San Mateo Bridge
task8 = Task.create(project_id: 3, description: "Find best location for placement of widgets, nuggets, oinklinks and dunder mifflin parts.", employee_id: 3, due_date: "2019-04-01", completed: 0)
task9 = Task.create(project_id: 3, description: "Obtain orders for relevant widgets via Acquisitions.", employee_id: 2, due_date: "2019-04-01", completed: 1)
task10 = Task.create(project_id: 3, description: "Paint the widgets.", employee_id: 12, due_date: "2019-04-15", completed: 1)
task11 = Task.create(project_id: 3, description: "Incorporate widgets", employee_id: 14, due_date: "2019-04-28", completed: 0)

# Tasks for Acme Building
task12 = Task.create(project_id: 4, description: "Design the building in an aesthetically pleasing manner which will drive profits and place building in the annals of architectural history.", employee_id: 4, due_date: "2019-04-25", completed: 0)
task13 = Task.create(project_id: 4, description: "Study architectural drawings and construct corresponding blueprint", employee_id: 1, due_date: "2019-05-10", completed: 0)
task14 = Task.create(project_id: 4, description: "Create a wiring plan", employee_id: 8, due_date: "2019-06-15", completed: 0)
task15 = Task.create(project_id: 4, description: "Build the first floor.", employee_id: 14, due_date: "2019-06-15", completed: 0)
task16 = Task.create(project_id: 4, description: "Build the remaining floors.", employee_id: 14, due_date: "2019-06-16", completed: 0)

