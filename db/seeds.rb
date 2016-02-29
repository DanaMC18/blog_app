# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Topic.destroy_all
Comment.destroy_all
Picture.destroy_all
Tag.destroy_all
Like.destroy_all


houseOfCards1 = Topic.create({
  title: 'The Hollowness of House of Cards',
  content: "For the past two years I have written a <b>continuous blog</b> for House of Cards wherein I would add my thoughts and observations to an ongoing blog posts after finishing each episode. It seemed a sensible thing to do for a show released all at once. But after two seasons, I have come to realize I do not care much for House of Cards nor do I care much for dissecting every episode. Entertainment-wise, House of Cards gets me by. I'm always willing to watch the next installment, curious how things will unfold. But quality-wise the show is so incredibly uneven and frustratingly hollow. For every strong performance and impressive, meticulously blocked shot, there is something else completely inane or ridiculous happening. It is honestly an elegantly crafted show and I only wish the writing held up to its directing, performance, cinematography, costuming and stage dressings (for real...the furniture on this show is a freaking West Elm catalogue). Its incredibly unbalanced.",
  author: 'Dana C',
  date: Date.new(2015,3,5),
  })

houseOfCardsPic1 = Picture.create({
  url: 'http://i.ytimg.com/vi/VBFT9JQ5xYU/maxresdefault.jpg',
  topic: houseOfCards1
  })

houseOfCardsTag1 = Tag.create({
  tag_name: 'House of Cards',
  topic: houseOfCards1
  })

houseOfCardsTag2 = Tag.create({
  tag_name: 'Netflix',
  topic: houseOfCards1
  })