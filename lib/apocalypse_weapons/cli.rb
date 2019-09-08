class ApocalypseWeapons::CLI 
    def call  
        make_firearms 
        make_melee_weapons

        list_weapon_categories 
        main_menu 
        
    end 

def list_weapon_categories 
 puts "Caught in the middle of a zombie apocalypse and dont know what weapon to go for? Dont Panic!, here is a collection of the top firearms and meelee weapons for surviving a zombie apocalypse." 
 puts   "1. Firearms" 
 puts   "2. Melee Weapons" 
end 

def make_firearms 
    ApocalypseWeapons::Scraper.scrape_firearms
end 

def make_melee_weapons 
    ApocalypseWeapons::Scraper.scrape_melee_weapons
end 

def main_menu 
    
     input = nil
       
        puts "Enter a weapon category for a list of the best weapons or type exit to exit." 
        
        input = gets.strip.downcase 
         
        if input ==  "1" 
       firearm_menu
        elsif input == "2" 
       melee_weapon_menu 

        elsif input == "exit" 
           goodbye
        else
            puts "Please enter a valid category or press exit" 
            menu 
        end 
    end   

    

    def goodbye 
        puts "Goodbye. Good luck with the apocalypse" 
    end 

    def firearm_menu 

        input = nil

        puts "Here is a list of the top firearms for surviving a zombie apocalypse:"  
        ApocalypseWeapons::Firearm.list_firearms 
        puts "Select a weapon for info and reasons why this weapon will help you survive the apocalypse."
        
        input = gets.strip.to_i 
       
         
         selected_firearm = ApocalypseWeapons::Firearm.find_firearm(input) 

         print_firearm_info(selected_firearm) 
         puts "Would you like to view another weapon? "
         

            input = gets.strip.downcase
            if input == "y"
            main_menu
            elsif input == "n"
            puts ""
            goodbye
            else
            puts ""
            puts "I don't understand that answer."
            main_menu 
            end 

    end 
    
    def print_firearm_info(firearm) 

        puts ""
        puts "----------- #{firearm.name}---------"
        puts "" 
        puts "---------------Description-----------"
        puts "#{firearm.description}" 
    end 


    def print_melee_weapon_info(melee_weapon)
       
        puts ""
        puts "----------- #{melee_weapon.name}----"
        puts "" 
        puts "---------------Description----------"
        puts "#{melee_weapon.description}" 
        puts ""
        puts "---------------History--------------"
        puts "#{melee_weapon.history}" 

    end 




    def melee_weapon_menu 

        input = nil

        puts "Here is a list of the top firearmsmelee weapons for surviving a zombie apocalypse:"  
        ApocalypseWeapons::Melee_weapon.list_melee_weapons 
        puts "Select a melee weapon for info and reasons why this weapon will help you survive the apocalypse."
        
        input = gets.strip.to_i 
       
         
         selected_melee_weapon = ApocalypseWeapons::Melee_weapon.find_melee_weapon(input) 

         print_melee_weapon_info(selected_melee_weapon) 
         puts "Would you like to view another weapon? "
         

            input = gets.strip.downcase
            if input == "y"
            main_menu
            elsif input == "n"
            puts ""
            goodbye
            else
            puts ""
            puts "I don't understand that answer."
            main_menu 
            end 
    end 








end 