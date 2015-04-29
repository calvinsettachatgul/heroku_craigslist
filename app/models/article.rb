class Article < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :category
  validates_associated :category

  validates :name, presence: true
  validates :price, presence: true
  validates :email, presence: true
  validates :description, presence: true
  #validates :url, presence: true

 end
