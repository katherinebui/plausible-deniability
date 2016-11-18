class Revision < ApplicationRecord
  belongs_to :original_article, :class_name => 'Article'
  belongs_to :article, dependent: :destroy
  belongs_to :editor, class_name: :User
end
