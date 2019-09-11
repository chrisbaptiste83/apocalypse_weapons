class ApocalypseWeapons::CLI 


    def call 

        make_firearms 
        make_melee_weapons 
        welcome_message
        main_menu 

    end 



def make_firearms 
    ApocalypseWeapons::Scraper.scrape_firearms
end 

def make_melee_weapons 
    ApocalypseWeapons::Scraper.scrape_melee_weapons
end 

def welcome_message 
    puts "Don't get caught in the middle of a zombie apocalypse without a gameplan.Here is a collection of the top weapons to have when the apocalypse comes knocking on your door." 
end 

def main_menu
    
     input = nil
       
        puts "Enter a weapon category for a list of the best apocalypse weapons or type exit to exit." 
        puts   "1. Firearms" 
        puts   "2. Melee Weapons" 
        puts ""

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

        puts "Here is a list of the best firearms for surviving a zombie apocalypse:"  
        puts""
        ApocalypseWeapons::Firearm.list_firearms 
        puts ""
        puts "Select a firearm for info and to see why it would be the ideal zombie-killing weapon during an apocalypse."
        
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
        puts "#{firearm.name}"
        puts "" 
        puts "Description"
        puts "#{firearm.description}" 
    end 


    def print_melee_weapon_info(melee_weapon)
       
        puts ""
        puts "#{melee_weapon.name}"
        puts "" 
        puts "Description"
        puts "#{melee_weapon.description}" 
        puts ""
        puts "History"
        puts "#{melee_weapon.history}" 

    end 




    def melee_weapon_menu 

        input = nil

        puts "Here is a list of the top melee weapons forto have during zombie apocalypse:"  
        puts ""
        ApocalypseWeapons::Melee_weapon.list_melee_weapons 
        puts ""
        puts "Select a melee weapon for info and to see why it would be the ideal zombie-killing melee weapon during an apocalypse."
        
        input = gets.strip.to_i 
       
         
         selected_melee_weapon = ApocalypseWeapons::Melee_weapon.find_melee_weapon(input) 

         print_melee_weapon_info(selected_melee_weapon) 

         puts "Would you like to view another weapon?"
         
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
