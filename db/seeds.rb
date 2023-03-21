puts "Doing some magic..."

20.times do
    title = Faker::Job.title
    description = Faker::ChuckNorris.fact
    Todo.create(title: title, description: description)
end

puts "Houdini caught up with us"