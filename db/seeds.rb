require 'faker'

# Supprimer les articles existants pour éviter les doublons
Article.destroy_all

# Générer 10 faux articles
(1..10).each do |i|
  Article.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs(number: 3).join("\n\n")
  )
end
