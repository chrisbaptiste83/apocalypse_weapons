
class ApocalypseWeapons::Scraper 
  

    def self.scrape_firearms 
        @doc = Nokogiri::HTML(open("http://wezombie.com/zombie-weapons-top-ten-guns-for-the-zombie-war/")) 
        
            gun1 = ApocalypseWeapons::Firearm.new 
            gun1.description = @doc.css(".entry-content p")[1].text.strip 
            gun1.name = @doc.css(".entry-content p a[title]")[3].text
            
            gun2 = ApocalypseWeapons::Firearm.new 
            gun2.description = @doc.css(".entry-content p")[3].text.strip 
            gun2.name = @doc.css(".entry-content p a[title]")[4].text 

            gun3 = ApocalypseWeapons::Firearm.new 
            gun3.description = @doc.css(".entry-content p")[5].text.strip 
            gun3.name = @doc.css(".entry-content p a[title]")[5].text 

            gun4 = ApocalypseWeapons::Firearm.new 
            gun4.description = @doc.css(".entry-content p")[7].text.strip 
            gun4.name = @doc.css(".entry-content p a[title]")[6].text
            
            gun5 = ApocalypseWeapons::Firearm.new 
            gun5.description = @doc.css(".entry-content p")[9].text.strip 
            gun5.name = @doc.css(".entry-content p a[title]")[7].text 

            gun6 = ApocalypseWeapons::Firearm.new 
            gun6.description = @doc.css(".entry-content p")[11].text.strip 
            gun6.name = @doc.css(".entry-content p a[title]")[8].text 

            gun7 = ApocalypseWeapons::Firearm.new 
            gun7.description = @doc.css(".entry-content p")[13].text.strip 
            gun7.name = @doc.css(".entry-content p a[title]")[9].text
            
            gun8 = ApocalypseWeapons::Firearm.new 
            gun8.description = @doc.css(".entry-content p")[15].text.strip 
            gun8.name = @doc.css(".entry-content p a[title]")[10].text 

            gun9 = ApocalypseWeapons::Firearm.new 
            gun9.description = @doc.css(".entry-content p")[17].text.strip 
            gun9.name = @doc.css(".entry-content p a[title]")[11].text 

            gun10 = ApocalypseWeapons::Firearm.new 
            gun10.description = @doc.css(".entry-content p")[19].text.strip 
            gun10.name = @doc.css(".entry-content p a[title]")[12].text 
            
           
           
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

