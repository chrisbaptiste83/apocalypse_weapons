
class  ApocalypseWeapons::Scraper
  

    def self.scrape_firearms 

        @doc = Nokogiri::HTML(open("http://wezombie.com/zombie-weapons-top-ten-guns-for-the-zombie-war/"))  

        @doc.css(".entry-content p").select.with_index { |_, idx| idx.odd? && idx <=19}.each do |gun| 
            gun1 = ApocalypseWeapons::Firearm.new 
            gun1.description = gun.text
            gun1.name = gun.css("a[title]").text 
             
        end 
       
    end 
         
  
    
          
     
     def self.scrape_melee_weapons
       
     @doc2 = Nokogiri::HTML(open("https://www.apocalypsesurvivalist.com/best-melee-weapons/")) 
    
     @doc2.css("h2").select.with_index { |_, idx| idx <=9}.each do |m_weapon| 
        melee_weapon1 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon1.name = m_weapon.text 
        melee_weapon1.history = @doc2.css("h2+p+p").text 
        
        
        end 
        binding.pry
     end
    

    end 
    

