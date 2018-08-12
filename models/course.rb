class Course

    COURSES = []

    def self.all
        COURSES
    end

    def self.from_params(params)
        self.new(name: params[:name], topic: params[:topic])
    end

    attr_reader :name, :topic

    def intialize(name: , topic:)
        @name = name
        @topic = topic
        self.save
    end

    def save
        COURSES << self
    end
end