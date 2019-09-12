
class  ApocalypseWeapons::Scraper
  
    def self.get_firearms 
    @doc = Nokogiri::HTML(open("http://wezombie.com/zombie-weapons-top-ten-guns-for-the-zombie-war/"))
    @doc.css(".entry-content p").select.with_index { |_, idx| idx.odd? && idx <=19} 
    end 

    def self.scrape_firearms 

        self.get_firearms.each do |gun| 
            gun1 = ApocalypseWeapons::Firearm.new 
            gun1.description = gun.text
            gun1.name = gun.css("a[title]").text 
             
        end 
       
    end 
         
  
    
     def self.get_melee_weapons     
        @doc2 =   Nokogiri::HTML(open("https://www.apocalypsesurvivalist.com/best-melee-weapons/"))   
        @doc2.css("h2").select.with_index { |_, idx| idx <=4} 
     end 

     def self.scrape_melee_weapons
       
    self.get_melee_weapons.each_with_index do |m_weapon, index| 
        melee_weapon1 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon1.name = m_weapon.text 
        melee_weapon1.description = @doc2.css("h2+p+p+p")[index].text
        melee_weapon1.history = @doc2.css("h2+p+p")[index].text 
        end 
        
     end 


    


    end 
    

