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

We will assume that the database has been seeded as in the previous
paragraph. From the opening screen, select ```Employee```
and enter a username of ```TommyJ``` followed by the password ```password```.
You should see a list containing three projects, which are the projects
to which this user has been assigned (via one or more tasks).
Select the first project, ```Bay Bridge```, and observe that there is
one task. Completed tasks show up in gray, overdue tasks show up in
red, and remaining tasks (i.e. incomplete tasks which are not overdue)
are rendered in black. Tasks are ordered by due date; tasks without an
assigned due date show up top.

Under tasks, the user is presented with a list of other employees assigned
to this project, followed by a list of users (across all projects)
whose specialty coincides with the user's.

Press ```q``` to exit the project view, then select ```Exit``` to quit
the program.

## Using Administrator mode

We will assume, again, that the database has been seeded as previously
indicated. From the opening screen, select ```Administrator``` and
enter the password ```password``` to open the administration menu.
(If the password is entered incorrectly, the program will immediately
abort.) We will demonstrate the CRUD (Create/Read/Update/Delete) 
operations in turn.

### Create

### Read

The simplest Read operation is available from the administrator main
menu; simply select ```Produce Report``` to see a a list of all projects 
and corresponding tasks; each task will report the employee to whom the
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

### Delete

<!--
# Module One Final Project Guidelines

Congratulations, you're at the end of module one! You've worked crazy hard to get here and have learned a ton.

For your final project, we'll be building a Command Line database application.

## Project Requirements

### Option One - Data Analytics Project

1. Access a Sqlite3 Database using ActiveRecord.
2. You should have at minimum three models including one join model. This means you must have a many-to-many relationship.
3. You should seed your database using data that you collect either from a CSV, a website by scraping, or an API.
4. Your models should have methods that answer interesting questions about the data. For example, if you've collected info about movie reviews, what is the most popular movie? What movie has the most reviews?
5. You should provide a CLI to display the return values of your interesting methods.  
6. Use good OO design patterns. You should have separate classes for your models and CLI interface.

  **Resource:** [Easy Access APIs](https://github.com/learn-co-curriculum/easy-access-apis)

### Option Two - Command Line CRUD App

1. Access a Sqlite3 Database using ActiveRecord.
2. You should have a minimum of three models.
3. You should build out a CLI to give your user full CRUD ability for at least one of your resources. For example, build out a command line To-Do list. A user should be able to create a new to-do, see all todos, update a todo item, and delete a todo. Todos can be grouped into categories, so that a to-do has many categories and categories have many to-dos.
4. Use good OO design patterns. You should have separate models for your runner and CLI interface.

### Brainstorming and Proposing a Project Idea

Projects need to be approved prior to launching into them, so take some time to brainstorm project options that will fulfill the requirements above.  You must have a minimum of four [user stories](https://en.wikipedia.org/wiki/User_story) to help explain how a user will interact with your app.  A user story should follow the general structure of `"As a <role>, I want <goal/desire> so that <benefit>"`. In example, if we were creating an app to randomly choose nearby restaurants on Yelp, we might write:

* As a user, I want to be able to enter my name to retrieve my records
* As a user, I want to enter a location and be given a random nearby restaurant suggestion
* As a user, I should be able to reject a suggestion and not see that restaurant suggestion again
* As a user, I want to be able to save to and retrieve a list of favorite restaurant suggestions

## Instructions

1. Fork and clone this repository.
2. Build your application. Make sure to commit early and commit often. Commit messages should be meaningful (clearly describe what you're doing in the commit) and accurate (there should be nothing in the commit that doesn't match the description in the commit message). Good rule of thumb is to commit every 3-7 mins of actual coding time. Most of your commits should have under 15 lines of code and a 2 line commit is perfectly acceptable.
3. Make sure to create a good README.md with a short description, install instructions, a contributors guide and a link to the license for your code.
4. Make sure your project checks off each of the above requirements.
5. Prepare a video demo (narration helps!) describing how a user would interact with your working project.
    * The video should:
      - Have an overview of your project.(2 minutes max)
6. Prepare a presentation to follow your video.(3 minutes max)
    * Your presentation should:
      - Describe something you struggled to build, and show us how you ultimately implemented it in your code.
      - Discuss 3 things you learned in the process of working on this project.
      - Address, if anything, what you would change or add to what you have today?
      - Present any code you would like to highlight.   
7. *OPTIONAL, BUT RECOMMENDED*: Write a blog post about the project and process.

---
### Common Questions:
- How do I turn off my SQL logger?
```ruby
# in config/environment.rb add this line:
ActiveRecord::Base.logger = nil
```
-->

