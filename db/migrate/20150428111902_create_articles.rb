class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string   :name
      t.float    :price
      t.string   :description
      t.string   :email
      t.string   :url
      t.belongs_to   :category

      t.timestamps
    end
  end
end
