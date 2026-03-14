require 'spec_helper'

RSpec.describe ApocalypseWeapons do
  it "has a version number" do
    expect(ApocalypseWeapons::VERSION).not_to be nil
  end

  it "version follows semver format" do
    expect(ApocalypseWeapons::VERSION).to match(/\A\d+\.\d+\.\d+\z/)
  end
end

RSpec.describe ApocalypseWeapons::Firearm do
  before(:each) do
    ApocalypseWeapons::Firearm.all.clear
  end

  let(:firearm_attrs) { { name: "AK-47", description: "Reliable assault rifle", url: "https://en.wikipedia.org/wiki/AK-47" } }

  it "initializes with correct attributes" do
    firearm = ApocalypseWeapons::Firearm.new(firearm_attrs)
    expect(firearm.name).to eq("AK-47")
    expect(firearm.description).to eq("Reliable assault rifle")
    expect(firearm.url).to eq("https://en.wikipedia.org/wiki/AK-47")
  end

  it "adds itself to @@all on initialization" do
    firearm = ApocalypseWeapons::Firearm.new(firearm_attrs)
    expect(ApocalypseWeapons::Firearm.all).to include(firearm)
  end

  it "creates multiple firearms from a collection" do
    collection = [
      { name: "AK-47", description: "Assault rifle", url: "http://example.com" },
      { name: "Glock 17", description: "Pistol", url: "http://example.com" }
    ]
    ApocalypseWeapons::Firearm.create_from_collection(collection)
    expect(ApocalypseWeapons::Firearm.all.length).to eq(2)
  end

  it "finds a firearm by 1-based index" do
    ApocalypseWeapons::Firearm.create_from_collection([firearm_attrs])
    found = ApocalypseWeapons::Firearm.find_firearm(1)
    expect(found.name).to eq("AK-47")
  end
end

RSpec.describe ApocalypseWeapons::Melee_weapon do
  before(:each) do
    ApocalypseWeapons::Melee_weapon.all.clear
  end

  let(:weapon_attrs) { { name: "Machete", description: "Versatile blade", history: "Used for centuries", url: "http://amazon.com/machete" } }

  it "initializes with correct attributes" do
    weapon = ApocalypseWeapons::Melee_weapon.new(weapon_attrs)
    expect(weapon.name).to eq("Machete")
    expect(weapon.description).to eq("Versatile blade")
    expect(weapon.history).to eq("Used for centuries")
    expect(weapon.url).to eq("http://amazon.com/machete")
  end

  it "adds itself to @@all on initialization" do
    weapon = ApocalypseWeapons::Melee_weapon.new(weapon_attrs)
    expect(ApocalypseWeapons::Melee_weapon.all).to include(weapon)
  end

  it "creates multiple weapons from a collection" do
    collection = [weapon_attrs, weapon_attrs.merge(name: "Crowbar")]
    ApocalypseWeapons::Melee_weapon.create_from_collection(collection)
    expect(ApocalypseWeapons::Melee_weapon.all.length).to eq(2)
  end

  it "finds a melee weapon by 1-based index" do
    ApocalypseWeapons::Melee_weapon.create_from_collection([weapon_attrs])
    found = ApocalypseWeapons::Melee_weapon.find_melee_weapon(1)
    expect(found.name).to eq("Machete")
  end
end
