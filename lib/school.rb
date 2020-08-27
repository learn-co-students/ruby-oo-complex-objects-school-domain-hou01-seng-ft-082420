require 'pry'
class School
    attr_accessor :school_name, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(num)
        self.roster[num]
    end

    def sort
        roster.each do | lvl , stu |
            roster[lvl] = stu.sort
        end
    end
end
#binding.pry
#0