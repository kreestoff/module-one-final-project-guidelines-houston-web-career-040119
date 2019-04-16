class Employee < ActiveRecord::Base
  has_many :tasks
  has_many :projects, through: :tasks
  belongs_to :specialty

def all_coworkers_by_project
  coworkers = []
  self.projects.each do |p|
    p.tasks.each do |t|
      coworkers << t.employee
    end
  end
  coworkers.uniq.delete_if {|e| e.id == self.id}
end


  def all_employees_with_same_specialty
    Employee.all.select do |e|
      e.specialty_id == self.specialty_id
    end.delete_if {|e| e.id == self.id}
  end

  def all_projects
    self.projects.each do |p|
      self.tasks.each do |t|
      puts "Project name: #{p.name}" + "\n" + "Project Id: #{p.id}" + "Task "
      end
    end
  end

end
