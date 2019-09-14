
class  ApocalypseWeapons::Scraper
  
    def self.get_firearms 
    @doc = Nokogiri::HTML(open("http://wezombie.com/zombie-weapons-top-ten-guns-for-the-zombie-war/"))
    @doc.css(".entry-content p").select.with_index { |_, idx| idx.odd? && idx <=19} 
   
    end 

    def self.scrape_firearms 

    guns = []
        self.get_firearms.each do |gun| 
            gun_details = {}
            gun_details[:description] = gun.text
            gun_details[:name]= gun.css("a").text 
            gun_details[:url] = gun.css("@href") 
            guns << gun_details    
        end 
       guns
    end 
         
  
    
     def self.get_melee_weapons 

        @doc2 =   Nokogiri::HTML(open("https://www.apocalypsesurvivalist.com/best-melee-weapons/"))   
        @doc2.css("h2").select.with_index { |_, idx| idx <=9 }

     end 


     def self.scrape_melee_weapons
       melee_weapons =[]
        self.get_melee_weapons.each_with_index do |m_weapon, index| 
         
        melee_weapon_details = {}
        melee_weapon_details[:name] = m_weapon.text 
            if index <=4
        melee_weapon_details[:description] = @doc2.css("h2+p+p+p")[index].text
        melee_weapon_details[:history]  = @doc2.css("h2+p+p")[index].text 
        melee_weapon_details[:url] = @doc2.css("h2+p a")[index]["href"]  
            elsif index >=6  
        melee_weapon_details[:description] = @doc2.css("h2+p+p+p")[index-1].text
        melee_weapon_details[:history]  = @doc2.css("h2+p+p")[index].text 
        melee_weapon_details[:url] = @doc2.css("h2+p a")[index]["href"] 
            else 
        melee_weapon_details[:description] = "#{@doc2.css("h2+p+p")[index].text.strip.split( '.' )[7..8].join(".").to_s}."   
        melee_weapon_details[:history]  = "History: #{@doc2.css("h2+p+p")[index].text.strip.split( '.' )[1..6].join(".").to_s}."
        melee_weapon_details[:url]= @doc2.css("h2+p a")[index]["href"] 
            end 
            melee_weapons << melee_weapon_details
        end 
        melee_weapons 
     end 


    


    end 
    

