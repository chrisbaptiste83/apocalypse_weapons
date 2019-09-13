class ApocalypseWeapons::Firearm 

    @@all=[] 

    attr_accessor :description, :name, :url 

    def initialize(firearm_hash) 
        firearm_hash.each {|k,v| self.send(("#{k}="), v)}
        @@all << self 
    end 

    def self.create_from_collection(firearm_array) 
        firearm_array.each {|firearm_hash| self.new(firearm_hash)} 
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
