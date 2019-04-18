# Module One Final Project: Project Manager

Ryan Denlinger and Christopher Lee McIntosh

## Program Description

The Project Manager application is a Ruby CLI program which
tracks progress on projects in terms of employees and tasks.
Each project has many employees assigned to it, and each employee
can be assigned to many projects. The assignment occurs via tasks;
each task is associated with a single employee and a single project.
Employees can log-in using their assigned credentials to view the
tasks they have been assigned, coded by project,
completion status and due date. The full set of CRUD (Create, Read,
Update, Delete) operations are implemented via the Administrator
account; the Administrator password is, conveniently,
```
password
```


## Before First Run

In order to use this program, before the first run the user must
execute the following commands, in order, from the top level program
directory:

```bash
bundle install
rake db:migrate
```

Optionally, the following command may then be run to seed the database
with some fun dummy data:

```bash
rake db:seed
```

Then the program may be executed by running the following command
from the top level program directory:

```bash
ruby bin/run.rb
```

## Using Employee mode

From the opening screen, select ```Employee```
and enter the username followed by the corresponding password
(if the database has been seeded as in the previous paragraph, then
there will be a user with username ```TommyJ``` and password ```password```).
The next screen will display the projects
to which this user has been assigned (via one or more tasks).
Select a project to view the user's assigned tasks for that project.
Completed tasks show up in gray, overdue tasks show up in
red, and remaining tasks (i.e. incomplete tasks which are not overdue)
are rendered in black. Tasks are ordered by due date; tasks without an
assigned due date show up top.

Below the list of tasks, the user is presented with a list of other 
employees assigned
to the same project, followed by a list of users (across all projects)
whose specialty coincides with the user's.

Press ```q``` to exit the project view, then select ```Exit``` to quit
the program.

## Using Administrator mode

From the opening screen, select ```Administrator``` and
enter the password ```password``` to open the administration menu.
(If the password is entered incorrectly, the program will immediately
abort.) We will demonstrate the CRUD (Create/Read/Update/Delete) 
operations in turn.

### Create

To create a specialty, select ```Add/Update Specialties``` from the
administrator main menu. Select ```Add a New Specialty``` and input
the name of the new specialty. Select ```Return``` to return to the main
menu.

To create an employee record, select ```Add/Update Employees``` from the
administrator main menu. Scroll down and select ```Add a New Employee```;
then, input a first name, last name, username, and password, and select
a specialty. Finally select ```Return``` to return to the main menu.

To create a project, select ```Add/Update Projects``` from the administrator
main menu. Select ```Add a New Project```; then, input a project name,
start date, and end date (YYYY-MM-DD). Finally select ```Return``` to return
to the main menu.

To create a task, select ```Add/Update Projects``` from the administrator
main menu. Select the project to which the task will belong, then select
```Edit```, followed by ```Create or Edit Tasks```. From the tasks menu,
select ```Create new task for [project]```. Input a task description, followed
by a due date (YYYY-MM-DD), then select an employee to whom the task should
be assigned. Finally select ```Return``` three times to return to the
main menu.

### Read

The simplest Read operation is available from the administrator main
menu; simply select ```Produce Report``` to see a a list of all projects 
and corresponding tasks. Each task will report the employee to whom the
task has been assigned. Completed tasks show up in gray, overdue tasks 
show up in red, and remaining tasks (i.e. incomplete tasks which are
not overdue) are rendered in black. Tasks are ordered by due date;
tasks without an assigned due date show up top. Press ```q``` to return
to the administrator main menu.

To read the list of all specialties, select ```Add/Update Specialties``` 
from the administrator main menu. Select ```Return``` to return to the 
main menu.

To read the list of employees, select ```Add/Update Employees``` from the
administrator main menu. Select ```Return``` to return to the main menu.

To read the list of all projects, select ```Add/Update Projects``` from the
administrator main menu. To read all tasks associated with a project,
select the project name, followed by ```Edit```, followed 
by ```Create or Edit Tasks```. Select ```Return``` three times in a row
to return to the administrator main menu.

### Update

To update a specialty, select ```Add/Update Specialties``` from the
administrator main menu. Select the specialty to be updated, then
select ```Edit``` and enter the new name of the specialty. Select
```Return``` to return to the main menu.

To update an employee's record, select ```Add/Update Employees``` from
the administrator main menu. Select the employee to be updated, select
```Edit```, then select a field to update that field's value.
Select ```Return``` twice to return to the main menu.

To update a project, select ```Add/Update Projects``` from the administrator
main menu. Select the project to be updated, then select ```Edit```. 
Select a field to update that field's value. To update tasks, 
select ```Create or Edit Tasks``` and select the task to update.
Select a field to update that field's value. Select ```Return``` four times
to return to the main menu.

### Delete

To delete a specialty, select ```Add/Update Specialties``` from the
administrator main menu. Select the specialty to be deleted, then select
```Delete``` and input ```y```. Select ```Return``` to return to the
main menu.

To delete an employee's record, select ```Add/Update Employees``` from
the administrator main menu. Select the employee to be removed,
then select ```Delete``` and input ```y```. Select ```Return``` to return
to the main menu.

To delete a project, select ```Add/Update Projects``` from the administrator
main menu. Select the project to be deleted, then select ```Delete```
and input ```y```. Select ```Return``` to return to the main menu.

To delete a task, select ```Add/Update Projects``` from the administrator
main menu. Select the project to which the task belongs, and then
select ```Edit```, followed by ```Create or Edit Tasks```. Select the
task to be removed, then select ```Delete task``` and input ```y```. 
Select ```Return``` three times to return to the main menu.

