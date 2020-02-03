# Build the line method that shows everyone their current place in the line. If there is nobody in line, it should say "The line is currently empty."
# The take_a_number method should call out (puts) the person's name along with their position in line.
# The now_serving method which should call out (i.e. puts) the next person in line and then remove them from the front

katz_deli = []

def line (array)
   if array.count == 0
      puts "The line is currently empty."
   else
      response = "The line is currently:"
      array.each_with_index do |name, index|
         response += " #{index+1}. #{name}" 
   end
   puts response
   end
end

def take_a_number (array, name)
   array.push(name)
   puts "Welcome, #{name}. You are number #{array.length} in line."
end

def now_serving(array)
   if array.count == 0
      puts "There is nobody waiting to be served!"
   else
      puts "Currently serving #{array.shift}."
   end
end