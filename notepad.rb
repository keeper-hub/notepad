require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'memo.rb'
require_relative 'task.rb'

puts "Привет. Я блокнот!\nЧто ты хочешь записать?"

choises = Post.post_types

choise = -1

until choise >= 1 && choise <= choises.size

  choises.each_with_index do |item, index|
    puts "\t#{index+1}. #{item}"
  end

  choise = STDIN.gets.chomp.to_i

end

entry = Post.create(choise-1)

entry.read_from_console

entry.save

puts "Запись сохранена"