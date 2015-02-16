[![Code Climate](https://codeclimate.com/github/archdragon/loot_system/badges/gpa.svg)](https://codeclimate.com/github/archdragon/loot_system)
[![Build Status](https://travis-ci.org/archdragon/loot_system.svg?branch=master)](https://travis-ci.org/archdragon/loot_system)
[![Coverage Status](https://coveralls.io/repos/archdragon/loot_system/badge.svg?branch=master)](https://coveralls.io/r/archdragon/loot_system?branch=master)

# Loot System:

Quick and simple loot table creation.

## Examples:

First, create a chest - a container for your drops

    chest = LootSystem::Chest.new

Now we can add the items to our container:

    chest.add({item: common_item_object, chance: 0.9})
    chest.add({item: rare_item_object, chance: 0.01})

And use items_found method to get a list of all item that we managed to find:

    chest.item_found
