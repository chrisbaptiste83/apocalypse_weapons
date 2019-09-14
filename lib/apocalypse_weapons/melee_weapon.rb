class ApocalypseWeapons::Melee_weapon  
    
    attr_accessor :description, :history, :name, :url 

    @@all = [] 

    def initialize(melee_weapon_hash) 
        melee_weapon_hash.each {|k,v| self.send(("#{k}="), v)}
        @@all << self 
    end 

    def self.create_from_collection(melee_weapon_array) 
        melee_weapon_array.each {|melee_weapon_hash| self.new(melee_weapon_hash)} 
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