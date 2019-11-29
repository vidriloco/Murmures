# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Testimonial.create(
  title: "Ahmed",
  bio: "I am a human like everyone else, and I have rights. I will defend those rights.",
  location: 'POINT(48.8588377 2.2770205)',
  image_url: "https://images.unsplash.com/photo-1559321484-66a017aee373?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
  audio_url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/679809245&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true")
  
Testimonial.create(
  title: "Rima",
  location: "POINT(52.3545983 4.8339211)",
  bio: "Religious figures, the government, your parents—they all want to have a say in what you do between your legs.",
  image_url: "https://images.unsplash.com/photo-1569245424586-0a37122af165?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  audio_url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/679809245&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true")