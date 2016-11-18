class Article < ApplicationRecord
  belongs_to :author, class_name: :User
  has_many :footnotes, dependent: :destroy
  has_many :photos
  has_many :bibliographies, dependent: :destroy
  has_many :article_categories
  has_many :revisions
  has_many :categories, through: :article_categories
  has_many :editors, through: :revisions

  def assign_categories(params)
    cat_ids = params[:article][:category_ids]

    cat_ids.each do |id|
      self.categories << Category.find(id)
    end
  end

  def make_published
  end

end
