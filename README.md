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

Initlialize your item.

It can be anything - Drop class will accept any object

    first_drop = LootSystem::Drop.new({item: your_item, chance: 0.25})
    second_drop = LootSystem::Drop.new({item: your_item2, chance: 0.95})

Now we can add the drops to our container:

    chest.add(first_drop)
    chest.add(second_drop)

Use get_drops method to get a list of all the that we managed to find:

    chest.get_drops
