
class  ApocalypseWeapons::Scraper
  

    def self.scrape_firearms 
        @doc = Nokogiri::HTML(open("http://wezombie.com/zombie-weapons-top-ten-guns-for-the-zombie-war/"))  

        @doc.css(".entry-content p").select.with_index { |word, idx| idx.odd? && idx <=19}.each do |gun| 
            gun1 = ApocalypseWeapons::Firearm.new 
            gun1.description = gun.text
            gun1.name = gun.css("a[title]").text 
        end 
       
    end 
            
    
       
          
     
     

     def self.scrape_melee_weapons
        @doc2 = Nokogiri::HTML(open("https://www.apocalypsesurvivalist.com/best-melee-weapons/")) 


        melee_weapon1 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon1.history = @doc2.css("p")[13].text
        melee_weapon1.description = @doc2.css("p")[14].text
        melee_weapon1.name = @doc2.css("h2")[0].text 

        melee_weapon2 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon2.history = @doc2.css("p")[16].text
        melee_weapon2.description = @doc2.css("p")[17].text
        melee_weapon2.name = @doc2.css("h2")[1].text 

        melee_weapon3 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon3.history = @doc2.css("p")[19].text
        melee_weapon3.description = @doc2.css("p")[20].text
        melee_weapon3.name = @doc2.css("h2")[2].text 

        melee_weapon4 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon4.history = @doc2.css("p")[22].text
        melee_weapon4.description = @doc2.css("p")[23].text
        melee_weapon4.name = @doc2.css("h2")[3].text 

        melee_weapon5 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon5.history = @doc2.css("p")[25].text
        melee_weapon5.description = @doc2.css("p")[26].text
        melee_weapon5.name = @doc2.css("h2")[4].text 

        melee_weapon6 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon6.history = @doc2.css("p")[28].text
        melee_weapon6.description = "A rigid knife designed for hand-to-hand combat."
        melee_weapon6.name = @doc2.css("h2")[5].text 

        melee_weapon7 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon7.history = @doc2.css("p")[31].text
        melee_weapon7.description = @doc2.css("p")[32].text
        melee_weapon7.name = @doc2.css("h2")[6].text 

        melee_weapon8 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon8.history = @doc2.css("p")[34].text
        melee_weapon8.description = @doc2.css("p")[35].text
        melee_weapon8.name = @doc2.css("h2")[7].text 

        melee_weapon9 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon9.history = @doc2.css("p")[38].text
        melee_weapon9.description = @doc2.css("p")[37].text
        melee_weapon9.name = @doc2.css("h2")[8].text 

        melee_weapon10 = ApocalypseWeapons::Melee_weapon.new 
        melee_weapon10.history = @doc2.css("p")[41].text
        melee_weapon10.description = @doc2.css("p")[42].text
        melee_weapon10.name = @doc2.css("h2")[9].text 

        

     end

end 

