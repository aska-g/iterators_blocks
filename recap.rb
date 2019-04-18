# flow: if / else, unless
# loop, while, until, for, break, exit

# ARRAYS
# CRUD
# create
students = Array.new # students = []
students.push('student') # students << 'student', .append / .prepend

# read
students[0]

# update
students[0] = 'another student'

# delete
students.delete('student') # do not use!
students.delete_at(0)

# size
students.size


students.each do |student|
  'some code'
end
