puts "What distro are you on currently?"
    puts "1. Arch Linux/Manjaro"
    puts "2. Debian/Linux Mint Debian Edition"    
    puts "3. Fedora"
    puts "4. Solus"
    puts "5. Ubuntu"
puts: "Please enter a number: "
answer = gets.chomp
    if answer == 1
        puts "What do you want to do at the moment?"
        puts "1. Setup the computer"
        puts "2. Setup NVIDIA drivers"
        puts "3. Setup Vietnamese typing"
        puts "4. Setup Japanese typing"
        puts "Please enter a number: "
            answer_arch = gets.chomp
            if answer_arch == 1
                puts `sh arch-setup.sh`
            elsif answer_arch == 2
                puts `sh arch-nvidia.sh`
            elsif answer_arch == 3
                puts `sh arch-vietnamese.sh`                
            elsif answer_arch == 4
                puts `sh arch-nihongo.sh`
            end        
    elsif answer = 2
        puts "What do you want to do at the moment?"
        puts "1. Setup the computer"
        puts "2. Setup NVIDIA drivers"
        puts "3. Setup Vietnamese typing"
        puts "4. Setup Japanese typing"
        puts "Please enter a number: "
            answer_debian = gets.chomp
            if answer_debian == 1
                puts `sh debian-setup.sh`
            elsif answer_debian == 2
                puts `sh debian-nvidia.sh`
            elsif answer_debian == 3
                puts `sh debian-vietnamese.sh`                
            elsif answer_debian == 4
                puts `sh debian-nihongo.sh`
            end        
    elsif answer = 3
        puts "What do you want to do at the moment?"
        puts "1. Setup the computer"
        puts "2. Setup NVIDIA drivers"
        puts "3. Setup Vietnamese typing"
        puts "4. Setup Japanese typing"
        puts "Please enter a number: "
            answer_fedora = gets.chomp
            if answer_fedora == 1
                puts `sh fedora-setup.sh`
            elsif answer_fedora == 2
                puts `sh fedora-nvidia.sh`
            elsif answer_fedora == 3
                puts `sh fedora-vietnamese.sh`                
            elsif answer_fedora == 4
                puts `sh fedora-nihongo.sh`
            end        
    elsif answer = 4
        puts "What do you want to do at the moment?"
        puts "1. Setup the computer"
        puts "2. Setup NVIDIA drivers"
        puts "3. Setup Vietnamese typing"
        puts "4. Setup Japanese typing"
        puts "Please enter a number: "
            answer_solus = gets.chomp
            if answer_solus == 1
                puts `sh solus-setup.sh`
            elsif answer_solus == 2
                puts `sh solus-nvidia.sh`
            elsif answer_solus == 3
                puts `sh solus-vietnamese.sh`                
            elsif answer_solus == 4
                puts `sh solus-nihongo.sh`
            end        
    elsif answer = 5
        puts "What do you want to do at the moment?"
        puts "1. Setup the computer"
        puts "2. Setup NVIDIA drivers"
        puts "3. Setup Vietnamese typing"
        puts "4. Setup Japanese typing"
        puts "Please enter a number: "
            answer_ubuntu = gets.chomp
            if answer_ubuntu == 1
                puts `sh ubuntu-setup.sh`
            elsif answer_ubuntu == 2
                puts `sh ubuntu-nvidia.sh`
            elsif answer_ubuntu == 3
                puts `sh ubuntu-vietnamese.sh`                
            elsif answer_ubuntu == 4
                puts `sh ubuntu-nihongo.sh`
            end        
    else   
        puts "Invalid choice. Script is exiting immediately."
    end