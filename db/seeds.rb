require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "find_or_create_by Unique Post finished"
Post.find_or_create_by(title: "Unique Title", body: "This is our unique body!")
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "find_or_create_by Unique Comment finished"
Comment.find_or_create_by(body: "This is our unique comment!", post: post)
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
