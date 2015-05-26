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

First, create a list of potential items.

As the name suggests it will contain all the items that have a chance be be retrieved later.

```ruby
item_pool = LootSystem::ItemPool.new
```

Now we can add the items to our list:

```ruby
item_pool.add(item1, chance: 0.9)
item_pool.add(item2, chance: 0.01)
```

Where `item1` (and `item2`) can be anything - a number, a string or any other object.

And use the `get_found` method to get a list of all item that we managed to find:

```ruby
item_pool.get_found
```

