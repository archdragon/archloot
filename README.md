[![Code Climate](https://codeclimate.com/github/archdragon/archloot/badges/gpa.svg)](https://codeclimate.com/github/archdragon/archloot)
[![Build Status](https://travis-ci.org/archdragon/archloot.svg?branch=master)](https://travis-ci.org/archdragon/archloot)
[![Coverage Status](https://coveralls.io/repos/archdragon/archloot/badge.svg?branch=master)](https://coveralls.io/r/archdragon/archloot?branch=master)

# Archloot

Quick and simple loot table creation.

## Examples:

First, create a chest - a container for your drops

    chest = Chest.new

Initlialize your item
It can be anything - Archloot class will accept any object

    your_item = YourItemClass.new({name: "Random Ring of Spec"})
    your_item2 = YourItemClass.new({name: "Talisman of Testing"})

    first_drop = Drop.new({item: your_item, chance: 0.25})
    second_drop = Drop.new({item: your_item2, chance: 0.95})

    chest.add(first_drop)
    chest.add(second_drop)

    chest.get_drops
