class ApocalypseWeapons::Firearm 

    @@all=[] 

    attr_accessor :description, :name 

    def initialize
        @@all << self 
    end 

   def self.find_firearm(id) 
     self.all[id.to_i - 1] 
   end  

def self.list_firearms 
    ApocalypseWeapons::Firearm.all.map.with_index do |firearm, index|
        puts "##{index+1} #{firearm.name}"
    end 
end 
       

   def self.all 
    @@all 
end 

end 
