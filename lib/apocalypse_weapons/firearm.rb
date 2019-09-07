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
    self.all.each_with_index(1) do |firearm, i|
        puts "#{i}. #{firearm.name}" 
    end 
end 
       

   def self.all 
    @@all 
end 

end 
