print "Enter First Number:"
firstnum = gets.to_f

print "Enter Second Number:"
secondnum = gets.to_f

add = firstnum+secondnum
puts "Sum of These Two Number is #{add}."

substract = firstnum-secondnum
puts "Substraction of These Two Number is #{substract}."

multi = firstnum*secondnum
puts "Multiplication of These Two Number is #{multi}."
	
divi = firstnum/secondnum
puts "Division of These Two Number is #{divi}."

remainder = firstnum%secondnum
puts "Modulus of These Two Number is #{remainder}."

print "\nWhat would you like to do These two Number? \n Please Enter the operation:"
operation = gets.chomp
	if operation == '+' 
		add = firstnum+secondnum
		puts "Sum of These Two Number is #{add}."
	elsif operation == '-' 
		substract = firstnum-secondnum
		puts "Substraction of These Two Number is #{substract}."
	elsif operation == '*'
		multi = firstnum*secondnum
		puts "Multiplication of These Two Number is #{multi}."
	elsif operation == '/'
		divi = firstnum/secondnum
		puts "Division of These Two Number is #{divi}."
	elsif operation == '%'
		remainder = firstnum%secondnum
		puts "Modulus of These Two Number is #{remainder}."
	else
		puts "Please Enter properly!"
	end
loop do 
	puts "\nDo you want to do the operation again y/n?"
	answer = gets.chomp
	if answer == 'n'
	break
		else
		f = File.new('out.txt','a')
		print "Enter First Number:"
		nd_firstnum = gets.to_f
		f.write("First Number is #{nd_firstnum}\n")

		print "Enter Second Number:"
		nd_secondnum = gets.to_f
		f.write("Second Number is #{nd_secondnum}\n")

		print "Please Enter the operation:"
		nd_operation = gets.chomp
		f.write("Operation is #{nd_operation}\n")
		if nd_operation == '+' 
			nd_add = nd_firstnum+nd_secondnum
			puts "Sum of These Two Number is #{nd_add}."
			f.write("Sum of These Two Number is #{nd_add}\n")

		elsif nd_operation == '-' 
			nd_substract = nd_firstnum-nd_secondnum
			puts "Substraction of These Two Number is #{nd_substract}."
			f.write("Substraction of These Two Number is #{nd_substract}\n")

		elsif nd_operation == '*'
			nd_multi = nd_firstnum*nd_secondnum
			puts "Multiplication of These Two Number is #{nd_multi}."
			f.write("Multiplication of These Two Number is #{nd_multi}\n")

		elsif nd_operation == '/'
			nd_divi = nd_firstnum/nd_secondnum
			puts "Division of These Two Number is #{nd_divi}."
			f.write("Division of These Two Number is #{nd_divi}\n")

		elsif nd_operation == '%'
			nd_remainder = nd_firstnum%nd_secondnum
			puts "Modulus of These Two Number is #{nd_remainder}."
			f.write("Modulus of These Two Number is #{nd_remainder}\n")
		else
			puts "Please Enter properly!"
		end
	end
end