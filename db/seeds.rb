require 'faker'

# Create 20 authors
20.times do
  author = Author.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
    )
    puts "Created author #{author.first_name} #{author.last_name}"

  # Create 5 articles for each author
  5.times do
    article = Article.create(
      title: Faker::Book.title,
      year: Faker::Number.between(from: 1900, to: 2022),
      content: Faker::Lorem.paragraph(sentence_count: 10),
      author: author
      )
      puts "Created article #{article.title} by #{author.first_name} #{author.last_name}"
  end
end
