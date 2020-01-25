# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'marvin.laucher@minedminds.org', password: '123456')

# Create Blogs with Comments
# 1000.times  do
# 	blog = Blog.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(sentence_count: 30))
# 	rand(20).times do
# 		blog.comments.create(name: Faker::FunnyName.name, comment: Faker::Lorem.paragraph(sentence_count: 3))
# 	end
# end

8.times  do
	blog = Blog.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(sentence_count: 30))
	rand(5).times do
		blog.comments.create(name: Faker::FunnyName.name, comment: Faker::Lorem.paragraph(sentence_count: 3))
	end
end
