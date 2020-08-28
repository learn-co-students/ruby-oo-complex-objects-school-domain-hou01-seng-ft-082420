class School

    attr_accessor :roster

    def initialize(name)
        @name = name 
        @roster = Hash.new
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            then @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        final_hash = {}
        @roster.sort.each {|grade,array| final_hash[grade] = array.sort}
        final_hash
    end
end