class User < ApplicationRecord
    #has_many :routines
    has_many :created_routines, foreign_key: "user_id:", class_name: "Routine"
    
    has_many :entries
    has_many :routines, through: :entries
    has_many :likes, dependent: :destroy # <-- most likely this one-- destroys likes if the routine or user is deleted 
    
    has_secure_password 
    # validates :name, presence: true 
    validates :user_name, uniqueness: true #{"Username is already in use"}

    #or
    validates_presence_of :user_name, :password, :name, :age, :weight, :height 
    # validates :name, uniqueness: true {"Username is already in use"}

    ###needs like_id
    #
    img_url = [
    "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4617170.jpg",
    "https://i.pinimg.com/originals/4f/bb/48/4fbb4825cba6b7ce8abf86e9722c87cb.jpg",
    "https://i.pinimg.com/564x/71/56/14/715614be795e5d80f759c7d9e9d4b993.jpg",
    "https://i.pinimg.com/474x/a9/e9/64/a9e964af54fa741354cabd86e280d768.jpg",
    "https://i.pinimg.com/564x/36/9b/c0/369bc01e4c301bff41711a2241a4213f.jpg",
    "https://www.poynter.org/wp-content/uploads/2019/12/AP_19345327608569.jpg",
    "https://c8.alamy.com/comp/HHB2JH/funny-crazy-hairdresser-haircut-hair-man-humans-human-beings-people-HHB2JH.jpg",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/idris-elba-says-coronavirus-had-a-22traumatic-22-impact-on-his-mental-health-1594723325.jpg"
    ]

    

end