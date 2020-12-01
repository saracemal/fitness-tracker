# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'rest-client' # in order to make HTTP requests from a ruby file
require 'json'


# exercise_api_resp = RestClient.get('https://wger.de/api/v2/exercise/')
# exercise_data = JSON.parse(exercise_api_resp)

# exercise_data.map{|exercise| exercise["name"]}
Exercise.destroy_all
User.destroy_all
Routine.destroy_all
RoutineExercise.destroy_all


exercises = [
    'bench press', 'squat', 'dead lift', 'jog', 'back row', 'bicep curl',
    'sit up', 'pull up', 'chin up', 'walk'
]

exercises.each do |exercise|
    Exercise.create(name: exercise)
end



5.times do
    User.create(name: Faker::Name.name, age: rand(16..70), weight: rand(90..250) , height: rand(60..80))
end

5.times do
    Routine.create(name: Faker::Esport.event)
end

30.times do
    RoutineExercise.create(routine_id: Routine.all.sample.id, exercise_id: Exercise.all.sample.id, reps: rand(1..10))
end





