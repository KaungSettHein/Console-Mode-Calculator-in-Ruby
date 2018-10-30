require 'pg'

begin
    con = PG.connect :dbname => 'calculator', :user => 'postgres' , :password => 'abc123'

    print "Enter First Number:"
    firstnum = gets.to_f

    print "Enter Second Number:"
    secondnum = gets.to_f

    result = firstnum+secondnum
    puts "Sum of These Two Number is #{result}."

    result = firstnum-secondnum
    puts "Substraction of These Two Number is #{result}."

    result = firstnum*secondnum
    puts "Multiplication of These Two Number is #{result}."
        
    result = firstnum/secondnum
    puts "Division of These Two Number is #{result}."

    result = firstnum%secondnum
    puts "Modulus of These Two Number is #{result}."
rescue => ex
    puts ex
    print "\nWhat would you like to do These two Number? \n Please Enter the operation:"
    operation = gets.chomp
    if operation == '+' 
        result = firstnum+secondnum
        puts "Sum of These Two Number is #{result}."
    elsif operation == '-' 
        result = firstnum-secondnum
        puts "Substraction of These Two Number is #{result}."
    elsif operation == '*'
        result = firstnum*secondnum
        puts "Multiplication of These Two Number is #{result}."
    elsif operation == '/'
        result = firstnum/secondnum
        puts "Division of These Two Number is #{result}."
    elsif operation == '%'
        result = firstnum%secondnum
        puts "Modulus of These Two Number is #{result}."
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
                result = nd_firstnum+nd_secondnum
                puts "Sum of These Two Number is #{result}."
                f.write("Sum of These Two Number is #{result}\n")
    
            elsif nd_operation == '-' 
                result = nd_firstnum-nd_secondnum
                puts "Substraction of These Two Number is #{result}."
                f.write("Substraction of These Two Number is #{result}\n")
    
            elsif nd_operation == '*'
                result = nd_firstnum*nd_secondnum
                puts "Multiplication of These Two Number is #{result}."
                f.write("Multiplication of These Two Number is #{result}\n")
    
            elsif nd_operation == '/'
                result = nd_firstnum/nd_secondnum
                puts "Division of These Two Number is #{result}."
                f.write("Division of These Two Number is #{result}\n")
    
            elsif nd_operation == '%'
                result = nd_firstnum%nd_secondnum
                puts "Modulus of These Two Number is #{result}."
                f.write("Modulus of These Two Number is #{result}\n")
            else
                puts "Please Enter properly!"
            end
            time = Time.now
            con.exec "INSERT INTO test (firstnum,secondnum,operation,result,date) VALUES ($1,$2,$3,$4,$5)", [nd_firstnum,nd_secondnum,nd_operation,result,time]
        end
    end
rescue PG::Error => e
    puts e.message 
ensure
    con.close if con
end