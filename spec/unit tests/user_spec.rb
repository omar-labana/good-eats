require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    it 'validates empty names' do
      user1 = User.new(username: '')
      expect(user1.valid?).to eq(false)
    end

    it 'validates no email' do
      user1 = User.new(username: 'Omaar')
      expect(user1.valid?).to eq(false)
    end

    it 'validates uniqness of names' do
      User.create(username: 'omar')
      user1 = User.new(username: 'omar')
      expect(user1.valid?).to eq(false)
    end
  end
end
