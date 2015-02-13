[![Code Climate](https://codeclimate.com/github/archdragon/loot_system/badges/gpa.svg)](https://codeclimate.com/github/archdragon/loot_system)
[![Build Status](https://travis-ci.org/archdragon/loot_system.svg?branch=master)](https://travis-ci.org/archdragon/loot_system)
[![Coverage Status](https://coveralls.io/repos/archdragon/loot_system/badge.svg?branch=master)](https://coveralls.io/r/archdragon/loot_system?branch=master)

# Loot System:

Quick and simple loot table creation.

## Examples:

First, create a chest - a container for your drops

    chest = LootSystem::Chest.new

Initlialize your item
It can be anything - Drop class will accept any object

    your_item = YourItemClass.new({name: "Random Ring of Spec"})
    your_item2 = YourItemClass.new({name: "Talisman of Testing"})

    first_drop = LootSystem::Drop.new({item: your_item, chance: 0.25})
    second_drop = LootSystem::Drop.new({item: your_item2, chance: 0.95})

    chest.add(first_drop)
    chest.add(second_drop)

    chest.get_drops
