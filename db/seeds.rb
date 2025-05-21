# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Image.destroy_all
Theme.destroy_all
User.destroy_all

Image.reset_pk_sequence
Theme.reset_pk_sequence
User.reset_pk_sequence
Value.reset_pk_sequence

# Темы
Theme.create([
  { name: "-----" }, # 1
  { name: "Какое ИИ-изображение лучше передает футуристический стиль?" }, # 2
  { name: "Какое ИИ-изображение выглядит наиболее реалистично?" } # 3
])

# Изображения
Image.create([
  # Футуристический стиль
  { name: 'ИИ-город будущего', file: 'AI_Future_City.jpg', theme_id: 2 },
  { name: 'ИИ-космический корабль', file: 'AI_Spaceship.jpg', theme_id: 2 },
  { name: 'ИИ-киберпанк пейзаж', file: 'AI_Cyberpunk_Landscape.jpg', theme_id: 2 },
  { name: 'ИИ-робот в неоне', file: 'AI_Robot_Neon.jpg', theme_id: 2 },
  # Реалистичный стиль
  { name: 'ИИ-портрет человека', file: 'AI_Human_Portrait.jpg', theme_id: 3 },
  { name: 'ИИ-лесной пейзаж', file: 'AI_Forest_Landscape.jpg', theme_id: 3 },
  { name: 'ИИ-домашний кот', file: 'AI_Cat.jpg', theme_id: 3 },
  { name: 'ИИ-городская улица', file: 'AI_City_Street.jpg', theme_id: 3 }
])

User.create([
  { name: "Example User", email: "example@railstutorial.org" }
])

