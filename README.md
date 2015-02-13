<p align="center">
  <img src="http://krowinski.com/files/loot_system/img/logo.png" alt="Loot System Gem"/>
  [![Code Climate](https://codeclimate.com/github/archdragon/loot_system/badges/gpa.svg)](https://codeclimate.com/github/archdragon/loot_system)
  [![Build Status](https://travis-ci.org/archdragon/loot_system.svg?branch=master)](https://travis-ci.org/archdragon/loot_system)
  [![Coverage Status](https://coveralls.io/repos/archdragon/loot_system/badge.svg?branch=master)](https://coveralls.io/r/archdragon/loot_system?branch=master)
</p>

# Loot System:

Quick and simple loot table creation.

## Examples:

First, create a chest - a container for your drops

    chest = LootSystem::Chest.new

Initlialize your item
It can be anything - Drop class will accept any object

    first_drop = LootSystem::Drop.new({item: your_item, chance: 0.25})
    second_drop = LootSystem::Drop.new({item: your_item2, chance: 0.95})

Now we can add the drops to our container:

    chest.add(first_drop)
    chest.add(second_drop)

And use get_drops method to get a list of all the that we managed to find:

    chest.get_drops
