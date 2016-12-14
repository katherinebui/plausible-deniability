20.times do
  User.create!( username: Faker::Internet.user_name,
                email: Faker::Internet.email,
                password: "2saucy",
                is_moderator: false )
end

User.create!( username: "kathy",
                email: "k@k.com",
                password: "2saucy",
                is_moderator: true )

User.create!( username: "meredith",
                email: "m@m.com",
                password: "2saucy",
                is_moderator: true )

User.create!( username: "jay",
                email: "j@j.com",
                password: "2saucy",
                is_moderator: true )

User.create!( username: "derrick",
                email: "d@d.com",
                password: "2saucy",
                is_moderator: true )


20.times do
  Category.create!( name: Faker::Company.catch_phrase
    )
end

20.times do
  Article.create!( title: Faker::Pokemon.name,
                   body: "<p>#{Faker::ChuckNorris.fact}</p>",
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
