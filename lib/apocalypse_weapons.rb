require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative "./apocalypse_weapons/version"

module ApocalypseWeapons
  class Error < StandardError; end
  # Your code goes here...
end
 
require_relative '../lib/apocalypse_weapons/cli' 
require_relative '../lib/apocalypse_weapons/scraper' 
require_relative '../lib/apocalypse_weapons/firearm' 
require_relative '../lib/apocalypse_weapons/melee_weapon'
