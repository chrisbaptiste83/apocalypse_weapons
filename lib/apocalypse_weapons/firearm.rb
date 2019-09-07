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
    ApocalypseWeapons::Firearm.all.select do |firearm|
        puts "#{firearm.name}"
    end 
end 
       

   def self.all 
    @@all 
end 

end 
