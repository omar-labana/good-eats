class AddArticleRefToVotes < ActiveRecord::Migration[6.1]
  def change
    add_reference :votes, :article, null: false, foreign_key: true
  end
end
