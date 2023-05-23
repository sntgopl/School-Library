class Decorator < Nameable
    def constructor(nameable)
        @nameable = nameable
    end

    def correct_name
        @nameable
    end
end

class CapitalizeDecorator < Decorator
    def correct_name
        @nameable.correct_name.capitalize
    end
end
