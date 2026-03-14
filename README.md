# Apocalypse Weapons

A Ruby CLI gem that helps you prepare for the zombie apocalypse by presenting the top 10 firearms and melee weapons you'll want on hand when doomsday arrives.

## Features

- Browse the **top 10 firearms** recommended for zombie survival — with descriptions and Wikipedia links
- Browse the **top 10 melee weapons** — with history, descriptions, and purchase links
- Interactive menu-driven CLI — no GUI required, just your terminal and your survival instincts

## Demo

```
$ ./bin/apocalypse-weapons

Don't get caught in the middle of a zombie apocalypse without a gameplan.
Here is a collection of the top weapons to have when the apocalypse comes knocking on your door.

Enter a weapon category for a list of the best apocalypse weapons or type exit to exit.

1. Firearms
2. Melee Weapons
```

## Installation

**Prerequisites:** Ruby 2.x+, Bundler

```bash
git clone https://github.com/chrisbaptiste83/apocalypse_weapons.git
cd apocalypse_weapons
bundle install
```

## Usage

```bash
./bin/apocalypse-weapons
```

Navigate the menu by entering the number of the category you want to explore, then select a specific weapon to see its full description and details.

## How It Works

The app uses [Nokogiri](https://nokogiri.org/) to scrape live weapon data from the web at runtime, building a local collection of `Firearm` and `Melee_weapon` objects. The CLI layer drives navigation through a simple `gets`-based input loop.

**Class structure:**

| Class | Responsibility |
|---|---|
| `CLI` | Drives the interactive menu |
| `Scraper` | Fetches and parses weapon data from web sources |
| `Firearm` | Stores firearm name, description, and Wikipedia URL |
| `Melee_weapon` | Stores melee weapon name, description, history, and Amazon URL |

## Tech Stack

- **Ruby** — core language
- **Nokogiri** — HTML scraping
- **RSpec** — testing
- **Travis CI** — continuous integration

## Running Tests

```bash
bundle exec rspec
```

## Project Background

Built as a CLI project at [Flatiron School](https://flatironschool.com/) to practice Ruby OOP, web scraping, and building gem-style applications.

## License

This project is available under the [MIT License](LICENSE.txt).
