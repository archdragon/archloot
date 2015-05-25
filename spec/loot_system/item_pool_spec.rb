require_relative '../spec_helper'

module LootSystem
  describe ItemPool do
    describe '#add' do
      it 'adds an item to the list' do
        example_item = {name: 'Wooden Sword of testing'}
        item_pool = ItemPool.new
        expect{ item_pool.add(example_item) }.to change{ item_pool.count }.by(1)
      end
    end
    describe '#count' do
      it 'returns the number of added items' do
        item_pool = ItemPool.new
        item_pool.add('Amulet of Loot')
        item_pool.add('Old Ring of Rspec')
        expect(item_pool.count).to eq(2)
      end
    end
    describe '#get_found' do
      let(:item_data) { {item: 'Lucky item', count: 1} }
      it 'returns a list of items that were found' do
        item_pool = ItemPool.new
        item_pool.add('Amulet of Loot', chance: 1)
        item_pool.add('Old Ring of Rspec', chance: 1)
        item_pool.add('Old Ring of Rspec', chance: 1)
        expect(item_pool.get_found.count).to eq(3)
      end
      context 'if the list contains an item that has a 100% chance of spawning' do
        it 'returns that item' do
          item_pool = ItemPool.new
          item_pool.add(item_data[:item], chance: 1)
          expect(item_pool.get_found).to include(item_data)
        end
      end
      context 'if the list contains an item that has a 0% chance of spawning' do
        it 'does not returns that item' do
          item_pool = ItemPool.new
          item_pool.add(item_data[:item], chance: 0)
          expect(item_pool.get_found).to_not include(item_data[:item])
        end
      end
    end
  end
end
