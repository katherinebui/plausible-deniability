class User < ApplicationRecord
  has_many :articles
  has_many :revisions
  has_many :edited_articles, through: :revisions, source: :article
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
