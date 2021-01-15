
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names.collect { |attendee| badge_maker(attendee) }
end

def assign_rooms(names)
    new_names = []
    counter = 1
    names.each do |name|
        new_names << "Hello, #{name}! You'll be assigned to room #{counter}!"
        counter += 1
    end
    return new_names
end

def printer(array)
    batch_badge_creator(array).each do |result|
        puts result
    end

    assign_rooms(array).each do |result|
        puts result
    end
end