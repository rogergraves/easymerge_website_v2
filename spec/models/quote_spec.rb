require 'rails_helper'

RSpec.describe Quote, type: :model do
  let!(:quote) {FactoryBot.create(:quote)}

  describe 'validations' do
    it 'factory valid' do
      expect(quote).to be_valid
    end

    it 'order are presents' do
      should validate_presence_of(:order)
    end

    it 'order are unique' do
      should validate_uniqueness_of(:order)
    end

    it 'order are unique' do
      should validate_inclusion_of(:order).in_range(1..6)
    end
  end
end
