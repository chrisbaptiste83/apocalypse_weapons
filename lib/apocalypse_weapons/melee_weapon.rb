class ApocalypseWeapons::Melee_weapon  
    attr_accessor :description, :history, :name 

    @@all = [] 

    def initialize 
        @@all << self 
    end 

    def self.find_melee_weapon(id) 
        self.all[id.to_i - 1] 
      end  
   
   def self.list_melee_weapons  
        ApocalypseWeapons::Melee_weapon.all.select do |melee_weapon|
            puts "#{melee_weapon.name}"
        end 
    end 

    def self.all 
        @@all 
    end 

end 