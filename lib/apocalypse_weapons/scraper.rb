
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

            binding.pry 
        end 
     
     

     def self.scrape_melee_weapons
        doc2 = Nokogiri::HTML(open("https://www.apocalypsesurvivalist.com/best-melee-weapons/"))
     end

end 
