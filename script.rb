puts "What is your distribution at the moment?"
    puts "1. Arch Linux & its derivatives"
    puts "2. Debian & its derivatives excluding Ubuntu"
    puts "3. Fedora"
    puts "4. Solus"
    puts "5. Ubuntu & its derivatives"
puts "Your answer: "
answer_1 = gets.chomp
    if answer_1 == 2
        puts "What do you want to do with the script?"
            puts "1. Setup applications"
            puts "2. Setup NVIDIA drivers"
            puts "3. Setup Vietnamese typing"
        puts "Your answer: "
            answer_Arch = gets.chomp
                if  answer_Arch == 1
                    
                elsif answer_Arch == 2

                elsif answer_Arch == 3

                else
                
                end               
    elsif answer_1 == 2
        puts "What do you want to do with the script?"
            answer_Debian = gets.chomp
                if answer_Debian == 1
                    
                elsif answer_Debian == 2
                    
                elsif answer_Debian == 3
                    
                else

                end
    elsif answer_1 == 3
        puts "What do you want to do with the script?"
            answer_Fedora = gets.chomp
                if 
                    
                elsif 
                   
                elsif

                else
                    
                end
    elsif answer_1 == 4
        puts "What do you want to do with the script?"
            answer_Solus = gets.chomp
                if 
                    
                elsif 
                   
                elsif

                else
                    
                end
    elsif answer_1 == 5
        puts "What do you want to do with the script?"
            answer_Ubuntu = gets.chomp
                if 
                    
                elsif 
                    
                elsif

                else
                    
                end
    else
        puts "Invalid answer. Script will exit."
        `exit`
    end        