require 'rails_helper'

RSpec.describe Quote, type: :model do

  describe 'validations' do
    let!(:quote) {FactoryBot.create(:quote)}
    it 'factory valid' do
      expect(quote).to be_valid
    end

    it 'order are unique' do
      should validate_uniqueness_of(:order)
    end

    it 'order inclusion' do
      should validate_inclusion_of(:order).in_range(0..6)
    end

    it 'author_name length' do
      should validate_length_of(:author_name).is_at_least(3).is_at_most(30)
    end

    it 'order are presents' do
      should validate_presence_of(:order)
    end
  end
end
