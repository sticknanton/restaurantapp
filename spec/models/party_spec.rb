require 'rails_helper'


RSpec.describe Party, type: :model do
  describe "given a party" do
    before do
      @party = Party.create({guest_num: 2, table_num: 3, server_id: 4})
      @food1 = MenuItem.create({category: 'Drinks', price: 2.50, name: 'Coke'})
      @food2 = MenuItem.create({category: 'Appetizers', price: 8.50, name: 'Fritters'})
      Order.create({party: @party, menu_item: @food1})
      Order.create({party: @party, menu_item: @food2})
    end
    describe '#favorite_candy' do
      it 'returns Total cost' do
        actual = @party.total()
        expectation = 11.00
        expect(actual).to eq(expectation)
      end
    end
  end
end
