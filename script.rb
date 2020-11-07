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
                    system("sudo pacman -R firefox libreoffice --noconfirm")
                    system("sudo pacman -Syu --noconfirm")
                    system("sudo pacman -S neofetch telegram-desktop qbittorrent steam wine lutris discord obs-studio kdenlive gimp krita blender inkscape audacity git --noconfirm")
                    `git clone https://aur.archlinux.org/yay.git`
                    `cd yay`
                    system("makepkg -si")
                        if  $? = true
                            puts "Installed successfully"
                        else
                            puts "Something went wrong."
                        end
                    `cd`
                    system("rm -rf yay")
                    `git clone https://aur.archlinux.org/freeoffice.git`
                    `cd freeoffice`
                    system("makepkg -si")
                    if  $? = true
                        puts "Installed successfully"
                    else
                        puts "Something went wrong."
                    end
                    `cd`
                    system("rm -rf freeoffice")
                    `git clone https://aur.archlinux.org/zoom.git`
                    `cd zoom`
                    system("makepkg -si") 
                        if  $? = true
                            puts "Installed successfully"
                        else
                            puts "Something went wrong."
                        end          
                    system("rm -rf zoom")      
                    
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
<<<<<<< HEAD
    end        
=======
    end
>>>>>>> master
