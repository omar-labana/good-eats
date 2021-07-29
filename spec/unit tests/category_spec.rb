require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.new(id: 1, name: 'Spicy') }

  describe 'validations' do
    it 'valid entry' do
      expect(category).to be_valid
    end

    it 'not valid if name do not exist' do
      category.name = nil
      expect(category).not_to be_valid
    end
  end
end
