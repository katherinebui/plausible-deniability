require 'rails_helper'

describe Article do
  let(:user){ User.create!(
    email: "d@d.com",
    username: "derrick",
    password: "derrick",
    is_moderator: false
    )
  }

  let(:article){ Article.create!(
    author_id: user.id,
    title: "I'm the champ",
    body: "I'm so mean I make medicine sick")}

  let(:)

  context "It has its own attributes" do
    it "has a title" do
      expect(article.title).to eq "I'm the champ"
      expect(article.title).not_to eq "Cucumbers"
    end

    it "has body text" do
      expect(article.body).to eq "I'm so mean I make medicine sick"
    end
  end

  context "it can access other models through associations" do
    it "has an author" do
      should belong_to(:author)
      expect(article.author).to eq (user)
    end

    it "has many footnotes" do
      should have_many(:footnotes)
      should_not have_one(:footnote)
      expect(article.footnotes).to be_an(ActiveRecord::Associations::CollectionProxy)
    end

    it "has many photos" do
      expect(article.photos).to be_an(ActiveRecord::Associations::CollectionProxy)
      should have_many(:photos)
    end

    it "has many bibliographies" do
      expect(article.bibliographies).to be_an(ActiveRecord::Associations::CollectionProxy)
      should have_many(:bibliographies)
    end

    it "has many categories" do
      expect(article.categories).to be_an(ActiveRecord::Associations::CollectionProxy)
      should have_many(:categories)
    end

    it "has many revisions" do
      expect(article.revisions).to be_an(ActiveRecord::Associations::CollectionProxy)
      should have_many(:revisions)
    end

    it "has many editors" do
      expect(article.editors).to be_an(ActiveRecord::Associations::CollectionProxy)
      should have_many(:editors)
    end

  end
end
