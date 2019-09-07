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
        input=nil 
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
        puts "Here is a list of the top firearms for surviving a zombie apocalypse:"
        ApocalypseWeapons::Firearm.list_firearms 
    end 

    def melee_weapon_menu 
        puts "here is a list of the best melee weapons for surviving a zombie apocalypse" 
        ApocalypseWeapons::Melee_weapon.list_melee_weapons 
    end 








end 