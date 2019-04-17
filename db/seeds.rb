Employee.destroy_all
Project.destroy_all
Task.destroy_all
Specialty.destroy_all

emp1 = Employee.create(first_name: "Tom", last_name: "Jones", username: "TommyJ", password: "password", specialty_id: 1)
emp2 = Employee.create(first_name: "Jerry", last_name: "Jones", username: "JerryJ", password: "password", specialty_id: 2)
emp3 = Employee.create(first_name: "Chuck", last_name: "Baker", username: "Chucky", password: "password", specialty_id: 3)
emp4 = Employee.create(first_name: "Joseph", last_name: "Smith", username: "Joey", password: "password", specialty_id: 1)
emp5 = Employee.create(first_name: "Trent", last_name: "Thomas", username: "Trent", password: "password", specialty_id: 2)
emp6 = Employee.create(first_name: "Jason", last_name: "Vander", username: "Jay", password: "password", specialty_id: 3)


project1 = Project.create(name: "Build")
project2 = Project.create(name: "Maintain")
project3 = Project.create(name: "Take Down")

task1 = Task.create(project_id: 1, description: "plan", employee_id: 1)
task2 = Task.create(project_id: 1, description: "gather", employee_id: 2)
task3 = Task.create(project_id: 1, description: "put together", employee_id: 3)
task4 = Task.create(project_id: 2, description: "inspect", employee_id: 1)
task5 = Task.create(project_id: 2, description: "implement", employee_id: 2)
task6 = Task.create(project_id: 3, description: "destroy", employee_id: 3)

spec1 = Specialty.create(name: "planner")
spec2 = Specialty.create(name: "gatherer")
spec3 = Specialty.create(name: "builder")
