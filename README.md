<p align="center">
  <img src="http://krowinski.com/files/loot_system/img/logo.png" alt="Loot System Gem" />
</p>
<p align="center">
  <a href="https://codeclimate.com/github/archdragon/loot_system">
    <img src="https://codeclimate.com/github/archdragon/loot_system/badges/gpa.svg" alt="Code Climate" />
  </a>
  <a href="https://travis-ci.org/archdragon/loot_system">
    <img src="https://travis-ci.org/archdragon/loot_system.svg?branch=master" alt="Build Status" />
  </a>
  <a href="https://coveralls.io/r/archdragon/loot_system?branch=master">
    <img src="https://coveralls.io/repos/archdragon/loot_system/badge.svg?branch=master" alt="Coverage Status" />
  </a>
</p>

# Loot System:

Quick and simple loot table creation.

## How to use:

First, create a chest - a container for your drops

    chest = LootSystem::Chest.new

Now we can add the items to our container:

    chest.add(item: common_item_object, chance: 0.9)
    chest.add(item: rare_item_object, chance: 0.01)

And use items_found method to get a list of all item that we managed to find:

    chest.items_found

