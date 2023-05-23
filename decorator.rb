class Decorator < Nameable
    def constructor(nameable)
        @nameable = nameable
    end

    def correct_name
        @nameable.correct_name
    end
end