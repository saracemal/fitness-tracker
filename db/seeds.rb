# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
#require 'rest-client' # in order to make HTTP requests from a ruby file
require 'json'


# exercise_api_resp = HTTParty.get('https://wger.de/api/v2/exercise/?limit=20')
# byebug
# exercise_data = JSON.parse(exercise_api_resp.body)

# exercise_data.map{|exercise| exercise["name"]}
#Exercise.destroy_all
#User.destroy_all
#Routine.destroy_all
#RoutineExercise.destroy_all


exercises = [
    'Bench Press', 'Squat', 'Dead Lift', 'Jog', 'Back Row', 'Bicep Curl',
    'Sit Up', 'Pull Up', 'Chin Up', 'Walk'
]

difficulty = ['Easy', 'Intermediate', 'Hard']

exercises.each do |exercise|
    Exercise.create(name: exercise, difficulty: difficulty.sample)
end

img_url = [
    "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4617170.jpg",
    "https://i.pinimg.com/originals/4f/bb/48/4fbb4825cba6b7ce8abf86e9722c87cb.jpg",
    "https://i.pinimg.com/564x/71/56/14/715614be795e5d80f759c7d9e9d4b993.jpg",
    "https://i.pinimg.com/474x/a9/e9/64/a9e964af54fa741354cabd86e280d768.jpg",
    "https://i.pinimg.com/564x/36/9b/c0/369bc01e4c301bff41711a2241a4213f.jpg",
    "https://www.poynter.org/wp-content/uploads/2019/12/AP_19345327608569.jpg",
    "https://c8.alamy.com/comp/HHB2JH/funny-crazy-hairdresser-haircut-hair-man-humans-human-beings-people-HHB2JH.jpg",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/idris-elba-says-coronavirus-had-a-22traumatic-22-impact-on-his-mental-health-1594723325.jpg",



]



5.times do
    User.create(name: Faker::Name.name, age: rand(16..70), weight: rand(90..250) , height: rand(60..80))
end

# 5.times do
#     Routine.create(name: Faker::Esport.event)
# end

# 30.times do
#     RoutineExercise.create(routine_id: Routine.all.sample.id, exercise_id: Exercise.all.sample.id, reps: rand(1..10))
# end





