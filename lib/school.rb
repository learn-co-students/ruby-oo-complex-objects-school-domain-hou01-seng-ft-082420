class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade_level)
        roster[grade_level] ||= []
        roster[grade_level]<< name
    end

    def grade(s_grade)
        roster[s_grade]
    end
    
    def sort
        sort = {}
        roster.each do |grade_level, students|
            sort[grade_level] = students.sort
        end
        sort
    end

end