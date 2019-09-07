class ApocalypseWeapons::Firearm 

    @@all=[] 

    attr_accessor :description, :name 

    def initialize
        
        @@all << self 
    end 

     
   
       

   def self.all 
    @@all 
end 

end 
