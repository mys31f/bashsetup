puts "What Linux distribution/derivative is currently on your system? Type the number according to the distribution currently on your PC."
    puts "1. Arch Linux/Manjaro"
    puts "2. Debian/Linux Mint Debian Edition/SparkyLinux"
    puts "3. Fedora"
    puts "4. OpenSUSE Leap"
    puts "5. Solus"
    puts "6. Ubuntu/Linux Mint/Pop!OS"
    puts "7. Exit"
puts "Your answer: "
answer = gets.chomp
    if answer == "1"
        puts "What do you want to do? "
            puts "1. Setup the applications"
            puts "2. Setup NVIDIA drivers"
            puts "3. Setup Vietnamese typing"
        puts "Your answer: "
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
                if output = 0
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
    else
        puts "Invalid answer. The script will exit in 10 seconds."
        `sleep 10`
        `exit`
    end
