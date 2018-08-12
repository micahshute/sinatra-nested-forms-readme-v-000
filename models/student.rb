class Student

    STUDENTS = []

    def self.all
        STUDENTS
    end

    def self.from_params(params)
        self.new(name: params[:name], grade: params[:grade])
    end

    attr_reader :name, :grade

    def initialize(name:, grade:)
        @name = name
        @grade = grade
        self.save
    end

    def save 
        STUDENTS << self
    end

end