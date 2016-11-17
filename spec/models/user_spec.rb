require 'rails_helper'

describe User do
  let(:user) { User.create( email: "d@d.com",
                         username: "derrick",
                         password: "derrick",
                         is_moderator: false ) }
  context "It has its own attributes" do
    it "has an email" do
      expect(user.email).to eq "d@d.com"
      expect(user.email).not_to eq "e@e.com"
    end

    it "has a username" do
      expect(user.username).to eq "derrick"
      expect(user.username).not_to eq "kathy"
    end

    it "has a password" do
      expect(user.password).to eq "derrick"
      expect(user.password).not_to be_nil
    end

    it "isn't a moderator by default" do
      expect(user.is_moderator).to be false
    end

    it "can be assigned to a moderator" do
      user.is_moderator = true
      expect(user.is_moderator).to be true
    end
  end

  context "It can has functioning accessors" do
    it "has revisions" do
      expect(user.revisions).not_to be nil
      expect(user.revisions).to be_an(ActiveRecord::Associations::CollectionProxy)
    end

    it "has articles" do
      expect(user.articles).not_to be nil
      expect(user.articles).to be_an(ActiveRecord::Associations::CollectionProxy)
    end

    it "has edited_articles" do
      expect(user.edited_articles).to be_an(ActiveRecord::Associations::CollectionProxy)
    end
  end
end
