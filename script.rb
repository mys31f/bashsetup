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
<<<<<<< HEAD
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
=======
        answer_arch = gets.chomp
            if answer_arch == "1"
                `sh ./Arch/arch-setup.sh`
            elsif answer_arch == "2"
                `sh ./Arch/arch-nvidia.sh`
            elsif answer_arch == "3"
                `sh ./Arch/arch-vietnamese.sh`
            end
    elsif answer == "2"
        puts "What do you want to do? "
            puts "1. Setup the applications"
            puts "2. Setup NVIDIA drivers"
            puts "3. Setup Vietnamese typing"
        puts "Your answer: "
        answer_debian = gets.chomp
            if answer_debian == "1"
                `sh ./Debian/debian-setup.sh`
            elsif answer_debian == "2"
                `sh ./Debian/debian-nvidia.sh`
            elsif answer_debian == "3"
                `sh ./Debian/debian-vietnamese.sh`
            end
    elsif answer == "3"
        puts "What do you want to do? "
            puts "1. Setup the applications"
            puts "2. Setup NVIDIA drivers"
            puts "3. Setup Vietnamese typing"
        puts "Your answer: "
        answer_fedora = gets.chomp
            if answer_fedora == "1"
                `sh ./Fedora/fedora-setup.sh`
            elsif answer_fedora == "2"
                `sh ./Fedora/fedora-nvidia.sh`
            elsif answer_fedora == "3"
                `sh ./Fedora/fedora-vietnamese.sh`
                output = `echo ?$`
                if output == 0
                    puts "Looks like your installation went fine."
                elsif output != 0
                    puts "Are you using Fedora 33? If so, there has been no builds done on OBS yet so we're waiting for that." 
                end
            end
    elsif answer == "4"
        puts "What do you want to do? "
            puts "1. Setup the applications"
            puts "2. Setup NVIDIA drivers"
            puts "3. Setup Vietnamese typing"            
        puts "Your answer: "
            answer_leap = gets.chomp
            if answer_leap == "1"
                `sh ./Leap/leap-setup.sh`
            elsif answer_leap == "2"
                `sh ./Leap/leap-nvidia.sh`
            elsif answer_leap == "3"
                `sh ./Leap/leap-vietnamese.sh`
            end
    elsif answer == "5"
        puts "What do you want to do?"
            puts "1. Setup the applications"
            puts "2. Setup NVIDIA drivers"
            puts "3. Setup Vietnamese typing"
        puts "Your answer: "
        answer_solus = gets.chomp
            if answer_solus == "1"
                `sh ./Solus/solus-setup.sh`
            elsif answer_solus == "2"
                `sh ./Solus/solus-nvidia.sh`
            elsif answer_solus == "3" 
                `sh ./Solus/solus-vietnamese.sh`
            end
    elsif answer == "6"
        puts "What do you want to do?"
            puts "1. Setup the applications"
            puts "2. Setup NVIDIA drivers"
            puts "3. Setup Vietnamese typing"
        puts "Your answer: "
        answer_ubuntu = gets.chomp
            if answer_ubuntu == "1"
                `sh ./Ubuntu/ubuntu-setup.sh`
            elsif answer_ubuntu == "2"
                `sh ./Ubuntu/ubuntu-nvidia.sh`
            elsif answer_ubuntu == "3"
                `sh ./Ubuntu/ubuntu-vietnamese.sh`
            end
    elsif answer == "7"
        `exit`
>>>>>>> master
    else
        puts "Invalid answer. Script will exit."
        `exit`
<<<<<<< HEAD
    end        
=======
    end
>>>>>>> master
