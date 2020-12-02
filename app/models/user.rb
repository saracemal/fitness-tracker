class User < ApplicationRecord
    #has_many :routines
    has_many :created_routines, foreign_key: "user_id:", class_name: "Routine"
    
    has_many :entries
    has_many :routines, through: :entries
    #has_many :likes, dependent: :destroy <-- most likely this one-- destroys likes if the entry or user is deleted 
    
    has_secure_password 
<<<<<<< HEAD
    # validates :name, presence: true { "must be created with a name"}
    #validates :user_name, uniqueness: true {"Username is already in use"}
=======
    # validates :name, presence: true 
    validates :user_name, uniqueness: true #{"Username is already in use"}
>>>>>>> 53add954e396f613186da8d5ac71e1b7220adcda

    #or
    validates_presence_of :user_name, :password, :name, :age, :weight, :height 
    # validates :name, uniqueness: true {"Username is already in use"}

    ###needs like_id
    #

    

end