# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client' # in order to make HTTP requests from a ruby file
require 'json'


# exercise_api_resp = RestClient.get('https://wger.de/api/v2/exercise/')
# exercise_data = JSON.parse(exercise_api_resp)

# exercise_data.map{|exercise| exercise["name"]}
Exercise.destroy_all


exercises = [
    'bench press', 'squat', 'dead lift', 'jog', 'back row', 'bicep curl',
    'sit up', 'pull up', 'chin up', 'walk'
]

exercises.each do |exercise|
    Exercise.create(name: exercise)
end