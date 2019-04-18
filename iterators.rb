students = %w(kevin krisztina johnny joel)

students.each do |student|
  student
end

for index in (0...students.size)
  "#{index + 1}. #{students[index]}"
end


# each_with_index
ordered_array = students.each_with_index do |student, index|
  "#{index + 1}. #{student}"
end

# map

def acronymize(sentence)
  words = sentence.split(' ')

  # version 1:
  # acronym = []
  # words.each do |word|
  #   acronym << word[0].capitalize
  # end

  # version 2:
  # words.map do |word|
  #   word[0].capitalize
  # end
  # acronym.join

  #version 3:
  words.map { |word| word[0].capitalize }.join
end

acronymize('away from keyboard') # returns 'AFK'

# count

counter = 0
students.each do |student|
  if student[0] == 'j' # student.start_with?('j')
    counter += 1
  end
end

# WITH AN ITERATOR
count = students.count do |student|
  student.start_with?('j')
end



# select

j_students = []

students.each do |student|
  if student.start_with?('j')
    j_students << student
  end

  "hello"
end

#WITH AN ITERATOR
j_students = students.select do |student|
  student.start_with?('j')
end

p j_students

# REJECT

non_j_students = students.reject do |student|
  student.start_with?('j')
end

p non_j_students
