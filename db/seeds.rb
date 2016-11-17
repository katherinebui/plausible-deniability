20.times do
  User.create!( username: Faker::Internet.user_name, 
                email: Faker::Internet.email, 
                password: "djkms5",
                is_moderator: false )
end

20.times do
  Category.create!( name: Faker::Company.catch_phrase
    )
end

20.times do
  Article.create!( title: Faker::Hipster.sentences(2),
                   body: Faker::Lorem.paragraph(2),
                   author_id: rand(1..20)
  )
end

20.times do
  Bibliography.create!( title: Faker::Hipster.sentences(2),
                body: Faker::Lorem.paragraph(2),
                article_id: rand(1..20),
                link_url: Faker::Internet.url)
end

20.times do
  Footnote.create!( article_id: rand(1..20),
                text: Faker::Company.catch_phrase,
                url: Faker::Internet.url)
end
