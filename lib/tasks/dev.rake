task sample_data: :environment do
  p "Creating sample data"

  # 12.times do
  #   name = Faker::Name.first_name

  #   u = User.create(
  #     email: "#{name}@example.com",
  #     username: name,
  #     password: "password",
  #     neighborhood: "Lincoln Park",
  #     bio: "Proud dog parent!"

  #   )
  #   # p u.errors.full_messages
  # end
  # p "#{User.count} users have been created."

2.times do

  name = Faker::Creature::Dog.name
  about = Faker::Creature::Dog.meme_phrase
  size = Faker::Creature::Dog.size

  d = Dog.create(

    name: name,
    about: about,
    size: size,
    neighborhood: "Lincoln Park",
    image: "https/robohash.org/4",
    owner_id: User.all.sample.id


  )
  p d.errors.full_messages
end
p "#{Dog.count} dogs have been created."

  
end
