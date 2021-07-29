class AddCategoryRefToArticleCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :article_categories, :category, foreign_key: true
  end
end
