class School
    
    attr_accessor :name, :roster
    
    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        @roster[@grade] ||= []
        @roster[@grade] << @name
    end

    def grade(grade)
      roster[grade]
    end

    def sort
      sorted_hash = {}
     @roster.each {|grade,name| sorted_hash[grade] = name.sort}
     return sorted_hash
    end

        
end