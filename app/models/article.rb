class Article < ApplicationRecord
  belongs_to :author, class_name: :User
  has_many :footnotes, dependent: :destroy
  has_many :photos
  has_many :bibliographies, dependent: :destroy
  has_many :article_categories
  has_many :revisions
  has_many :categories, through: :article_categories
  has_many :editors, through: :revisions
  

end
