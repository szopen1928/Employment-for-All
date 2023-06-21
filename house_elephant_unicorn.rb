#Employment for All

# Step 1 - Define and Initialize Variables
employee_list = [] 
employer_list = [] 

# Step 2 - Setup a Loop to Register Employees and Employers
loop do 
  puts 'Enter a Name to Register as an Employee (Type "end" when finished): '
  employee_name = gets.chomp
  break if employee_name == 'end'

  employee_list.push(employee_name)

  puts 'Enter a Business Name to Register as an Employer (Type "end" when finished): '
  employer_name = gets.chomp
  break if employer_name == 'end'

  employer_list.push(employer_name)
end

# Step 3 - Find Pairings Between Employees and Employers
employee_list.each do |current_employee|
  employer_list.each do |current_employer|
    puts "Pairing #{current_employee} with #{current_employer}"
  end
end

# Step 4 - Generate Employment Agreements
employee_list.each do |current_employee|
  employer_list.each do |current_employer|
    puts "Generating Employment Agreement for #{current_employee} and #{current_employer}"
    # Create a new employment agreement
    agreement = EmploymentAgreement.new(current_employee, current_employer)
    agreement.generate 
  end
end

# Step 5 - Send Employment Agreements
employee_list.each do |current_employee|
  employer_list.each do |current_employer|
    puts "Sending Employment Agreement for #{current_employee} and #{current_employer}"
    agreement.send
  end
end