require 'rails_helper'
require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

RSpec.describe Article, type: :model do
  let(:user) { User.new(id: 1, email: 'omar@ramoka.com', username: 'chicken') }

  Category.create(id: 1, name: 'test', pirority: 1)
  let(:article) do
    user.articles.new(id: 1,
                      title: 'weird dummy',
                      body: 'sad katkot',
                      created_at: DateTime.now,
                      updated_at: DateTime.now,
                      image: 'url',
                      user_id: 1,
                      category_id: 1)
  end

  describe 'validations' do
    it 'valid entry' do
      expect(article).to be_valid
    end

    it 'not valid if title do not exist' do
      article.title = nil
      expect(article).not_to be_valid
    end

    it 'not valid if body do not exist' do
      article.body = nil
      expect(article).not_to be_valid
    end

    it 'has not proper size' do
      article.body = 'sod' * 999
      expect(article).not_to be_valid
    end

    it 'has proper size' do
      article.body = 'sod' * 99
      expect(article).to be_valid
    end
  end
end
