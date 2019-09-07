class ApocalypseWeapons::CLI 
    def call  
        make_firearms 
        make_melee_weapons

        list_weapon_categories 
        menu 
        goodbye
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

def menu 
    
     input = nil
     while input != "exit"   
        puts "Enter a weapon category for a list of the best weapons or type exit to exit." 

        input = gets.strip.downcase 
        case input 
        when "1" 
        puts "Here is a list of the top firearms for surviving a zombie apocalypse:"
         ApocalypseWeapons::Firearm.list_firearms 
        when "2" 
        puts "here is a list of the best melee weapons for surviving a zombie apocalypse" 
        ApocalypseWeapons::Melee_weapon.list_melee_weapons
        end 
    end   

    end 

    def goodbye 
        puts "Goodbye. Good luck with the apocalypse" 
    end 

    







end 