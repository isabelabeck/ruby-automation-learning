Given('I want to {string} two numbers {int} and {int}') do |type_of_operation, first_number, second_number|
  @type_of_operation = type_of_operation
  @first_number = first_number
  @second_number = second_number   
end

Given('I want to calculate the {int} root of a number {int}') do | root_number, number |
  @type_of_operation = "root" 
  @root_number = root_number
  @number = number
end

Given('I want to calculate the {int} power of a number {int}') do |exponencial_number, number|
  @type_of_operation = "exponencial"
  @exponencial_number = exponencial_number
  @number = number
end

When('I make this operation') do 
  if @type_of_operation == "add"        
    @actual_result = @first_number + @second_number

  elsif @type_of_operation == "subtract"  
    @actual_result = @first_number - @second_number
 
  elsif @type_of_operation == "multiplicate" 
    @actual_result = @first_number * @second_number
    
  elsif @type_of_operation == "divide"
    @actual_result = @first_number / @second_number

  elsif @type_of_operation == "root"
    # I have to use 1.0 below otherwise Ruby won't divide two integer numbers
    @actual_result = @number ** (1.0/@root_number)
    
  elsif @type_of_operation == "exponencial"
    @actual_result = @number ** @exponencial_number 
  end  
end

Then('the result should be {int}') do |expected_result|
  expect(@actual_result).to eq(expected_result)
end


