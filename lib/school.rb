require 'pry'
class School

    attr_accessor :school_name, :roster, :student_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
         @roster.each { | grade, students | students.sort! }
         
    end
    
        
    

end