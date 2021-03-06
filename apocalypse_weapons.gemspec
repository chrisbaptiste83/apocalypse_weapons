lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "apocalypse_weapons/version"

Gem::Specification.new do |spec|
  spec.name          = "apocalypse_weapons"
  spec.version       = ApocalypseWeapons::VERSION
  spec.authors       = ["Chris Baptiste"]
  spec.email         = ["chrisbaptiste83@gmail.com"]

  spec.summary       = %q{"A gem for finding the right weapon during a zombie apocalypse"}
  spec.description   = %q{"A ruby gem for finding the right melee weapon or firearm during a zombie apocalypse"} 
  spec.files         = ["lib/apocalypse_weapons.rb", "lib/apocalypse_weapons/cli.rb", "lib/apocalypse_weapons/scraper.rb", "lib/apocalypse_weapons/firearm.rb", "lib/apocalypse_weapons/melee_weapon.rb", "config/environment.rb"]
  spec.homepage      = "https://github.com/chrisbaptiste83/apocalypse_weapons.git"
  spec.license       = "MIT"

  

 

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0" 
  spec.add_dependency "nokogiri", "~> 1.8"
  spec.add_dependency "pry", ">= 0"
 
end

