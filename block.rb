# SIMPLE TIMER WITH HARD-CODED TASK TO BE TIMED
def timer # 2: found a method called 'timer'
  start_time = Time.now # 3. starts execution
  # perform some
  sleep(2)
  end_time = Time.now
  "Elapsed time: #{end_time - start_time} seconds"
  # end
end

timer # 1: call method


# FLEXIBLE TIMER ACCEPTING A BLOCK

def enhanced_timer # 2: found method 'enhanced_timer'
  start_time = Time.now # 3: starts execution

  yield # 4: click pause button and go to the block

  # 6: unpause and continue
  end_time = Time.now
  puts "Elapsed time: #{end_time - start_time} seconds"
end


enhanced_timer do # 1: call method
  puts "starting task 1" # 4: execute the block
  sleep(3)
  puts "task 1 finished"
  # 5: end of block
end

enhanced_timer do
  puts 'another task starts'
  sleep(1)
  puts 'task finished'
end

# GREET METHOD ACCEPTING A BLOCK AND 2 PARAMETERS

def greet(first_name, last_name) # 2: method found
  # 3. start execution
  formatted_name = "#{first_name.capitalize} #{last_name.capitalize}"

  yield(formatted_name) # 4. pause and start the block execution, taking the argument with you
  # 7: end of method
end

greet('joanna', 'gaudyn') do |name| # 1: call method with 2 arguments (joanna gaudyn)
  # 5: run the block using the argument
  puts "Dzień dobry #{name}"
  # 6: finish the block and go back to the method
end

greet('john', 'smith') do |name|
  puts "Good morning #{name}"
end
